<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Search" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="page-wrapper">
  <div class="container">
    <div clas="row">
      <div class="column">
        <c:if test="${empty search}">
          <h1>Here are all the ads:</h1>
        </c:if>
        <c:if test="${not empty search}">
<%-- <c:out value="${search}/>  will take all the malicious stuff (SQL injection) out and not run it. wont be able to run script into the search bar to effect the website.--%>
          <h1>Searching for: <c:out value="${search}"/></h1>
        </c:if>
        <form action="ads/search" method="POST">
          <input type="text" name="search" placeholder="Search">
          <button type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
