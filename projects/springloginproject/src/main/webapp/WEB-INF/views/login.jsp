<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <%-- Display error message if present --%>
    <%
        String error = (String) request.getAttribute("error");
        if (error != null && !error.isEmpty()) {
    %>
        <p style="color: red;"><%= error %></p>
    <%
        }
    %>
    <form action="login" method="post">
        <label for="username">UserName:</label>
        <input type="text" id="username" name="username" required/>
        <br/>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required/>
        <br/>
        <input type="submit" value="Login"/>
    </form>
</body>
</html>
