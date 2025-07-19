Feature: Contiene tests de tipo GET para obtener nuevos lanzamientos - TC_SPF_013 (/v1/browse/new-releases)

Scenario: Validar últimas releases y campos específicos
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    Given url 'https://api.spotify.com/v1/browse/new-releases'
    And param limit = 10
    And param offset = 5
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

    # Validar que la respuesta tenga la propiedad albums.items no vacío
    And match response.albums != null
    And match response.albums.items != []
    
    # Validar que cada álbum tenga las propiedades name y release_date
    And match each response.albums.items contains { name: '#string', release_date: '#string' }
