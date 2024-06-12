<%@page import="com.sunbeam.pojos.Candidate"%>
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
<h3 style="color:red" >${ ann.massage }</h3>

	
	Hello, ${lb.user.firstName } ${lb.user.lastName }
<jsp:useBean id="clb" class="com.sunbeam.beans.CandidateListBean" />
${clb.fetchCandidate()}
<form action="ctl?page=vote" method="post">
 <c:forEach var="d" items="${clb.candidateList}"> 
	<input type="radio" name="candidate" value= "${d.id}" /> ${d.name} -  ${d.party}
	<br/><br/>
</c:forEach>
<br/><br/>
<input type="submit" value="vote!!">

</form>

</body>
</html>