<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
.<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/NewHomePageStyle.js"></script>

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico" />
<title>Suvery Tour</title>


<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/NewHomePageStyle.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/NewHomePageClockStyle.js"></script>


<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section
		style="height: 60px; position: absolute; top: 0px; right: 0px; left: 0px;">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<!-- <label  id="display"></label> -->
			<label> <img alt=""
				src="${pageContext.request.contextPath}/resources/image/logo2.png"
				style="width:220px; position: absolute; top: 5px; left: 108px;">
			</label> <label id="clock"></label>
			<button class=" navbar-toggler collapsed" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class=" navbar-toggler-icon"></span>
			</button>
			<img alt="" 
				src="${pageContext.request.contextPath}/resources/image/gmail.png"
				style="width: 15px;height:11px; position: absolute; top: 33px; right: 490px;">
			<label id="mail"> surveytour2@gmail.com </label> <img alt="" 
				src="${pageContext.request.contextPath}/resources/image/call-answer.png"
				style="width: 12px;height:10px; position: absolute; top: 33px; right: 250px;">
			<label id="contact"> 8490086339 </label>
			<!--  <div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto dis" id="menu">
					<li class="nav-item active"><a
						 href="Log" id="login" >Log
							In</a></li>
					<li class="nav-item"><a
						 href="form"
						id="signup">Sign Up</a></li>

				</ul>


			</div>
			-->
		</nav>
	</section>
	<section style="position: absolute; top: 150px;">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<label id="display"></label> <label id="clock"></label>
			<button class=" navbar-toggler collapsed" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class=" navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto dis" id="menu">
					<li class="nav-item active">
						<a href="Log" id="login">Log In</a>
					</li>
					<li class="nav-item">
					<a href="form" id="signup">Sign Up</a>
					</li>
				</ul>


			</div>

		</nav>
	</section>
	<section  style="background-image:linear-gradient(rgba(0,0,0 ,0.5),rgba(0,0,0 ,0.5)), url('${pageContext.request.contextPath}/resources/image/people-sitting-on-chairs-beside-their-desks-in-an-office-1170412%201%20(1).png');" id="section-1" >
		<h3 class="title"
			style=" font-weight: bold;">Learning
			the world in online surveys</h3>
		<br />
		<p class="title-1 ">because opinions matter</p>
		<a class=" butnsign  "
			style="font-weight: bold;  font-family: ' Montserrat', sans-serif;"
			href="form">JOIN US</a>
	</section> 
	<hr id="rule"></hr>
</body>
</html>