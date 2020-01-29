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
		<h1>Add Train</h1>
	</header>
	<hr>
	<nav>
		<a href="register">Register</a>
		<a href="login">Login</a>
		<a href="#">About Us</a>
		<a href="#">Contact us</a>
	</nav>
	
	<div>
	<form:form action="save" modelAttribute="newTrain">
 		<label>Train Id:</label>
 		<form:input path ="trainId"/><br>
 		<label>Train Name:</label>
 		<form:input path ="trainName"/><br>
 		<label>Train Source:</label>	
 		<form:input path ="source"/><br>
 		<label>Train Destination:</label>
 		<form:input path ="destination"/><br>
 		<label>Train ArrivalTime:</label>
 		<form:input path ="arrivalTime"/><br>
 		<label>Train DepartureTime:</label>
 		<form:input path ="departureTime"/><br>
 		<button type="submit" name="Register">addtrain</button>
 	</form:form>
 	
	 

 </div>
 <hr>
	<footer>
		<small>&copy Copyright: 2020</small>
	</footer>
</body>
</html>