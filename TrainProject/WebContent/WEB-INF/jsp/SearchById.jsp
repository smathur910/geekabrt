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
		<h1>Train Project</h1>
	</header>	
	<nav>
		<a href="SearchById">Search by id</a>
		<a href="#">Search by b/w station</a>
		<a href="#">Add train</a>
	</nav>
	<hr>
	<div>
	<form action="findTrainId">
		<label>Train Id:</label>
		<input type="text" name="trainId">
		<input type="submit" value="search">
	</form>
	</div>
		<hr>
	<footer>
		<small>&copy Copyright: 2020</small>
	</footer>
</body>
</html>