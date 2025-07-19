Feature: Obtener token OAuth con authorization code

Scenario: Intercambiar code por token
    * print 'En Desarrollo: Intercambiar code por token'

  #* def clientId = 'da05b63f479343aea3bff67336a4dce4'
  #* def clientSecret = '78b6ba039eda41cba5e0d28c97509711'
  #* def redirectUri = 'https://spotify.apitest:3000'
  #* def code = 'AQD11VW4bfkANDys9XaUK1-RTIwTcfmQitQlxSPouKpFbgqKPuNwuns4jhxnEMAVGHdcTbrUeWTNLrZxe54myVFXUF6OJbCCOkNbmnRratdFV9FdVUUiZHzZzpZ5p84ay0Mxt8VttMcc7gk-FNaj_8Mow-OVIOUzUtM41gXgSgkIVR0mjMyRjb-IvXYj0L-XCw6FtcJ5QOzxrDEMuPB_42bYHwU9S8mlte_clz2jYyFmWXUObUU904tP8RJe5ki7y51zpNmx1YnAe0qqFyIHWGbcoK19SE-hHupzBmTyHvpdZk7wvtEnHcu3T__LcRhgDQSwVlTAVX2GssKA6jA_C-zF5Doj05X6l6pqz8NW_-WK0vRHkRS6mor5WMj-5HTPcKjNZfhaKko9_9LjggVeej0AAZQ2v3AGqvNiiNqSuad0I8SVs18Yj7A0mZXyZOOt4OVYBqr8wv1gYQ5YCuWFiyC_wY3ZYe-C2y3wWcuczZ2jxPcs6SJWTn2hGsNaDPtU9tmz5rxZ-QVbyx55KIdUwcIQoUD3Qb8cltjsJX2fQ7RH8pmBu7hb7Vm4o0FGRGHuWZLkO9kr6ayqxsvU4J58hQxLbsn6N2rb_xBPZ-QTvY-k937n-qzrxwM5tHuU2_c'
#
  #* def credentials = clientId + ':' + clientSecret
  #* def encodedAuth = Java.type('java.util.Base64').getEncoder().encodeToString(credentials.getBytes())
#
  #* def params = 'grant_type=authorization_code&code=' + code + '&redirect_uri=' + karate.urlEncode(redirectUri)
#
  #Given url 'https://accounts.spotify.com/api/token'
  #And header Authorization = 'Basic ' + encodedAuth
  #And header Content-Type = 'application/x-www-form-urlencoded'
  #And request params
  #When method POST
  #Then status 200
#
  #* def accessToken = response.access_token
  #* def refreshToken = response.refresh_token
  #* print 'Access Token:', accessToken
  #* print 'Refresh Token:', refreshToken
#