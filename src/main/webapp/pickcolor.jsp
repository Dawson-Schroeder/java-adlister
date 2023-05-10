
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Pick a Color!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Enter a Color</h1>
<form method="POST" action="/viewcolor.jsp">
    <input type="text" name="color" placeholder="Enter your favorite color:">
    <input type="submit" value="Submit">
</form>
</body>
</html>

