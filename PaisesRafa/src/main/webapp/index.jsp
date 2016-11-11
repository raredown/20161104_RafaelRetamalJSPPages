<%-- 
    Document   : index
    Created on : 11-nov-2016, 11:13:04
    Author     : rafa
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
        <form method="post" action="Controlador">
            <select name="lenguaje">
                <option name="lenguaje" value="Italia">Italia</option>
                <option name="lenguaje" value="Espana">España</option>

                <option name="lenguaje" value="Inglaterra">Inglaterra</option>
                <option name="lenguaje" value="Japon">Japon</option>
                <option name="lenguaje" value="Francia">Francia</option>

            </select>
            <input type="submit" value="enviar">
        </form>
    </body>
</html>
