
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <h1>Please Log In:</h1>
    <jsp:include page="login.jsp">
        <jsp:param name="login" value="login"/>
    </jsp:include>
</body>
</html>
