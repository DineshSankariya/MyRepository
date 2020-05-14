<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>


<title>User Registration Form</title>
<style type="text/css">

	#body{
		margin-left: 20%;
		margin-top: 10%;
	}
	
	
</style>
</head>
<body id="body" >
	
	<form action="sendsuggest" id="form">

		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Your email :</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="from" />
			</div>
		</div>
		<div class="form-group row">
			
			<div class="col-sm-6">
				<input type="hidden" class="form-control"  name="receivers"  value="dinesh.dina47@gmail.com" />
			</div>
		</div>
		
		<br />
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Subject :</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="subject" />
			</div>
		</div>
		<br />
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Message :</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="message" />
			</div>
		</div>
		<br />
		<br />
		<div class="form-group ">
			<div class="d-flex justify-content-between">
				<input type="submit" class="btn btn-primary" value="Send" />
			</div>
		</div>

	</form>


</body>

</html>