<%-- 
    Document   : index
    Created on : 14-nov-2016, 17:46:40
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import var="xml" url="xml/universidad.xml"/>
        <x:parse varDom="uni" xml="${xml}"/>
        <h2>Nombre de la universidad!</h2>
        <x:out select="$uni/universidad/nombre" />
        <h2>Pais de la universidad</h2>
        <x:out select="$uni/universidad/pais" />
        <h2>Nombre de las carrearas</h2>
        <x:forEach select="$uni/universidad/carreras/carrera/nombre" var="item">
            <x:out select="$item" /><br>
        </x:forEach>
        <h2>Años de plan de estudio</h2>
        <x:forEach select="$uni/universidad/carreras/carrera/plan" var="item">
            <x:out select="$item" /><br>
        </x:forEach>
        <h2>Nombre alumno</h2>
        <x:forEach select="$uni/universidad/alumnos/alumno/nombre" var="item">
            <x:out select="$item" /><br>
        </x:forEach>
        <h2>Indetificadores de las carreras</h2>
        <x:forEach select="$uni/universidad/carreras/carrera" var="item">
            <x:out select="@id" /><br>
        </x:forEach>
        <h2>Datos de la carrera con id = c01</h2>
        <x:set var="i" select="$uni//carrera[@id='c01']" />
        <x:out select="$i/nombre" /><br>
        <x:out select="$i/plan" /><br>
        <x:out select="$i/creditos" /><br>
        <x:out select="$i/centro" /><br>
        <h2>Centro  = c02</h2>
        <x:set var="i" select="$uni//carrera[@id='c02']" />
        <x:out select="$i/centro" /><br>
        <h2>Nombre de las carreras que tengan subdirector</h2>
        <x:forEach select="$uni//subdirector/.." var="item">
            <x:out select="$item/nombre" /><br>
        </x:forEach>
        <h2>Nombre de los alumnos que estén haciendo proyecto</h2>
        <x:forEach select="$uni//proyecto/../.." var="item">
            <x:out select="$item/nombre" /><br>
        </x:forEach>
        <h2>Código de las carreras donde hay algún alumno matriculado</h2>
        <x:forEach select="$uni//alumno//carrera" var="item">
            <x:out select="$item/@codigo" /><br>
        </x:forEach>
        <h2>Nombre y apellidos de los alumnos con beca</h2>
        <x:forEach var="i" select="$uni//alumno[@beca]" >
            <x:out select="$i/nombre" />
            <x:forEach var="j" select="$i/apellido">
                <x:out select="$j" /><br>
            </x:forEach>
        </x:forEach>
        <h2>Nombre de las asignaturas de la titulación c04</h2>
        <x:forEach var="i" select="$uni//asignatura[@titulacion='c04']" >
            <x:out select="$i/nombre" /><br>
        </x:forEach>
        <h2>Nombre de las asignaturas del segundo trimestre</h2>
        <x:forEach var="i" select="$uni//asignatura" >
            <x:if select="$i/trimestre = 2">
                <x:out select="$i/nombre" /><br>
            </x:if>
           
        </x:forEach>
    </body>
</html>
