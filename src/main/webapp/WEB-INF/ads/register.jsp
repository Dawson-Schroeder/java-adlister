<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Register!" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="page-wrapper">
  <h1>Register:</h1>
  <form action="/ads/register" method="POST">
    <div class="form-group">
      <label for="username">Username</label>
      <input id="username" name="username" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="email">Email</label>
      <input id="email" name="email" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input id="password" name="password" class="form-control" type="password">
    </div>
    <input type="submit" class="btn btn-primary btn-block" value="Sign Up!">
  </form>
</div>
</body>
</html>


<%--<c:if test="${empty search}">
    <h1>All Users</h1>
  </c:if>
  <c:if test="${not empty search}">
    <h1>Searching for <c:out value="${search}"/></h1>
  </c:if>--%>