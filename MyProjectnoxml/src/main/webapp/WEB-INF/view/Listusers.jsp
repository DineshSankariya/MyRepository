<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/listusers.css" />

<title>User List</title>
<script type="text/javascript">

</script>
</head>
<body>

	<table border="6" style="margin: 0 auto; margin-top: 80px;" id="listtable">

		<tr>
			<th>Sr.No</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email-Id</th>
			<th>Action</th>
		</tr>
		<c:forEach var="temp" items="${Users}" varStatus="loop">
			<c:url var="updateuser" value="/users/update">
				<c:param name="toupdate" value="${temp.id}"></c:param>
			</c:url>

			<c:url var="deleteuser" value="/users/delete">
				<c:param name="todelete" value="${temp.id}"></c:param>
			</c:url>

			<tr>
				<td>${loop.count}</td>
				<td>${temp.fname}</td>
				<td>${temp.lname}</td>
				<td>${temp.email}</td>
				<td><a href="${updateuser}" class="badge badge-success  ">Update</a> | <a
					href="${deleteuser}" class="badge badge-danger "
					onclick="if(!confirm('Are you sure you want to delete user ##${temp.fname} '+ '${temp.lname}'))return false">Delete</a></td>

			</tr>

		</c:forEach>

	</table>
	<div style="text-align: center; padding: 30px">
		<a href="admin" class="cen" id="hide">Back to home </a>
	</div>
</body>

</html>