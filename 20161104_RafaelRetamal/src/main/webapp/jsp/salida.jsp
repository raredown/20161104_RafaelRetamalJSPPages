<%-- 
    Document   : salida
    Created on : 04-nov-2016, 17:14:04
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! aaaa</h1>
        <jsp:useBean id="persona" scope="request" class="es.albarregasBeans.Persona"/>
        <jsp:getProperty name="persona" property="nombre" />
        <jsp:getProperty name="persona" property="edad" />
        <jsp:getProperty name="persona" property="apellido" />
    </body>
</html>
