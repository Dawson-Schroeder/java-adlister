
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>

    <jsp:include page="landing.jsp">
        <jsp:param name="landing" value="landing"/>
    </jsp:include>

</body>
</html>
