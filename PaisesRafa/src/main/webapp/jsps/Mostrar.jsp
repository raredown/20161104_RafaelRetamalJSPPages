<%-- 
    Document   : Mostrar
    Created on : 11-nov-2016, 11:18:40
    Author     : rafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-3.1.1.js"></script>
        <link rel="stylesheet" href="cosascss/estilos.css" media="screen" title="no title">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        ${param.lenguaje}
    <c:set var="pais" value="${param.lenguaje}" />
    <fmt:setBundle basename="${pais}" var="framework"/>
    <fmt:message key="codigo" bundle="${framework}" var="codigo"/> 
    <fmt:setLocale value="${codigo}"/>
    <h1>  <fmt:message key="hola" bundle="${framework}"/> <c:out value="${pais}"/></h1>
    <c:set var="now" value="<%=new java.util.Date()%>" />
    <p>Hora es: <fmt:formatDate value="${now}" type="both" timeStyle="long" dateStyle="long" /></p>
    <fmt:message key="gmt" bundle="${framework}" var="gmts"/> 
    <fmt:setTimeZone value="${gmts}" />
    <p>Hora en tal pais  es: <fmt:formatDate value="${now}" type="both" timeStyle="long" dateStyle="long" /></p>
    <c:set var="balance" value="120000.2309" />
    <p>Moneda del pais:<fmt:formatNumber value="${balance}" type="currency"/></p>

</body>
</html>
