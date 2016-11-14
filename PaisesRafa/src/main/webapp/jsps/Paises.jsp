<%-- 
    Document   : Paises
    Created on : 11-nov-2016, 17:06:36
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="Controlador">
            <select name ="lenguaje">
                <c:set var="peis" value="${sessionScope.paises}" />
                <c:forEach var="country" items="${peis}">
                     <option name="lenguaje" value="${country.value}">${country.key} </option>
                </c:forEach>
            </select>

            <input type="submit" value="enviar">
        </form>


    </body>
</html>
