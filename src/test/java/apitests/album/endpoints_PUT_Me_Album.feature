Feature: Contiene tests de tipo PUT para guardar álbumes

Scenario: Verifica guardar una lista de álbumes del usuario actual
    * print 'En Desarrollo: Falla por problemas de OAuth 2.0, se requiere un token válido con scopes'
    * def tokenResponse = call read('classpath:apitests/oauth/endpoints_Token.feature')
    * def accessToken = tokenResponse.response.access_token
    * print 'Access Token:', accessToken

    * def albumIds = '382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc'

    Given url 'https://api.spotify.com/v1/me/albums'
    And header Authorization = 'Bearer ' + accessToken
    And param ids = albumIds
    # ← esto es CLAVE para evitar el 411
    #And request ''
    * def payload =
        """
        {
            "ids": [
                "#(albumIds)"
            ]
        }
        """
    And request payload
    When method PUT
    Then status 200
    And assert responseTime < 3000
