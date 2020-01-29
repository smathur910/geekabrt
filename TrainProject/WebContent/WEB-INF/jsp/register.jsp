<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>Resister</h1>
	</header>
	<hr>
	<nav>
		<a href="register">Register</a>
		<a href="login">Login</a>
		<a href="#">About Us</a>
		<a href="#">Contact us</a>
	</nav>
	<div>
	<%-- <form action="registreation">
 
 		<label>username:</label>
		<input type="text" name="username"><br>
		<label>password:</label>
		<input type="password" name="password"><br>
		<label>Email:</label>
 		<input type="email" name="email"><br>
		<label>Phone:</label> 		
 		<input type="number" name="phone">
 	
 	<input type="submit" name="register">  
 	 </form>--%>
 	 
 	<form:form action="registreation" modelAttribute="user">
 		<label>username:</label>
 		<form:input path ="username"/><br>
 		<label>password:</label>
 		<form:input path ="password"/><br>
 		<label>phone:</label>	
 		<form:input path ="Phno"/><br>
 		<label>email:</label>
 		<form:input path ="email"/><br>
 		<button type="submit" name="Register">Register</button>
 	</form:form>
 	
	 

 </div>
 
 <hr>
	<footer>
		<small>&copy Copyright: 2020</small>
	</footer>
</body>
</html>