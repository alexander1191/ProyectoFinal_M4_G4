Feature: Obtener token de acceso de Spotify con client_credentials

Scenario: Obtener token válido

    Given url 'https://accounts.spotify.com/api/token'
    And header Content-Type = 'application/x-www-form-urlencoded'
    And form field grant_type = 'client_credentials'
    And form field client_id = 'da05b63f479343aea3bff67336a4dce4'
    And form field client_secret = '78b6ba039eda41cba5e0d28c97509711'
    When method POST
    Then status 200

    * def accessToken = response.access_token
    * print 'Access Token:', accessToken
