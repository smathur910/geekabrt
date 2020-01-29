<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>logIn</title>
<style type="text/css">

  h1{
      color: blue;
      text-align: center;
      padding-top: 20px;
      padding-bottom: 20px;
  }

nav {
    overflow: auto;
    background-color: #03EA7B;
  }
  
  nav a {
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
  }
  
  nav a:hover {
    background-color: #ddd;
    color: black;
  }
  
  nav a.active {
    background-color: #339933;
    color: white;
  }
  
  .container {
  padding: 20px;
  width:500px;
  margin: auto;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}


button{
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin:0 auto;
  border: none;
  cursor: pointer;
  width: 150px;
  position:relative;
  left: 570px;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  
}

footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: red;
   color: white;
   text-align: center;
}
  
</style>
</head>
<body>
	<header>
		<h1>Train project</h1>
	</header>
	
	<nav>
		<a href="register">Resister</a>
		<a href="login">Login</a>
		<a href="#">About Us</a>
		<a href="#">Contact us</a>
	</nav>
	
		<div id="form_login">
			<form action="validate">
			<div class="container">
				<label>username:</label>
				<input type="text" name="username"><br>
				<label>password:</label>
				<input type="password" name="password"><br>
			</div>	
				<button type="submit" name="Login">Login</button>
			</form>
		</div>
		
		
	<footer>
		<small>&copy Copyright: 2020</small>
	</footer>
</body>
</html>