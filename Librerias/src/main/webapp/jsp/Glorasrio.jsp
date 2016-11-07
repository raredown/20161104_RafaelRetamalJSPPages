<%-- 
    Document   : Glorasrio
    Created on : 07-nov-2016, 19:31:35
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <script src="../js/jquery-3.1.1.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Significado</th>
                    <th>Etiqueta</th>
                    <th>Atributos</th>
                    <th>Requerido</th>
                    <th>Ejemplo</th>
                    <th>Salida</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><p>Establece  el  valor  de  una  variable  EL  o  del  atributo  de  una  variable el  en  uno de  los ámbitos posibles. Si dicha variable no existiese la crea.</p></td>
                    <td>c:set</td>
                    <td>var<br>value<br>target<br>property<br>scope</td>
                    <td>no<br>no<br>no<br>no<br>no<br></td>
                    <td>&lt;c:set var="valor" value="10"&gt;</td>
                    <td></td>
                </tr>
                <tr>
                    <td><p>Muestra el valor de una variable.</p></td>
                    <td>c:out</td>
                    <td>value<br>default<br>escapeXml</td>
                    <td>si<br>no<br>no</td>
                    <td>&lt;c:set var="valor" value="Hola que haces"&gt;<br>&lt;c:out value="$ {valor}"/&gt;</td>
                    <td><c:set var="valor" value="Hola que haces"/>
                        <c:out value="${valor}"/>
                    </td>
                </tr>
                <tr>
                    <td><p>Elimina una variable EL.</p></td>
                    <td>c:remove</td>
                    <td>var<br>scope</td>
                    <td>si<br>no</td>
                    <td>&lt;c:remove var="valor" /&gt;<br>&lt;c:out value="$ {valor}"/&gt;</td>
                    <td><c:remove var="valor"/><c:out value="${valor}"/></td>
                </tr>
                <tr>
                    <td><p>Evalúa una condición EL y si es true sigue ejecutando el contenido del bloque</p></td>
                    <td>c:if</td>
                    <td>test<br>var<br>scope</td>
                    <td>si<br>no<br>no</td>
                    <td>
                        &lt;c:set var="salario" scope="session" value="${2000*2}"/&gt;<br>
                        &lt;c:if test="${salario > 2000}"&gt;<br>
                        &nbsp;&nbsp;&nbsp;&lt;p&gt;Mi salario es: &lt;c:out value="${salario}"/>&lt;p&gt;<br>
                        &lt;/c:if&gt;<br>
                    </td>
                    <td>
                        <c:set var="salario" scope="session" value="${2000*2}"/>
                        <c:if test="${salario > 2000}">
                            <p>Mi salario es: <c:out value="${salario}"/><p>
                            </c:if>
                    </td>
                </tr>
                <tr>
                    <td><p>Viene  a  ser  una  especie  de  estructura switch,  case, default de Java. Evalúa las condiciones</p><p> EL de cada etiquetawhen y entra por la que sea true. Si ninguna fuese true, ejecuta la otherwise.</p></td>
                    <td>c:choose</td>
                    <td>No tienes párametro</td>
                    <td></td>
                    <td>
                        <p>Su salario es : <c:out value="${salario}"/></p>
                        <c:choose>
                            <c:when test="${salario <= 0}">
                                Su salario no da para nada.
                            </c:when>
                            <c:when test="${salario> 1000}">
                                Su salario es bueno.
                            </c:when>
                            <c:otherwise>
                                Busca empleo
                            </c:otherwise>
                        </c:choose></td>
                    <td>Salida</td>
                </tr>
                <tr>
                    <td>Significado</td>
                    <td>Etiqueta</td>
                    <td>Atributos</td>
                    <td>Requerido</td>
                    <td>Ejemplo</td>
                    <td>Salida</td>
                </tr>
            </tbody>
        </table>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>John</td>
                    <td>Doe</td>
                    <td>john@example.com</td>
                </tr>
                <tr>
                    <td>Mary</td>
                    <td>Moe</td>
                    <td>mary@example.com</td>
                </tr>
                <tr>
                    <td>July</td>
                    <td>Dooley</td>
                    <td>july@example.com</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
