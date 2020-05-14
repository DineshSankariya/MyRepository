<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset=utf-8>

<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/mystyleone.css" />
<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Ubuntu&display=swap"
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

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />


<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/formstyle.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/javascript/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/mycheck.js"></script>

<title>Suvery Tour</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/image/survey.ico">
</head>
<body id="b" onload="clock()">

	<nav class="navbar navbar-expand-sm navbar-light bg-secondary">

		<div>
			<img alt="survey" id="d" class="navbar-brand"
				src="${pageContext.request.contextPath}/resources/image/completed-task.png">
			<a class="navbar-brand text-light nav-item  " href="" id="d">
				Survey</a>
		</div>
		<button class="navbar-toggler navbar-light  " data-toggle="collapse"
			data-target="#menu">

			<span class="navbar-toggler-icon"></span>
		</button>
		
		
		<div class="collapse navbar-collapse" id="menu">

			<ul class="navbar-nav ml-auto dis">
				
				<li class="nav-item "><a class="nav-link text-light"
					href="" data-target="#pop" id="log" data-toggle="modal">Log In</a></li>
				<li class="nav-item ml-auto"><a href="form"
					class="nav-link text-light">Sign Up</a></li>
			</ul>
		</div>
	</nav>

	<div class="jumbotron jumbotron-fluid" id="al">
		<h1>Welcome to Online Survey App</h1>
		<p>Get the answers you need</p>
		<hr id="rule"></hr>
		<a class="btn btn-primary" id="t" href="form">Sign Up Free</a>
		<div>		
			<h1 class=" text-dark " id="clock" style="padding-top: 50px;font-size: xx-large;"></h1>			
			<h4 id="display"></h4>
		</div>
	</div>

	<!-- <section class="cen">

		<img
			src="${pageContext.request.contextPath}/resources/image/call-center-girl.png"
			id="im">
		<h1>For you</h1>
		<p>Get a platform that can grow and change along with your survey
			needs over time. Browse our plans to learn more about specific
			features.</p>

	</section>
	 -->

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




	<!-- 	<div class="row">
		<div class="col p">
			<p class="text-lg">A survey is not just an online tool that helps
				you jot down a list of questions. It's a great way to gain insights
				into what your audience thinks, feels, and most important-ly what it
				wants. Below we'll go through some tips for creating a free survey
				and using our software.</p>

		</div>

		<div class="col p">
			<p class="text-lg">A survey is not just an online tool that helps
				you jot down a list of questions. It's a great way to gain insights
				into what your audience thinks, feels, and most important-ly what it
				wants. Below we'll go through some tips for creating a free survey
				and using our software.</p>

		</div> -->

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

	<footer class="bg-secondary"
		style="height:50px; text-align: center; padding:15px;">
		<p style="font-weight: lighter;">
			&copy; 2020 <a class="copylink" href="init">surveytour.com</a>
		</p>
	</footer>



</body>

</html>