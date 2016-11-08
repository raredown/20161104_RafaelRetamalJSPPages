<%-- 
    Document   : Funciones
    Created on : 08-nov-2016, 17:40:52
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>Original</h2>
        <c:set var="cadena" value="Hola esta cadena es la prueba para las funciones de JSTL"/>
        ${cadena}
        <h2>Tamaño</h2>
        <p>${fn:length(cadena)}</p> 
        <h2>toUpperCase</h2>
        <p>${fn:toUpperCase(cadena)}</p> 
        <h2>toLowerCase</h2>
        <p>${fn:toLowerCase(cadena)}</p> 
        <h2>substring</h2>
        <c:set var="string2" value="${fn:substring(cadena, 5, 15)}" />
        ${string2}
        <h2>substringBefore</h2>
        <c:set var="string2" value="${fn:substringAfter(cadena, 'prueba')}" />
        ${string2}
        <h2>replace</h2>
        <c:set var="string2" value="${fn:replace(cadena, ' ', ',')}" />
        ${string2}
        <h2>Split</h2>
        <c:set var="string2" value="${fn:split(cadena, ' ')}" />
        <c:forEach var="num" items="${string2}">
            ${num}<br>
        </c:forEach>
        <h2>contains</h2>
        <c:set var="cadena" value="Hola esta cadena es la prueba para las funciones de JSTL"/>
        <c:if test="${fn:contains(cadena, 'Hola')}">
            <p>Ha encontrado Hola<p>
            </c:if>

            <c:if test="${fn:contains(cadena, 'hola')}">
            <p>Ha encontrado hola<p>
            </c:if>
        <h2>containsIgnoreCase</h2>
        <c:set var="cadena" value="Hola esta cadena es la prueba para las funciones de JSTL"/>
        <c:if test="${fn:containsIgnoreCase(cadena, 'Hola')}">
            <p>Ha encontrado Hola<p>
            </c:if>

            <c:if test="${fn:containsIgnoreCase(cadena, 'hola')}">
            <p>Ha encontrado hola<p>
            </c:if>
        <h2>indexOf</h2>
        ${fn:indexOf(cadena, "prueba")}
        <h2>join</h2>
        <c:set var="string2" value="${fn:split(cadena, ' ')}" />
        <c:set var="string3" value="${fn:join(string2, '-')}" />
        ${string3}
        <h2>startsWith</h2>
        <c:if test="${fn:startsWith(cadena, 'Hola')}">
            <p>La cadena empienza por Hola</p>
        </c:if>
        <br />
        <c:if test="${fn:startsWith(string, 'hola')}">
            <p>La cadena empienza por hola</p>
        </c:if>
        <h2>endsWith</h2>
        <c:if test="${fn:endsWith(cadena, 'JSTL')}">
            <p>La cadena termina por JSTL</p>
        </c:if>
        <br />
        <c:if test="${fn:endsWith(string, 'jstl')}">
            <p>La cadena empienza por jstl</p>
        </c:if>
        <h2>trim</h2>
        <c:set var="mymsg" value=" La cadena sin espacio al final      "/>
        ${fn:trim(mymsg)}
        <h2>ejercicio</h2>
        <c:set var="cadena" value="Hola esta u cadena es la prueba para las funciones de JSTL"/>
        ${fn:indexOf(cadena, "u")}
        <c:set var="string2" value="${fn:split(cadena,'u')}" />
    </body>
</html>
