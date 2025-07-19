Feature: Obtiene un vehiculo

Scenario: Retorna un vehiculo
        Given url baseUrl
        * def vehiculo = call read('classpath:apitests/vehiculos/crearVehiculo.feature')
        * print vehiculo.response
        And path 'vehiculo/' + vehiculo.response.id
        When method GET
        Then status 200