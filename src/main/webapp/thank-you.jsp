
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Thank you!" />
  </jsp:include></head>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Thank You</h1>
<br>
<c:if test="${order != null}">
  <h3>Review Your Order:</h3>
  <p>Crust: ${order.crust}</p>
  <p>Sauce: ${order.sauce}</p>
  <p>Size: ${order.size}</p>
  <br>
  <p>Toppings:</p>
    <c:forEach var="toppings" items="${order.toppings}">
      <li>${toppings}</li>
    </c:forEach>
  <br>
  <h3>Your Entered Address:</h3>
  <p>${order.address}</p>

</c:if>

<p>Your order is on its way!</p>
</body>
</html>
