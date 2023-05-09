
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Check if user is logged in
    Boolean isLoggedIn = (Boolean)request.getSession().getAttribute("isLoggedIn");
    if (isLoggedIn != null && isLoggedIn) {
%>
<jsp:include page="partials/navbar.jsp"/>

<div>
    <h1>Your Profile</h1>
    <ul>
        <li>Name: <%= "Admin" %></li>
        <li>Email: <%= "admin@example.com" %></li>
    </ul>
</div>

<%
    }
%>