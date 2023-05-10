
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Pick a Color!" />
  </jsp:include>
  <style>
    body {
      background-color: <%= request.getParameter("color") %>;
    }
  </style>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Your Favorite Color is <%= request.getParameter("color") %></h1>
</body>
</html>

