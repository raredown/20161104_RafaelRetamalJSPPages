<%-- 
    Document   : Controladorentrada
    Created on : 15-nov-2016, 18:25:41
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
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from Clientes;
        </sql:query>
    </head>
    <body>
        <h1>Hello World!</h1>
        ${param.enlace}
        <c:choose>
            <c:when test="${param.enlace == 'crear'}">
                <form method="post" action="ControladorFinal.jsp">
                    <label for="usuarioPrueba">Nombre</label>
                    <input type="text"  class="form-control" id="nombre" name="nombre">
                    <label for="usuarioPrueba">apellido</label>
                    <input type="text"  class="form-control" id="apellidos" name="apellidos">
                    <label for="usuarioPrueba">direccion</label>
                    <input type="text"  class="form-control" id="direccion" name="direccion">
                    <label for="usuarioPrueba">telefono</label>
                    <input type="text"  class="form-control" id="telefono" name="telefono">
                    <input type="hidden" name="opcion" id="opcion" value="crear">
                    <br>
                    <input type="submit" value="Submit">
                    <a href="<c:url value="../index.jsp"/>"><input type="button" value="Volver" ></a>
                </form>
            </c:when>
            <c:when test="${param.enlace == 'eliminar'}">
                Salary is very low to survive.
            </c:when>
            <c:when test="${param.enlace == 'modificar'}">
                <form method="post" action="ControladorFinal.jsp">
                    <table border="1" width="100%">
                        <tr>
                            <th>Emp ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>direcion</th>
                            <th>telefono</th>
                        </tr>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td><input type="radio" name="modificando" value="<c:out value="${row.id}"/>"></td>
                                <td><c:out value="${row.nombre}"/></td>
                                <td><c:out value="${row.apellidos}"/></td>
                                <td><c:out value="${row.direccion}"/></td>
                                <td><c:out value="${row.telefono}"/></td>
                            </tr>
                        </c:forEach>

                        <label for="usuarioPrueba">Nombre</label>
                        <input type="text"  class="form-control" id="nombre" name="nombre">
                        <label for="usuarioPrueba">apellido</label>
                        <input type="text"  class="form-control" id="apellidos" name="apellidos">
                        <label for="usuarioPrueba">direccion</label>
                        <input type="text"  class="form-control" id="direccion" name="direccion">
                        <label for="usuarioPrueba">telefono</label>
                        <input type="text"  class="form-control" id="telefono" name="telefono">
                        <input type="hidden" name="opcion" id="opcion" value="modificar">
                        <br>
                        <input type="submit" value="Submit">
                        <a href="<c:url value="../index.jsp"/>"><input type="button" value="Volver" ></a>
                </form>
            </c:when>
            <c:when test="${param.enlace == 'leer'}">
                <table border="1" width="100%">
                    <tr>
                        <th>Emp ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>direcion</th>
                        <th>telefono</th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td><c:out value="${row.id}"/></td>
                            <td><c:out value="${row.nombre}"/></td>
                            <td><c:out value="${row.apellidos}"/></td>
                            <td><c:out value="${row.direccion}"/></td>
                            <td><c:out value="${row.telefono}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                No comment sir...
            </c:otherwise>
        </c:choose>

    </body>
</html>
