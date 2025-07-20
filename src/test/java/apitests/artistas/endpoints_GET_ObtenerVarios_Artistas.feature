Feature: Obtener información de varios artistas - TC_SPF_ART_002

Scenario Outline: Obtener información de múltiples artistas <descripcion>
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    Given url 'https://api.spotify.com/v1/artists'
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '<ids>'
    When method GET
    Then status 200

    And match response.artists == '#[] #object'

Examples:
    | descripcion              | ids                                           |
    | ataque77 y Turizo        | 5rI6C5mJm6GYXbGHhpHTu9,0tmwSHipWxN12fsoLcFU3B |
    | Bad bunny y Rauw   | 4q3ewBCX7sLwd24euuV69X,1mcTU81TzQhprhouKaTkpq |
