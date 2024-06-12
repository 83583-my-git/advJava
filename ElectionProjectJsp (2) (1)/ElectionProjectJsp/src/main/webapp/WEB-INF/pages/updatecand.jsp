<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="ub" class="com.sunbeam.beans.UpdateBean" ></jsp:useBean>
<jsp:setProperty property="*" name="ub"/>
${ ub.updateCandidate() }
<jsp:forward page="ctl?page=result"></jsp:forward>
</body>
</html>