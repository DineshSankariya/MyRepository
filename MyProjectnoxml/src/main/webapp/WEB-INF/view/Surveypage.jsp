<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>



table{
	
	margin: 0 auto;
	width: 700px;
	
}

tr:nth-child(odd){
	background-color:#dddddd;
}

tr:nth-child(even) {
	background-color:#ffffff;
}

th{
	padding: 10px;
	background-color:#52de97;
	height: 50px;
}

td {
	
	padding: 10px;
	
	height: 50px;
	
}

.cre{
	margin: 0 auto;
	text-align: center;	
	margin-top: 80px;
}

.fo{
	font-weight: bold;
}

.logout{
	margin-left:45%;
	padding: 30px;
}
</style>
</head>
<body>
	<table >
		<tr>
			<th>Sr.No</th>
			<th>Survey Name</th>
			<th>Action</th>
		</tr>
		<c:forEach var="temp" items="${surveylink}" varStatus="loop">
			<c:url var="surveys" value="/user/surveypage">
				<c:param name="surveylist" value="${temp.id}"></c:param>
				<c:param name="userid" value="${userid}"></c:param>
			</c:url>
			<tr>
				<td>${loop.count}</td>
				<td>${temp.name}</td>
				<td>
					<c:if test="${status='true'}">
						<a href="${surveys}" class="badge badge-success">Go</a>
					</c:if>
					<c:if test="${status='false'}">
						<a href="#" class="badge badge-success">Go</a>
					</c:if>
				</td>
				

			</tr>
		</c:forEach>
	</table>
	
</body>
</html>