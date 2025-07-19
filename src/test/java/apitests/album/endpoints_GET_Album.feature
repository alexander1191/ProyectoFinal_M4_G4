Feature: Contiene tests de tipo GET para verificar álbumes

Scenario Outline: Verifica si existe el Álbum: <album_search>
    # Obtener el token OAuth
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    # Realizar la solicitud al endpoint de álbum
    Given url 'https://api.spotify.com/v1/'
    And path 'albums', '<album_search>'
    And param market = 'ES'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

    # Validar campos esperados
    And match response.name == '#string'
    And match response.artists == '#[]'
    And match response.release_date == '#string'
    And match response.tracks == '#object'

Examples:
    | album_search              |
    | 382ObEPsp2rxGrnsizN5TX    |
    | 1A2GTWGtFfWp7KSQTwWOyo    |
    | 2noRn2Aes5aoNVsU6iWThc    |
