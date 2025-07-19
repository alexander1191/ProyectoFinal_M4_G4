# Proyecto Final - Testing API Spotify con Karate

Este proyecto forma parte del trabajo final del Diplomado en Testing Funcional. Consiste en pruebas automatizadas sobre la API pública de Spotify utilizando el framework **Karate DSL** para validar endpoints REST, incluyendo autenticación con token, pruebas sobre álbumes, Artistas y otras funcionalidades del usuario.

## Tecnologías utilizadas

- [Karate DSL](https://github.com/karatelabs/karate) 1.4
- Java 11+
- Maven
- Spotify Web API

## Configuración del entorno

### 1. Clona el repositorio

```bash
git clone https://github.com/alexander1191/ProyectoFinal_M4_G4.git
cd ProyectoFinal_M4_G4
```
## 2. Registra tu aplicación en Spotify Developer
- Ingresa a Spotify Developer Dashboard
- Crea una nueva aplicación
- Copia tu Client ID y Client Secret
- Registra el siguiente Redirect URI:
https://spotify.apitest:3000

## 3. Configura tus credenciales
Edita el archivo karate-config.js y reemplaza con tus credenciales:

```bash
config.clientId = 'TU_CLIENT_ID'
config.clientSecret = 'TU_CLIENT_SECRET'
config.redirectUri = 'https://spotify.apitest:3000'
```
## 4. Ejecución de pruebas

### Todas las pruebas

```bash
mvn test
```
### Ejecutar un solo feature

```bash
mvn test -Dkarate.options="classpath:apitests/<ruta_archivo>.feature"
```
##  5. Estructura del proyecto

```bash
ProyectoFinal_M4_G4/
├── apitests/
│   ├── oauth/
│   ├── album/
│   └── APITest.java
├── utils/
├── karate-config.js
├── pom.xml
└── README.md
```