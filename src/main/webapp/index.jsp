<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 01/25/2022
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%--c:out--%>
<h1><c:out value="out: HelloWorld"/></h1>

<%--c:set--%>
<c:set scope="request" var="greeting" value="set: HelloWorld"/>
<h1><c:out value="${greeting}"/></h1>

<%--c:remove--%>
<c:remove scope="request" var="greeting"/>
<h1><c:out value="remove: ${greeting}"/></h1>

<%--c:catch--%>
<c:catch var="ex"><%int a = 100/0;%></c:catch>
<h1>Message: ${ex.message}</h1>

<%--c:if--%>
<c:if test="${requestScope['mess'] != 'hello'}">
    <h1>if: ${requestScope['mess']}</h1>
</c:if>
<c:if test="${requestScope['mess'] == 'hello'}">
    <h1>if: ${requestScope['mess']}</h1>
</c:if>

<%--c:choose,c:when,c:otherwise--%>
<c:choose>
    <%-- Khi tham số color == 'red' --%>
    <c:when test="${requestScope['color'] == 'red'}">
        <h1 style="color:red;">RED COLOR</h1>
    </c:when>

    <%-- Khi tham số color == 'blue' --%>
    <c:when test="${requestScope['color'] == 'blue'}">
        <h1 style="color:blue;">BLUE COLOR</h1>
    </c:when>

    <%-- Các trường hợp khác --%>
    <c:otherwise>
        <h1>Other color</h1>
    </c:otherwise>
</c:choose>

<%--c:forToKens--%>
<c:forTokens items="Tom,Jerry,Donald" delims="," var="name">
    <h1><c:out value="${name}"/></h1>
</c:forTokens>

<%--c:param, c:url--%>
<c:url value="/ControlServlet" var="myURL">
    <c:param name="color" value="red"/>
</c:url>
<h1><a href="${myURL}">Demo-Param-Url</a></h1>

<%--c:redirect--%>
<%--<c:redirect url="test.jsp">Redirect</c:redirect>--%>
</body>
</html>
