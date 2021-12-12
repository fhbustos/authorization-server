## Authorization Server
Ejemplo de authorization server utilizando el framework OAuth2 implementado con Spring Boot y Spring Security.

La autenticación de un usuario se hace siguiendo el flujo [grant type password](https://oauth.net/2/grant-types/password/).

#### Configuración MySQL
El servidor está preparado para conectarse a una servidor de base de datos MySQL, los datos de conexión son: 
```
URL: localhost:3306
Username: root
Passowrd: rootpass
```
Estos datos se pueden cambiar en el archivo `resources/application.yml`.

#### Usuarios y Clientes
Inicialmente el server tiene configurado dos usuarios:
```
username: juan, password: 123
username: pedro, password: 345
```

También se cargan las credenciales de dos apps y del resource server:
```
clientId: webapp, clientSecret: websecret
clientId: cellapp, clientSecret: cellsecret
clientId: resourceserver, clientSecret: resourceserversecret
```

#### Build and Run
Para compilar y desplegar el proyecto se debe ejecutar por consola el comando:

```
mvn clean install
```
Luego para correr el servidor:

```
mvn spring-boot:run
```
El servidor quedará corriendo en la URL:
`http://localhost:9080/`

#### Testing
Se puede obtener más información de las pruebas en el proyecto [Course API Postman](https://github.com/fhbustos/Course-API-Postman).

### Referencias
* [Spring Security in Action](https://www.manning.com/books/spring-security-in-action)
* [Spring Security](https://docs.spring.io/spring-boot/docs/2.6.1/reference/htmlsingle/#boot-features-security)
* [Spring Security OAuth2](https://docs.spring.io/spring-boot/docs/2.6.1/reference/htmlsingle/#web.security.oauth2)
* [Baeldung Spring Security](https://www.baeldung.com/category/spring/spring-security/)