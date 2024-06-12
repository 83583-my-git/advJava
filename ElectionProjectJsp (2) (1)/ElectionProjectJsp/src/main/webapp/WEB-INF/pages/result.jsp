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

	<jsp:useBean id="res" class="com.sunbeam.beans.CandidateListBean"/>
	${res.fetchCandidate()}
	<table border="1">
		<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Party</th>
			<th>Votes</th>
			<th>Action</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${res.candidateList}">
				<tr>
					<td>${c.id}</td>
					<td>${c.name}</td>
					<td>${c.party}</td>
					<td>${c.votes}</td>
					<td>
						<a href="ctl?page=editcand?id=${c.id}">
							<img src="images/download.png" alt="Edit" width="24" height="24"/>
						</a>
						<a href="ctl?page=delcand?id=${c.id}">
							<img src="images/delete.jpeg" alt="Del" width="24" height="24"/>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/><br/>
	<a href="ctl?page=index">Sign Out</a>
	<br>
	<a href="ctl?page=announcement">Announcement</a>

</body>
</html>