Feature: Contiene tests de tipo GET para obtener albums con tracks - TC_SPF_004 (albums/{idAlbum}/tracks)

Scenario Outline: Verifica si existe el Álbum: <album_search> con sus tracks
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    Given url 'https://api.spotify.com/v1/'
    And path 'albums', '<album_search>', 'tracks'
    And param market = 'ES'
    And param limit = '10'
    And param offset = '5'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

    # Validar que la respuesta sea un objeto
    And match response == '#object'

    # Validar que items no esté vacío
    And match response.items != []

    # Validar que cada item contenga al menos los campos esperados
    And match each response.items contains { name: '#string', duration_ms: '#number', track_number: '#number' }

Examples:
    | album_search           |
    | 4aawyAB9vmqN3uQ7FjRGTy |
