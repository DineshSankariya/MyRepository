.<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap"
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
	src="${pageContext.request.contextPath}/resources/javascript/mystyle.js"></script>

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico" />
<title>Suvery Tour</title>


<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/mystyle.css" />

<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">

</head>
<body >

  <section>

		<nav class="navbar navbar-expand-lg navbar-light  sticky-top">
			<a class="text-dark" href="#" id="display"></a>
			<button class=" navbar-toggler collapsed" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class=" navbar-toggler-icon"></span>
			</button>
			
			<!-- <form class="form-inline my-2 my-lg-0" style="padding-left:50px;">
				<input class="form-control mr-sm-2" type="search" value=""
					placeholder="City Name" aria-label="Search" id="weathinput">
				<button class="btn btn-outline-success my-2 my-sm-0" id="weathbtn">Get Weather</button>
			</form>-->
			
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto dis" id="menu">
					<li class="nav-item active"><a
						style="font-weight: bold; font-size: large;" href="Log" id="login">Log In</a></li>
					<li class="nav-item"><a
						style="font-weight: bold; font-size: large;" href="form" id="signup">Sign
							Up</a></li>
					
				</ul>


			</div>
		</nav>
		

		<!--  <div  >
			<img alt="" id="imagebg"
				src="${pageContext.request.contextPath}/resources/image/people-sitting-on-chairs-beside-their-desks-in-an-office-1170412.jpg">
		</div>  -->
		 <h1 class="title" style=" font-family: ' Montserrat', sans-serif;font-weight: bold;">Learning the world in online surveys</h1>
		<br />
		<p class="title-1 text-muted">because opinions matter</p>
		<a class=" butnsign  "
			style="font-weight: bold; font-size: large; font-family: ' Montserrat', sans-serif;"
			href="form">JOIN US</a>
			<img alt="Lady with Laptop" src="${pageContext.request.contextPath}/resources/image/mysurveylogo%201.png" id="image1">
			<img alt="eclipse3" src="${pageContext.request.contextPath}/resources/image/Ellipse%201%20(1).png" id="image2">
			<img alt="eclipse3" src="${pageContext.request.contextPath}/resources/image/Ellipse%202.png" id="image3">
			<img alt="eclipse3" src="${pageContext.request.contextPath}/resources/image/Ellipse%203%20(2).png" id="image4">
	</section> 

 <!-- <section>
		<div class="container" id="cont">
			<div class="row">
				<div class="col-lg-4 col-md-3 col-sm-12 ">
					<img class="img"
						src="${pageContext.request.contextPath}/resources/image/tick.png"
						alt="Easy">
					<h4 class="sp">Easy to use</h4>
					<p class="blo">So easy to use for naive user.</p>

				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<img class="img"
						src="${pageContext.request.contextPath}/resources/image/clock-circular-outline.png"
						alt="Easy">
					<h4 class="sp">24/7 Support</h4>
					<p class="blo">We provide 24/7 support for our clients</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<img class="img"
						src="${pageContext.request.contextPath}/resources/image/data.png"
						alt="Easy">
					<h4 class="sp">Secured Data</h4>
					<p class="blo">Guaranteed to secure data</p>
				</div>
			</div>

		</div>
	</section>  -->
	<!-- <section>
		<div class="testimonal">
			<img alt="Dinesh" id="myimage"
				src="${pageContext.request.contextPath}/resources/image/Myphotoresized%201.png">
			<div >
				<h2 class="testimonal-title"
					style="font-family: 'Poppins', sans-serif; font-weight: bold;font-size: 2rem;">Founder
					of Survey Tour</h2>
					<p class="blockq"><span class="doubleq">&#8220;</span>I am spring boot developer and<br/> my interested area in web developer.<span class="doubleq">&#8220;</span> </p>
			</div>
		</div>
	</section> -->
	<!-- <section id="container-1">
		<div class="row">
			<div class="col-6" id="test-1">
				<img alt="Dinesh" id="myimage"
				src="${pageContext.request.contextPath}/resources/image/Myphotoresized%201.png">
			</div>
			<div class="col-6">
				
			</div>
		</div>
	</section>
 -->
	

	
</body>
</html>
