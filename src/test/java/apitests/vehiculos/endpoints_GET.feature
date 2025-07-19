@vehiculo
Feature: Contiene los tests que hacen llamado a los endpoints de tipo GET
         para vehiculos

    Given url baseUrl
    And path 'vehiculo'
    When method GET
    Then status 200

