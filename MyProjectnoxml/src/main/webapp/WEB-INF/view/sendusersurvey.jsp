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
<script type="text/javascript">


</script>
</head>
<body>
	<table>
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
			<td><a href="${send}" class="badge badge-success"> Send </a></td>
		</tr>
	</c:forEach>
		<tr>
			<td></td>
			<td></td>
			<td><a href="${Back}" class="badge badge-success"> Back to Home </a></td>
		</tr>
	</table>
</body>
</html>