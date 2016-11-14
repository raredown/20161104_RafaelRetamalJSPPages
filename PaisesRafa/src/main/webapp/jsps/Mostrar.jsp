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
        <div class="container">
            <div class="col-md-4"></div>
            <div class="col-md-4">


                <c:set var="pais" value="${requestScope.fichero}" />
                <fmt:setBundle basename="${pais}" var="framework"/>
                <fmt:message key="codigo" bundle="${framework}" var="codigo"/> 
                <fmt:setLocale value="${requestScope.codigito}"/>
                <h1>  <fmt:message key="hola" bundle="${framework}"/> <c:out value="${requestScope.paisito}"/></h1>
                <c:set var="now" value="${requestScope.fechita}" />
                <p>Hora es: <fmt:formatDate value="${now}" type="both" timeStyle="long" dateStyle="long" /></p>
                <fmt:message key="gmt" bundle="${framework}" var="gmts"/> 
                <fmt:setTimeZone value="${gmts}" />
                <p>Hora en tal pais  es: <fmt:formatDate value="${now}" type="both" timeStyle="long" dateStyle="long" /></p>
                <c:set var="balance" value="120000.2309" />
                <p>Moneda del pais:<fmt:formatNumber value="${balance}" type="currency"/></p>
                <form>
                    <fieldset>
                        <legend><fmt:message key="personales" bundle="${framework}"/> </legend>
                        <div class="form-group">
                            <label for="example"><fmt:message key="nombre" bundle="${framework}"/> :</label>
                            <input type="text" class="form-control" id="nombre">
                        </div>
                        <div class="form-group">
                            <label for="example"><fmt:message key="dirrecion" bundle="${framework}"/> :</label>
                            <input type="text" class="form-control" id="dirrecion">
                        </div>
                        <div class="form-group">
                            <label for="example"><fmt:message key="sueldo" bundle="${framework}"/> :</label>
                            <input type="text" class="form-control" id="dirrecion">
                        </div>
                        <button type="submit" class="btn btn-default"><fmt:message key="enviar" bundle="${framework}"/> </button>
                        <button type="reset" class="btn btn-default"><fmt:message key="limpiar" bundle="${framework}"/> </button>
                    </fieldset>

                </form>
                        <p> <a href="<c:url value="CreadorPaises"/>"><fmt:message key="elegir" bundle="${framework}"/> </a></p>  
            </div>
            <div class="col-md-4"></div>
        </div>
    </body>
</html>
