<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
</head>
<body>
<h3 style="color:red">${ ann.massage }</h3>
	<h1>Log In</h1>
	<form method="post" action="ctl?page=login">
	Email : <input type="text" name="email"><br/><br/>
	Password : <input type="password" name="password"><br/><br/>
	<input type="submit" value="Login">
	 <a href="ctl?page=newuser">Sign Up</a>
	</form>
	
</body>
</html>