
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="landing"/>
    </jsp:include>
</head>
<body>

    <jsp:include page="landing.jsp">
        <jsp:param name="landing" value="landing"/>
    </jsp:include>

</body>
</html>
