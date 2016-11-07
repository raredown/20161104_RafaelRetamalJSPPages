<%-- 
    Document   : index.jsp
    Created on : 04-nov-2016, 17:01:26
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
        <h1>Hello World!</h1>
        <form method="post" action="jsp/salidael.jsp">
            <label for="usuarioPrueba">Nombre</label>
            <input type="text"   id="nombre" name="nombre">
            <label for="usuarioPrueba">Apellido</label>
            <input type="text"   id="apellido" name="apellido">
            <label for="usuarioPrueba">Edad</label>
            <input type="number"   id="edad" name="edad">
            <input type='submit' class="btn btn-primary" name="crear" value='Crear'/>
            <input type="reset" class="btn btn-warning" value="Limpiar"/>   
        </form>
    </body>
</html>
