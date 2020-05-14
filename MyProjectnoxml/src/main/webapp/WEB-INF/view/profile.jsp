<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	$('#form').on("submit", function(e) {
		e.preventDefault();
	})
</script>
<style type="text/css">
.b {
	width: 100%;
	padding: 50px;
	margin: 0 auto;
	box-shadow:  0 25px 60px rgba(0,0,0,0.2); 
	
}

.fo {
	color: black;
}
</style>
</head>
<body>

	<!-- <form action="confirm" id="fomr"
		style="border-radius: 15%; background-color: #512c96">
		<div class="row">
			<div class="col">
				<div class="form-group fo">

					FirstName : <input class="form-control" id="fname" />


				</div>
			</div>

			<div class="col">

				<div class="form-group fo">
					LastName : <input class="form-control" id="lname" />

				</div>
			</div>

		</div>


		<div class="form-group fo">
			E-mail : <input class="form-control" id="email" />

		</div>

		<div class="form-group fo">
			Mobile : <input class="form-control" id="mobile" />

		</div>

		<div class="form-group fo">
			Password : <input type="password" class="form-control" id="password" />

		</div>

		<div class="form-group" id="bt">
			<input type="submit" class="btn btn-outline-light" id="btfon"
				value="Sign Up">
		</div>
	</form>-->
	<form:form action="confirm" modelAttribute="user" cssClass="b " cssStyle="border-radius:5px;">
		<form:hidden path="id" />
		<div class="row">
			<div class="col">
				<div class="form-group fo">

					FirstName :
					<form:input path="fname" class="form-control" id="fname" />
					<form:errors path="fname" cssClass="error" />

				</div>
			</div>

			<div class="col">

				<div class="form-group fo">
					LastName :
					<form:input path="lname" class="form-control" id="lname" />
					<form:errors path="lname" cssClass="error" />
				</div>
			</div>

		</div>


		<div class="form-group fo">
			E-mail :
			<form:input path="email" class="form-control" id="email" />
			<form:errors path="email" cssClass="error" />
		</div>

		<div class="form-group fo">
			Mobile :
			<form:input path="mob_num" class="form-control" id="mobile" />
			<form:errors path="mob_num" cssClass="error" />
		</div>

		<div class="form-group fo">
			Password :
			<form:password path="password" class="form-control" id="password" />
			<form:errors path="password" cssClass="error" />
		</div>
		<br />
		<div class="row">
			<div class="col">
				<div class="form-group fo" id="bt">
					<input type="submit" class="btn btn-outline-primary" id="btfon"
						value="Update">
				</div>
			</div>
			<div class="col">
				<div class="form-group fo" id="bt">
					<a class="btn btn-outline-primary"
						href="${pageContext.request.contextPath}/user/confirm">Back</a>
				</div>
			</div>
		</div>
	</form:form>

</body>
</html>