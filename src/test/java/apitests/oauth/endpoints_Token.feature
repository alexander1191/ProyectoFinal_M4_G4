Feature: Obtener token de acceso de Spotify con client_credentials

Scenario: Obtener token válido

    Given url 'https://accounts.spotify.com/api/token'
    And header Content-Type = 'application/x-www-form-urlencoded'
    And form field grant_type = 'client_credentials'
    And form field client_id = clientId
    And form field client_secret = clientSecret
    When method POST
    Then status 200

    * def accessToken = response.access_token
    * print 'Access Token:', accessToken
