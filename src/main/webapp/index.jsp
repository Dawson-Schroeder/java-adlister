<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <div class="row">
            <div class="column">
                <h1><a href="/pizza-order.jsp">Order a Pizza</a></h1>
            </div>
            <div class="column">
                <h1><a href="/pickcolor.jsp">Pick a Color</a></h1>
            </div>
            <dic class="column">
                <h1><a href="/guess.jsp">Guessing Game</a></h1>
            </dic>
        </div>
    </div>
</body>
</html>
