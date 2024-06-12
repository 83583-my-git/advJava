<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>${initParam.appTitle}</h3>
<h3 style="color:red">${ ann.massage }</h3>
<h1>Register here</h1>
<br/>
<form action="ctl?page=register" method="post">
First name : <input type="text" name="firstName"><br/><br/>
Last name : <input type="text" name="lastName"><br/><br/>
Email : <input type="text" name="email"><br/><br/>
Password : <input type="password" name="password"><br/><br/>
Birth : <input type="date" name="birth"><br/><br/>
<input type="submit" value="Register"> 
</form>
</body>
</html>