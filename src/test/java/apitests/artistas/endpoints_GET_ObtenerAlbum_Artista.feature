Feature: Obtener álbumes de un artista - TC_SPF_ART_003

Scenario: Obtener álbumes del artista ataque77
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    Given url 'https://api.spotify.com/v1/artists/5rI6C5mJm6GYXbGHhpHTu9/albums'
    And header Authorization = 'Bearer ' + accessToken
    And param include_groups = 'album,single'
    And param market = 'ES'
    And param limit = 5
    When method GET
    Then status 200

    And match response.items == '#[] #object'

    * def album = response.items[0]
    And match album.id == '#string'
    And match album.name == '#string'
    And match album.release_date == '#string'
    And match album.total_tracks == '#number'
    And match album.album_type == '#string'
    And match album.images[0].url == '#string'
    And match album.artists[0].id == '#string'
