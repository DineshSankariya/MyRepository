<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/admin.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<title>Send Survey</title>
<style type="text/css">
table{
	margin:0px;
	padding:0px;
	width: 80%;
	margin-left:130px;
	margin-top:20px;
	
	
}
th,td{
 padding-right: 0px;
}

th {
	background-color: #7b88ff;
	color:white;
	
}


</style>
</head>
<body>

	<table >
	<tr>
		<th>S.No</th>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Survey Name</th>
		<th>Action</th>
	</tr>	
	<c:forEach var="temp" items="${users}" varStatus="loop">
		<c:url var="send" value="/user/send">
			<c:param name="surveyid" value="${sid.id}"></c:param>
			<c:param name="userid" value="${temp.id}"></c:param>
			<c:param name="admin" value="${admin}"></c:param>
		</c:url>
		<c:url var="Back" value="/user/LogIn">
			<c:param name="email" value="${userid.email}"></c:param>
			<c:param name="password" value="${userid.password}"></c:param>
		</c:url>
		<tr>
			<td>${loop.count}</td>
			<td>${temp.fname}</td>
			<td>${temp.lname}</td>
			<td>${sid.name}</td>
			<td><a href="${send}" class="badge badge-success" style="padding: 5px 12px 5px 12px;"> Send </a></td>			
	</tr>
	</c:forEach>	
</table>
	<div style="display: flex;justify-content: center;align-items: center;margin-top: 20px; ">
		<a href="${Back}" class="badge badge-primary" style="padding: 10px 12px 10px 12px;"> Back to Home </a>
	</div>
</body>
</html>