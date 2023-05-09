<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- declaring a variable in .jsp use the <%! syntax --%>
<%! int count = 0; %>
<% count += 1; %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Start Page"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp"/>
    <%-- JSP comment. will not see this in the html --%>
    <!-- html comment. Will see this in the html -->
    <h1>The current count is <%=count%></h1>
    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>

    <h1>Implicit Objects in action:</h1>
        <p>Path: <%= request.getRequestURL()%></p>

    <h1>Query String:</h1>
        <p>Query String: <%=request.getQueryString()%></p>
        <p>"name" parameter: <%=request.getParameter("name")%></p>
        <p>"method" attribute: <%=request.getMethod()%></p>

    <h2>EL / Expression Language</h2>
        <p>"name" parameter: ${param["name"]}</p>
        <p>${2 + 2} , ${"2" + "2"} , ${"2 + 2"}</p>
        <% request.setAttribute("numbers", new int[]{222,777,999,21,7});%>
        <ul>
            <c:forEach items="${numbers}" var="number">
                <li>${number}</li>
            </c:forEach>
        </ul>
        <% request.setAttribute("five", 5); %>
        <c:choose>
            <c:when test="${five < 3}">
                <p>X is less than 3: 5<3</p>
            </c:when>
            <c:when test="${five > 2}">
                <p>X is greater than 2: 5>2</p>
            </c:when>
        </c:choose>
</body>
</html>
