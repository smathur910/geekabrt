<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>Search between Station</h1>
	</header>	
	<nav>
		<a href="SearchById">Search by id</a>
		<a href="#">Search by b/w station</a>
		<a href="addTrain">Add train</a>
	</nav>
	<hr>
	<div>
	<form action="SearchBetweenStation">
		<label>Source:</label>
		<input type="text" name="sourceStation">
		<label>Destination:</label>
		<input type="text" name="destinationStation">
		<input type="submit" value="search">
	</form>
	</div>
		<hr>
	<footer>
		<small>&copy Copyright: 2020</small>
	</footer>
</body>
</html>