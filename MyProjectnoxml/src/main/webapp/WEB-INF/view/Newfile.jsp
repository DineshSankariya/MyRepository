<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('a').click(function(event){
		
		var url=$(this).attr('id')
		console.log(url)
		$(this).css("text-decoration","none")
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/user/"+$(this).attr('id'),
			success : function(data) {
				
					$('.main').load(url);
						
					
			},
			error : function(e) {
				console.log("ERROR: ", e);
				display(e);
			}
			
		})
	})
	

})

</script>
<style type="text/css">
.image {
	margin: 0 auto;
}

.image nav ul li {
	display: inline-block;
	padding: 10px;
	color: white;
	font-size: larger;
	font-weight: bold;
	box-shadow: rgba(0, 0, 0, 0.5);
}

.right {
	float: right;
}

.sidebar {
	position: fixed;
	width: 200px;
	height: 100vh;
	background: #0881a3;
	margin: 0px;
}

.sidebar ul {
	list-style: none;
	padding: 15px;
	padding-top: 5px;
}

.sidebar ul li {
	padding: 15px;
	border-bottom: 1px solid;
	border-bottom-color: #fcf9f9;
	font-size: larger;
	font-weight: bold;
}

.sidebar ul li a {
	text-decoration: none;
	color: #fffdfb;
}



.main {
	position: absolute;
	width: auto;
	margin-top: 30px;
	left:-250px;
	
}

.sidebar ul li:hover {
	background-color: rgba(255, 255, 255, 0.2);
}
</style>
</head>
<body class="image">
	
	<div class="row ">
	<div class="col-6">
	<div class="sidebar ">


		<ul>
			<c:url var="Home" value="LogIn">
				<c:param name="email" value="${userid.email}"></c:param>
				<c:param name="password" value="${userid.password}"></c:param>
			</c:url>
			<li><a  
				href="${Home}">Home </a></li>
			<li>
			<input type="hidden" name="userid" value="${userid.id}"/>
			<c:url var="survey" value="surveypag">
				<c:param name="userid" value="${userid.id}"></c:param>				
			</c:url>
			<a id="${survey}" href="#">Survey </a></li>
			
				<c:url var="profileupdate" value="profile">
					<c:param name="toupdate" value="${userid.id}"></c:param>
				</c:url>
			
			<li>
			<a id="${profileupdate}" href="#">Profile</a>
			</li>
			<li><a id="init"
				href="${pageContext.request.contextPath}/user/Log">Log Out </a></li>
		</ul>
	</div>
	</div>
	<div class="col-6 ">
	 <div class="main"></div> 
	</div>
	</div>

</body>
</html>