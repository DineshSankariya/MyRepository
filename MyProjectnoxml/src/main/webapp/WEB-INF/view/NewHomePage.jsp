.<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	src="${pageContext.request.contextPath}/resources/javascript/NewHomePage.js"></script>

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico" />
<title>Suvery Tour</title>


<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/NewHomePage.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/NewHomePageClock.js"></script>


<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">

</head>
<body>
	<section class="div-1" style="background-image: linear-gradient(rgba(0,0,0 ,0.5),rgba(0,0,0 ,0.5),rgba(52,73,94 ,0.5)), url('${pageContext.request.contextPath}/resources/image/people-sitting-on-chairs-beside-their-desks-in-an-office-1170412%201%20(1).png');" >
		<nav class="navbar navbar-expand-lg navbar-light  ">
			<!-- <label class="text-light" id="display"></label> -->
			<label>
				<img alt="" src="${pageContext.request.contextPath}/resources/image/MyLogoSurveytour.png" style="width: 230px;position: absolute;top: 15px;">
			</label>
			 <label class="text-light" id="clock"></label>
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
						 href="Log" id="login" >Log
							In</a></li>
					<li class="nav-item"><a
						 href="form"
						id="signup">Sign Up</a></li>

				</ul>


			</div>
		</nav>
		<h1 class="title"
			style="font-family: 'Roboto', sans-serif; font-weight: bold;">Learning
			the world in online surveys</h1>
		<br />
		<p class="title-1 ">because opinions matter</p>
		<a class=" butnsign  "
			style="font-weight: bold;  font-family: ' Montserrat', sans-serif;"
			href="form">JOIN US</a>

	


	</section>
	<section>
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

		<div id="carouselExampleCaptions" class="carousel slide mycaro"
			style="position: absolute; bottom: -650px; width: 100%; height: 300px;">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0"
					style="background-color: white;" class="active hello"></li>
				<li data-target="#carouselExampleCaptions"
					style="background-color: white;" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions"
					style="background-color: white;" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">

					<h5 class="mycarocontent mycarotitle">First slide label</h5>
					<p class="mycarocontent">Nulla vitae elit libero, a pharetra
						augue mollis interdum.</p>

				</div>
				<div class="carousel-item">


					<h5 class="mycarocontent mycarotitle">Second slide label</h5>
					<p class="mycarocontent">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit.</p>

				</div>
				<div class="carousel-item">


					<h5 class="mycarocontent mycarotitle">Third slide label</h5>
					<p class="mycarocontent">Praesent commodo cursus magna, vel
						scelerisque nisl consectetur.</p>

				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions"
				role="button" data-slide="prev"> <span><img alt=""
					src="${pageContext.request.contextPath}/resources/image/left-arrow.png" id="left-arrow"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
				role="button" data-slide="next"> <span><img alt=""
					src="${pageContext.request.contextPath}/resources/image/right-arrow.png" id="right-arrow"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>


	</section>
	<!-- <div style="position: absolute;bottom: -900px;">
		<h3>Start Your free trial</h3>
		<a style="text-decoration: none;border: 1px solid blue;background-color: blue;color:white;padding:10px;font-weight:bold;font-size:large;border-radius: 5px;" href="form">Start trial</a>
	</div>
 -->





</body>
</html>