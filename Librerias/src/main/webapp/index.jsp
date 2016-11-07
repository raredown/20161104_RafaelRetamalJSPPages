<%-- 
    Document   : index
    Created on : 07-nov-2016, 19:15:46
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="enlace1" value="jsp/Glorasrio.jsp"/>
        <h1>Ejercicio JSTL!</h1>
        <a href="<c:out value="${enlace1}"/>">Glosarios</a>
    </body>
</html>
