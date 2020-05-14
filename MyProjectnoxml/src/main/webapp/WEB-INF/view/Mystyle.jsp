.<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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


<title>Suvery Tour</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico">


<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/mystyle.css" />

<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">



</head>
<body>
	<section id="nav" >

		<nav class="navbar navbar-expand-lg navbar-light sticky-top" >
			<a class="text-dark" href="#" id="display"></a>
			<button class=" navbar-toggler collapsed" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class=" navbar-toggler-icon"></span>
			</button>
			<!-- 
			<form class="form-inline my-2 my-lg-0" style="padding-left:50px;">
				<input class="form-control mr-sm-2" type="search" value=""
					placeholder="City Name" aria-label="Search" id="weathinput">
				<button class="btn btn-outline-success my-2 my-sm-0" id="weathbtn">Get Weather</button>
			</form>
			 -->
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto dis" id="menu" >
					<li class="nav-item active" ><a style="font-weight: bold; font-size: large;"
						class="btn btn-outline-secondary" href="#" data-target="#pop"
						data-toggle="modal">Log In</a></li>
					<li class="nav-item" ><a
						class="btn btn-outline-secondary "
						style="font-weight: bold; font-size: large;" href="form">Sign
							Up</a></li>
				</ul>

			</div>
		</nav>
		</section>
		<section id="sec">
			<div class="container">
				<div class="row">
					<div class="al col-lg-6 col-md-6 col-sm-6 "
						style="padding-right: 20px;">
						<br />
						<h1 class=" mainsec">Learning the world in online surveys
							because opinions matter</h1>
						<p class="lead">Get the answers you need</p>
						<!-- <hr id="rule" color="white" size=""></hr> -->
						<br /> <a class="btn btn-outline-primary" href="form">Sign Up
							Free</a>

					</div>
					<div class=" col-lg-6 col-md-6 col-sm-6 ">
						<br /> <br /> <br /> <img alt="" id="imgweb"
							style="padding-left: 50px;"
							src="${pageContext.request.contextPath}/resources/image/adult-business-meeting-business-people-1438072.png">
					</div>

				</div>


			</div>


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
	</section>
	<section>
		<div id="testimonal" class="carousel slide " data-ride="carousel"
			data-interval="false">
			<ol class="carousel-indicators">
				<li data-target="#testimonal" data-slide-to="0" class="active"></li>
				<li data-target="#testimonal" data-slide-to="1"></li>

			</ol>

			<div class="carousel-inner  tes  ">
				<div class="row">

					<div class="carousel-item active">
						<div class="col-lg-12 col-md-12 col-sm-12">

							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/image/administrator.png"
								id="im">

							<div id="car">
								<h1 class="fon ">For you</h1>
								<p class="pa text-light">Get a platform that can grow and
									change along with your survey needs over time. Browse our plans
									to learn more about specific features.</p>
							</div>
						</div>
					</div>
					<div class="carousel-item ">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<img
								src="${pageContext.request.contextPath}/resources/image/cityscape.png"
								id="im">
							<div id="car">
								<h1 class="fon">For your organization</h1>
								<p class="pa text-light">Manage your company's data with
									advanced security and control, so you can enable your teams to
									share and collaborate safely.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<a class="carousel-control-prev " data-target="#testimonal"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" data-target="#testimonal"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only ">Next</span>
			</a>
		</div>
	</section> -->
	<div class="modal" id="pop" tabindex="-1" data-keyboard="false">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Log In</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="LogIn">

						<div class="form-group">
							E-mail id : <input type="email" id="login-email" name="email"
								class="form-control" />
						</div>

						<div class="form-group">
							Password : <input type="password" id="login-password"
								name="password" class="form-control" />
						</div>


						<div id="fobtn" class="form-group">
							<input type="submit" class="btn btn-primary" value="Log In">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</form:form>
				</div>

			</div>
		</div>
	</div>
	<!-- <div class="modal" id="weatherinput" tabindex="-1"
		data-keyboard="false">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Get Weather</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<div class="form-group">
						<label>City Name</label>
					</div>

					<div class="form-group">
						<input type="text" id="weathinput" name="weath"
							class="form-control" />
					</div>


					<div id="btn" class="form-group">
						<input type="submit" class="btn btn-primary"  id="weath-butn" ="Submit">
					</div>

				</div>

			</div>
		</div>
	</div> -->
	<hr id="rule-1">
	<footer class="text-dark">

		&copy; 2020 <a class="copylink text-dark" href="init">surveytour.com</a>

	</footer>
	<hr id="rule-2">
</body>