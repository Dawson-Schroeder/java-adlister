<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            request.getSession().setAttribute("isLoggedIn", true);
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<jsp:include page="partials/navbar.jsp"/>

<h1>Please Log In:</h1><br>
<form action="/login.jsp" method="POST">
    <div>
        <label for="username">Username:</label>
        <input type="text" placeholder="Enter Username" name="username" id="username" required>
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" placeholder="Enter Password" name="password" id="password" required>
    </div>
    <div>
        <button type="submit">Login</button>
    </div>
</form>
