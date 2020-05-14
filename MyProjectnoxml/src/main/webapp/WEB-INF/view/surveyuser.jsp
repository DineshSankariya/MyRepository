<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/formstyle.css" />

<style type="text/css">
.mail {
	margin: 0 auto;
}

table {
	margin-top:50px; 
}
</style>
<title>Survey Question</title>

</head>
<body>
	 <table>
		<tr>
			<th>Sr.No</th>
			<th>Survey Name</th>
			<th>Action</th>
		</tr>
		<c:forEach var="temp" items="${surveylink}" varStatus="loop">
			<c:url var="surveys" value="/user/surveypage">
				<c:param name="surveylist" value="${temp.id}"></c:param>
			</c:url>
			<tr>
				<td>${loop.count}</td>
				<td>${temp.name}</td>
				<td><a href="${surveys}" class="badge badge-success">Go</a></td>

			</tr>
		</c:forEach>
	</table>
</body>

</html>