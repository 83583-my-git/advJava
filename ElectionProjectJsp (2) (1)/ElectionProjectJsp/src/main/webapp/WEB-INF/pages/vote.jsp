<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>${initParam.appTitle}</h3>
<jsp:useBean id="vb" class="com.sunbeam.beans.VoteBean"></jsp:useBean>
<jsp:setProperty property="id" name="vb"/>
<jsp:useBean id="usb" class="com.sunbeam.beans.UpdateStatus"></jsp:useBean>
<jsp:setProperty property="id" name="usb" value="${ lb.user.id }"/>
<jsp:setProperty property="status" name="usb"/>
<h3 style="color:red">${ ann.massage }</h3>

<c:choose>
	<c:when test="${ lb.user.status == 0 }">
		${ vb.vote() }
		${ usb.updateStatus() }
		<h2>your vote is successfully resister!</h2>
		<h3>Thank you for participating in Voting</h3>
		<a href="ctl?page=index">log out</a>
	</c:when>
	<c:otherwise>
		<h1 style="color:red">you already voted !</h1>
		<h2>Thank you for participating in Voting</h2>
		<a href="ctl?page=index">log out</a>
	</c:otherwise>
</c:choose>



</body>
</html>