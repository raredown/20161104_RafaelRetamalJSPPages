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
                    <td><p>Establece  el  valor  de  una</p><p>  variable  EL  o  del  atributo <p></p> de  una  variable el  en  uno</p><p> de  los ámbitos posibles. Si dicha variable no existiese la crea.</p></td>
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
                    <td><p>Evalúa una condición EL y si es true sigue</p><p> ejecutando el contenido del bloque</p></td>
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
                    <td><p>Viene  a  ser  una  especie  de  estructura switch,  case, default de Java. </p><p>Evalúa las condiciones</p><p> EL de cada etiquetawhen y entra por la que sea true.<p></p> Si ninguna fuese true, ejecuta la otherwise.</p></td>
                    <td>c:choose</td>
                    <td>No tienes párametro</td>
                    <td></td>
                    <td>
                        &lt;p&gt;Su salario es : &lt;c:out value="$ {salario}"/&gt;&lt;/p&gt;<br>
                        &lt;c:choose&gt;<br>
                        &nbsp;&nbsp;&nbsp; &lt;c:when test="$ {salario <= 0}"&gt;<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Su salario no da para nada.<br>
                        &nbsp;&nbsp;&nbsp; &lt;/c:when&gt;<br>
                        &nbsp;&nbsp;&nbsp;  &lt;c:when test="$ {salario> 1000}"&gt;<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Su salario es bueno.<br>
                        &nbsp;&nbsp;&nbsp;  &lt;/c:when&gt;<br>
                        &nbsp;&nbsp;&nbsp;  &lt;c:otherwise&gt;<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Busca empleo<br>
                        &nbsp;&nbsp;&nbsp;   &lt;/c:otherwise&gt;<br>
                        &lt;/c:choose&gt;
                    </td>
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
                        </c:choose>
                    </td>
                </tr>
                <tr>
                    <td><p> captura  una  excepción.  La </p><p> excepción  no  se  propaga  y  </p><p>por  tanto  no  seinvocará  la página JSP</p><p> de error si la hubiera</p></td>
                    <td>c:catch</td>
                    <td>var</td>
                    <td>no</td>
                    <td>
                        &lt;c:catch var ="catchException"&gt;<br>
                        &nbsp;&nbsp;&nbsp;  &lt;% int x = 5 / 0;%&gt;<br>
                        &lt;/c:catch&gt;<br>

                        &lt;c:if test = "$ {catchException != null}"&gt;<br>
                        &nbsp;&nbsp;&nbsp; &lt;p>La excepción es : $ {catchException} &lt;br /&gt;<br>
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;   El mensaje: $ {catchException.message}&lt;/p&gt;<br>
                        &lt;/c:if&gt;
                    </td>
                    <td>
                        <c:catch var ="catchException">
                            <% int x = 5 / 0;%>
                        </c:catch>

                        <c:if test = "${catchException != null}">
                            <p>La excepción es : ${catchException} <br/>
                                El mensaje: ${catchException.message}</p>
                            </c:if>
                    </td>
                </tr>
                <tr>
                    <td><p> permite iterar por una colección de elementos</p></td>
                    <td>c:forEach</td>
                    <td>items<br>begin<br>end<br>step<br>var<br>varStatus</td>
                    <td>no<br>no<br>no<br>no<br>no<br>no</td>
                    <td>
                        &lt;c:forEach var="i" begin="1" end="3"&gt;<br>
                        &nbsp;&nbsp;&nbsp;Contador: &lt;c:out value="${ [i]}"/&gt;<br>
                        &lt;/c:forEach&gt;<br>

                    </td>
                    <td>  
                        <c:forEach var="i" begin="1" end="3">
                            Contador: <c:out value="${[i]}"/>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td><p>permite iterar por una colección de</p><p> tokens separados por undelimitador</p></td>
                    <td>c:forTokens</td>
                    <td>items<br>delims<br>begin<br>end<br>step<br>var<br>varStatus</td>
                    <td>si<br>si<br>no<br>no<br>no<br>no<br>no</td>
                    <td>
                        &lt;c:forTokens items="Pepe,Rafa,Jesus,Guachi" delims="," var="name"&gt;<br>
                        &nbsp;&nbsp;&nbsp;  &lt;c:out value="${ name}"/&gt;<br>
                        &lt;/c:forTokens&gt;<br>
                    </td>
                    <td>
                        <c:forTokens items="Pepe,Rafa,Jesus,Guachi" delims="," var="name">
                            <c:out value="${name}"/>
                        </c:forTokens>
                    </td>
                </tr>
                <tr>
                    <td><p> importa  el  contenido  de  un  recurso  de  Internet  en  una  </p><p>variable  EL.Puede  utilizar param para especificar parámetros.</p></td>
                    <td>c:import</td>
                    <td>url<br>var<br>scope<br>varReader<br>context<br>charEncoding</td>
                    <td>si<br>no<br>no<br>no<br>no<br>no</td>
                    <td>
                        &lt;c:import var="mydata" url="Pruebas.jsp"/&gt;<br>
                        &lt;c:out value="$ {mydata}"/&gt;<br>

                    </td>
                    <td>
                        <c:import var="mydata" url="Pruebas.jsp"/>
                        <c:out value="${mydata}"/>
                    </td>
                </tr>
                <tr>
                    <td><p> guarda URLs en una variable EL.<p></p> Puede utilizar param para especificarparámetros</p></td>
                    <td>c:url</td>
                    <td>var<br>scope<br>value<br>context</td>
                    <td>no<br>no<br>no<br>no</td>
                    <td>
                        &lt;a href="&lt;c:url value="../index.jsp"/&gt;"&gt;Menu principal&lt;/a&gt;

                    </td>
                    <td>
                        <a href="<c:url value="../index.jsp"/>">Menu principal</a>

                    </td>
                </tr>
                <tr>
                    <td><p>  envía   al   cliente   un   código   HTTP   de   redirección.  <p></p> Puede   utilizar   parampara especificar parámetros.</p></td>
                    <td>c:redirect</td>
                    <td>url<br>context</td>
                    <td>no<br>no</td>
                    <td>
                         &lt;c:redirect url="http://www.google.com"/&gt;

                    </td>
                    <td>
                        &lt;c:redirect url="http://www.google.com"/&gt;

                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
