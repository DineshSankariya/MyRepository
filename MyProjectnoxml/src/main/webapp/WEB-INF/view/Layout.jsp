<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset=utf-8>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/Layout.css" />
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

<title>Customer Form</title>

</head>
<body >
	<section id="bo" style="background-image:url('${pageContext.request.contextPath}/resources/image/daylight-forest-grass-247600.jpg');  " >
		<nav class="navbar navbar-expand-sm navbar-light  ">
			<img alt="survey" id="d" class="navbar-brand"
				src="${pageContext.request.contextPath}/resources/image/completed-task.png">
			<a class="navbar-brand text-dark nav-item "  href="" id="d">
				Survey</a>
			<button class="navbar-toggler navbar-light  " data-toggle="collapse"
				data-target="#menu">

				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="menu">

				<ul class="navbar-nav ml-auto ">
					<li class="nav-item  "><a href="Log"
						class="nav-link text-dark" data-target="#pop" data-toggle="modal">Log In</a></li>
					<li class="nav-item "><a href="form"
						class="nav-link text-dark">Sign Up</a></li>
				</ul>
			</div>
		</nav>
		<div class="col-lg">
			<div class="container pad" id="al">
			
				<h1  class="fo text-light"  >Welcome to Online Survey App</h1>
				<p class=" text-light ">Get the answers you need</p>
			
			</div>
		</div>
	</section>
	<!-- <div class="row">
		<div class="col">
			<p class="text-lg">A survey is not just an online tool that helps
				you jot down a list of questions. It's a great way to gain insights
				into what your audience thinks, feels, and most important-ly what it
				wants. Below we'll go through some tips for creating a free survey
				and using our software.</p>

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

	 -->
	 
	 <div class="modal fade" id="pop" tabindex="-1" role="dialog"
		data-backdrop="false" data-focus="true" data-keyboard="false">
		<div class="modal-dialog " role="document">
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
							E-mail id :
							<input type="email" name="email" class="form-control" />
						</div>

						<div class="form-group">
							Password :
							<input type="password" name="password" class="form-control" />
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
</body>

</html>