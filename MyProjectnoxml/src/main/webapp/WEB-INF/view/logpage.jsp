<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/formstyle.css" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script type="text/javascript">

/*$(document).ready(function(){
	
	$('#button').click(function(event){
	
		event.preventDefault();
		var user={
			email:$('#email').val(),
			password:$('#password').val()
		};
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/user/LogIn",
			data: user,
			success : function(result) {
					
					$('.bd').load(result)

			},
			error : function(e) {
				alert("Error Login")
				
			}
			
		})
		
		
	})
	
	
})*/
	
</script>

<style type="text/css">
</style>
<title>LogIn Form</title>

</head>
<body class="bd" >
	<!--<form:form action="LogIn" class="d">

		<div class="form-group">
			E-mail id : <input type="email" name="email" class="form-control" />
			
		</div>

		<div class="form-group">
			Password : <input type="password" name="password" class="form-control" />
		</div>


		<div class="form-group">
			<input type="submit" class="btn btn-outline-primary" value="Log In">
		</div>
	</form:form>-->

	 <div class="container" style="background-color: white;">

		<label style="font-family: 'Poppins-Regular', sans-serif;"
			id="label-0">ACCOUNT LOGIN</label> <img alt="Survey tour"
			src="${pageContext.request.contextPath}/resources/image/onlinelogomaker-111119-1040-8054.png"
			id="logo">
		<div class="row">
			<div class="col-6">
				<img alt=""
					src="${pageContext.request.contextPath}/resources/image/brooke-cagle-g1Kr4Ozfoac-unsplash%20(2).jpg"
					id="image">
			</div>

			<div class="col-6 " style="background-color: #fcfcfc;">
				<form:form action="LogIn" class="d">					
					<div class="form-group">
						<input type="text" name="email" class="form-control" id="email"
							placeholder="Email" />
					</div>

					<div class="form-group">
						<input type="password" name="password" class="form-control"
							id="password" placeholder="Password" />
					</div>


					<div class="form-group">
						<input type="submit" class="btn btn-success" value="SIGN IN"
							id="button">
					
						<a href="init" id="back" >BACK</a>
					</div>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<label id="label-1">Create an account?<br /> <a href="form"
					id="sign">Sign Up</a></label>
			</div>

		</div>

	</div> 

	<!-- <div>
		
		<form:form action="LogIn" id="newform" >
		
			<div id="top-color" style="width: 300px;height: 100px;position: absolute;left: -1px;top:-1px;border-top-left-radius: 10px;border-top-right-radius: 10px;">
				<img alt="" src="${pageContext.request.contextPath}/resources/image/boy.png" style="width:30%;position: absolute;top: 40px;left: 105px;">
			</div>
			<label style="font-family: 'Poppins-Regular', sans-serif;position: absolute;top: 150px;left:65px;font-size: 20px;color: #555555;">ACCOUNT LOGIN</label>
			<div class="form-group">
				<input type="email" name="email" class="form-control" autocomplete="off"
					placeholder="Email-id" id="newemail"/>
					<span><img src="${pageContext.request.contextPath}/resources/image/user.png" style="width: 20px;position: absolute;;top:210px;left:35px;"></span>
			</div>
			<div>
				<c:if test="${param.logout!=null}">
					<i>You have been logged out.</i>
				</c:if>
			</div>
			<div class="form-group">
				<input type="password" name="password" class="form-control" autocomplete="off"
					 placeholder="Password" id="newpassword" />
					 <span><img src="${pageContext.request.contextPath}/resources/image/lock.png" style="width: 20px;position: absolute;top:260px;left:35px;"></span>
			</div>


			<div class="form-group">
				<input type="submit" class="btn btn-success" value="SIGN IN" id="newbutton"
					> <br/>
				<a href="init" id="newback" style="font-family: 'Poppins-Regular', sans-serif;">HOME</a>
			</div>
		</form:form>
	</div>
 -->

</body>

</html>