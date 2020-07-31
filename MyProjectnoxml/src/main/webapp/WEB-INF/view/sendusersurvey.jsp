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
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&family=Roboto:wght@500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<title>Send Survey</title>
<style type="text/css">
table{
	margin:0px;
	padding:0px;
	width: 80%;
	margin-left:135px;
	margin-top:30px;
	overflow-y:scroll; 
	
}
th,td{
 padding-right: 0px;
}

th {
	background-color: #015668;
	color:white;
	font-family: 'Poppins', sans-serif;
	
	
}
*{
	font-family: 'Roboto', sans-serif;
	font-weight: 700;
}

.bg{
	
background: #00c6ff;  /* fallback for old browsers */
background: -webkit-linear-gradient(to bottom, #0072ff, #00c6ff);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to bottom, #0072ff, #00c6ff); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
width: 100%;
height: 100vh;
overflow: hidden;

}

#hello{

	font-size: 22px;padding: 5px 5px 5px 5px;
	background-color: #0779e4;
	color:white;
	border:1px solid #0779e4;
	border-radius:8px;
}

#hello:hover{
	border:1px solid #15cda8;
	background-color: #15cda8;
	color:black;
}


</style>
</head>
<body class="bg">
	<% 
		if(request.getAttribute("sendstatus")!=null){
			boolean send=(boolean)request.getAttribute("sendstatus");		
		if(send){%>		
			<i style="display: flex;justify-content: center;align-items: center;margin-top: 20px; color: white;font-weight: bolder;font-size: 20px; ">Survey Sent Successfully</i>
		<%}else{ %>
			<i style="display: flex;justify-content: center;align-items: center;margin-top: 20px;color: white;font-weight: bolder;font-size: 20px; ">Survey Sent already </i>
		<%} }%>
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
			<td><a href="${send}"  ><i class="far fa-arrow-alt-circle-up" id="hello" ></i>  </a></td>			
	</tr>
	</c:forEach>	
</table>
	<div style="display: flex;justify-content: center;align-items: center;margin-top: 20px; ">
		<a href="${Back}" class="btn btn-outline-light" style="padding: 10px 12px 10px 12px;transition:0.7s background-color;"> Back to Home </a>
	</div>
</body>
</html>