Feature: Obtener información de un artista por ID - TC_SPF_ART_001

Scenario Outline: Obtner información completa del artista <artist_name>
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    Given url 'https://api.spotify.com/v1/'
    And path 'artists', '<artist_id>'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

    And match response == '#object'

    And match response.id == '<artist_id>'
    And match response.name == '#string'
    And match response.type == 'artist'
    And match response.popularity == '#number'
    And match response.followers.total == '#number'
    And match response.genres == '#[] #string'
    And match response.external_urls.spotify == '#string'
    And match response.images[0].url == '#string'

Examples:
    | artist_name   | artist_id            |
    | ataque77       | 5rI6C5mJm6GYXbGHhpHTu9 |