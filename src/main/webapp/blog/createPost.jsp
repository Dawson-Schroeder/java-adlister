
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<jsp:include page="../partials/head.jsp">
    <jsp:param name="title" value="Create a Blog Post"/>
</jsp:include>
<body>
<jsp:include page="/partials/navbar.jsp"/>
<div class="container">
    <h1>Create a Blog Post</h1>
    <form action="/createPost" method="post">
        <label for="post">Your Post:</label>
        <textarea name="post" id="post" cols="30" rows="10"></textarea>
        <fieldset>
            <legend>Topic:</legend>
            <label for="programming">Programming</label>
            <input type="checkbox" name="topic" value="programming" id="programming"><br>
            <label for="AI">AI</label>
            <input type="checkbox" name="topic" value="AI" id="AI"><br>
            <label for="security">Security</label>
            <input type="checkbox" name="topic" value="security" id="security"><br>
        </fieldset>
        <input type="submit" value="Submit">
    </form>
    <c:if test="${post != null}">
        <h3>Your blog Post:</h3>
        <p>${post}</p>
    </c:if>
</div>

</body>
</html>
