<%-- 
    Document   : ControladorFinal
    Created on : 15-nov-2016, 19:30:44
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
    </head>
    <body>
        ${param.opcion}
        ${param.modificando}
        <c:choose>
            <c:when test="${param.opcion == 'crear'}">
                <c:catch var="exception">
                    <sql:update dataSource="${snapshot}" var="updatedTable">
                        INSERT INTO Clientes VALUES (0, ?,?,?,?);
                        <sql:param value="${param.nombre}" />
                        <sql:param value="${param.apellidos}" />
                        <sql:param value="${param.direccion}" />
                        <sql:param value="${param.telefono}" />
                    </sql:update>

                    <c:if test="${updatedTable>=1}">
                        <font size="5" color='green'> Congratulations ! Data inserted
                        successfully.</font>
                    </c:if>
                </c:catch>
                <c:if test="${exception!=null}">
                    <c:out value="Unable to insert data in database." />
                </c:if>
            </c:when>
            <c:when test="${param.opcion == 'modificar'}">
                <c:catch var="exception">
                    <sql:update dataSource="${snapshot}" var="updatedTable">
                        INSERT INTO Clientes VALUES (0, ?,?,?,?);
                        UPDATE Clientes  SET address=?, telephone=? where ssn=?
                        <sql:param value="${param.nombre}" />
                        <sql:param value="${param.apellidos}" />
                        <sql:param value="${param.direccion}" />
                        <sql:param value="${param.telefono}" />
                    </sql:update>

                    <c:if test="${updatedTable>=1}">
                        <font size="5" color='green'> Congratulations ! Data inserted
                        successfully.</font>
                    </c:if>
                </c:catch>
                <c:if test="${exception!=null}">
                    <c:out value="Unable to insert data in database." />
                </c:if>
            </c:when>
            <c:otherwise>
                No comment sir...
            </c:otherwise>
        </c:choose>

        <a href="<c:url value="../index.jsp"/>"><input type="button" value="Volver" ></a>
    </body>
</html>
