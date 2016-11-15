<%-- 
    Document   : index
    Created on : 15-nov-2016, 18:21:03
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <sql:setDataSource var="snapshot" scope="session"  dataSource="jdbc/Javapage"/>
    <body>
        
        <h1>Hello World!</h1>
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" ><a href="jsp/Controladorentrada.jsp?enlace=crear">Insertar</a></li>
            <li role="presentation"><a href="jsp/Controladorentrada.jsp?enlace=leer">Leer</a></li>
            <li role="presentation"><a href="jsp/Controladorentrada.jsp?enlace=modificar">Modificar</a></li>
            <li role="presentation"><a href="jsp/Controladorentrada.jsp?enlace=eliminar">Eliminar</a></li>
        </ul>
    </body>
</html>
