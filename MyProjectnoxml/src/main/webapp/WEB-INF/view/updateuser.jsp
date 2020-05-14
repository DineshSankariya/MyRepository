<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/updateuser.css" />


<title>User Update Form</title>

</head>
<body class="b">

	<form:form action="confirmupdate" modelAttribute="userupdate"
		cssClass="form-horizontal for bg-light">
		<form:hidden path="id" />
		<div class="row">
			<div class="col">
				<div class="form-group fo">

					FirstName :
					<form:input path="fname" class="form-control" />
					<form:errors path="fname" cssClass="error" />

				</div>
			</div>

			<div class="col">

				<div class="form-group fo">
					LastName :
					<form:input path="lname" class="form-control" />
					<form:errors path="lname" cssClass="error" />
				</div>
			</div>

		</div>


		<div class="form-group fo">
			E-mail :
			<form:input path="email" class="form-control" />
			<form:errors path="email" cssClass="error" />
		</div>

		<div class="form-group fo">
			
			Mobile No:
			<form:input path="mob_num" class="form-control " />
			<form:errors path="mob_num" cssClass="error" />
		</div>

		<div class="form-group fo">
			Password :
			<form:password path="password" class="form-control" />
			<form:errors path="password" cssClass="error" />
		</div>

		<div class="form-group" id="bt">
			<input type="submit" onclick="display()"
				class="btn btn-outline-primary" id="btfon" value="Update">
		</div>
	
		<div>
		<a href="${pageContext.request.contextPath}/user/listuser" class="link">Home
		</a>
	</div>
	</form:form>

	

</body>

</html>