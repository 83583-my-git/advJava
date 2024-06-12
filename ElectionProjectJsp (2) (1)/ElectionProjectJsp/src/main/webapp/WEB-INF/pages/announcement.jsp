<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="ctl?page=announce" method="post">
<h3>${initParam.appTitle}</h3>
<h1>Announcement</h1>

<textarea rows="5" cols="100" name="massage"></textarea>
<input type="submit" value="Submit">
</form>
</body>
</html>