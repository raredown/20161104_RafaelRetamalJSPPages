<%-- 
    Document   : Xmles
    Created on : 14-nov-2016, 17:29:32
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
        <h1>Hello World!</h1>
        <h3>Books Info:</h3>

        <c:set var="xmltext">
        <books>
            <book>
                <name>Padam History</name>
                <author>ZARA</author>
                <price>100</price>
            </book>
            <book>
                <name>Great Mistry</name>
                <author>NUHA</author>
                <price>2000</price>
            </book>
        </books>
    </c:set>

    <x:parse xml="${xmltext}" var="output"/>
    <b>The title of the first book is</b>: 
    <x:out select="$output/books/book[1]/name" />
    <br>
    <b>The price of the second book</b>: 
    <x:out select="$output/books/book[2]/price" />
    <h2>Funcion xif</h2>
    <x:if select="$output//book">
        Document has at least one <book> element.
        </x:if>
        <br />
        <x:if select="$output/books[1]/book/price > 100">
            Book prices are very high
        </x:if>
        <h2>Xforeach</h2>
        <ul class="list">
            <x:forEach select="$output/books/book/name" var="item">
                <li>Book Name: <x:out select="$item" /></li>
                </x:forEach>
        </ul>
    </body>
</html>
</body>
</html>
