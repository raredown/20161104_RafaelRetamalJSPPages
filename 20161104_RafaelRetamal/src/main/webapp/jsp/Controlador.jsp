<%-- 
    Document   : Controlador
    Created on : 04-nov-2016, 17:05:21
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="persona" scope="request" class="es.albarregasBeans.Persona"/>
 <jsp:setProperty property="*" name="persona"/>
 <jsp:forward page="salida.jsp" />
    