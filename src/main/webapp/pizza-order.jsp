
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Order a Pizza" />
    </jsp:include></head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <form action="pizza-order" method="post">
    <h1>Customize Your Pie:</h1>
    <legend>Choose your crust:</legend>
    <select name="crust">
        <option value="thin">Thin Crust</option>
        <option value="regular">Regular Crust</option>
        <option value="thick">Thick Crust</option>
    </select>
    <br><br>
    <legend>Choose your sauce:</legend>
    <select name="sauce">
        <option value="red">Red Sauce</option>
        <option value="white">White Sauce</option>
        <option value="bbq">BBQ</option>
    </select>
    <br><br>
    <legend>Choose your size:</legend>
    <select name="size">
        <option value="small">Small (12")</option>
        <option value="medium">Medium (14")</option>
        <option value="large">Large (16")</option>
    </select>
    <br><br>
    <fieldset>
        <legend>Toppings:</legend>
        <label for="pepperoni">Pepperoni:</label>
        <input type="checkbox" name="toppings" value="pepperoni" id="pepperoni"><br>
        <label for="sausage">Sausage:</label>
        <input type="checkbox" name="toppings" value="sausage" id="sausage"><br>
        <label for="cheese">Cheese:</label>
        <input type="checkbox" name="toppings" value="cheese" id="cheese"><br>
    </fieldset>
    <br><br>
    <fieldset>
    <h2>Delivery Address:</h2>
        <input type="text" name="address" id="address" placeholder="Enter Address:">
    </fieldset><br>
    <input type="submit" class="btn btn-primary btn-block" value="Submit Order">
    </form>
</div>
</body>
</html>


