<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List of Authors</title>
</head>
<body>
<h1>Author Names:</h1>
<c:forEach var="author" items="${authors}">
    <div class="author">
        <p>${author.name}</p>
    </div>
</c:forEach>

</body>
</html>
