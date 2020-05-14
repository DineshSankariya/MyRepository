<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstra.css" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/additional-methods.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/additional-methods.min.js"></script>

<script src="https://smtpjs.com/v3/smtp.js">
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/javascript/bootstra.js">
</script>

<style type="text/css">
.b {
	background-color: #eeeeee;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	height: 100vh;
}

#form {
	background-color: #fdfdfd;
	position: fixed;
}

body{
	height: 100%;
	width: 100%;
}
</style>


<title>User Registration Form</title>

</head>
<!-- <body class="b">
	<form:form action="confirm"  modelAttribute="user"
		cssClass="d" cssStyle="border-radius:15%;" id="form">
		<div class="row">
			<div class="col">
				<div class="form-group fo">

					FirstName :
					<form:input path="fname" class="form-control" id="fname" />
					
				</div>
			</div>

			<div class="col">

				<div class="form-group fo">
					LastName :
					<form:input path="lname" class="form-control" id="lname" />
					
				</div>
			</div>

		</div>

		<div class="form-group fo">
			E-mail :
			<form:input path="email" class="form-control" id="email" />
			
		</div>

		<div class="form-group fo">
			Mobile :
			<form:input path="mob_num" class="form-control" id="phone"/>
			<label id="errorphone"></label>
			
		</div>

		<div class="form-group fo">
			Password :
			<form:password path="password" class="form-control" id="password" />
			
		</div>

		<div class="form-group" id="bt">
			<input type="submit" class="btn btn-outline-light" id="btfon"
				value="Sign Up">
		</div>
		<div class="main"></div>
	</form:form>


</body> -->

<body class="maincontent">



	<div style="background-color: #006fab; height: 200px; width: 100%;">
		<img alt=""
			src="${pageContext.request.contextPath}/resources/image/onlinelogomaker-102719-2219-4110.png"
			style="padding-top: 30px; margin-left: 50px;">

	</div>
	
	
		

	
	<form:form   modelAttribute="user" cssClass="d"
		 id="form" novalidate="novalidate">
		 <label>Please Sign Up</label>
		<div class="row">
			<div class="col">
				<div class="form-group fo">

					
					<form:input path="fname" class="form-control" id="fname" placeholder="First Name" required="required" autocomplete="on"/>
					

				</div>
			</div>

			<div class="col">

				<div class="form-group fo">
					
					<form:input path="lname" class="form-control" id="lname" placeholder="Last Name" required="required" autocomplete="on"/>
					

				</div>
			</div>

		</div>

		<div class="form-group fo">
			 
			<form:input path="email" class="form-control" id="email" placeholder="Email ID" required="required" autocomplete="on"/>
			

		</div>

		<div class="form-group fo">
			<form:input path="mob_num" class="form-control" id="phone" placeholder="Mobile Number" autocomplete="on"/>	
			<!-- <form:password path="password" class="form-control" id="password" placeholder="Password" />-->	
		</div>
		<div class="form-group fo">
	
			<form:password path="password" class="form-control" id="password" placeholder="Password" autocomplete="off"/>	
		</div>
		
		<div class="form-group" id="bt">
			<input type="submit" class="btn btn-success" id="btfon"
				value="Sign Up">
		</div>
		
	</form:form>
	<a href="init" id="footer">Home</a>
	<div style="background-color: #006fab; height: 20px; width: 100%;position:absolute; bottom: 0px;font-family: " >
		

	</div>

</body>

</html>