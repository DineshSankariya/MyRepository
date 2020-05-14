<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />


<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/surveyform.css" />

<title> Survey Form </title>

</head>
<body>

	<form:form action="savesurvey" modelAttribute="createsurvey"
		cssClass="form-horizontal ">
		<form:hidden path="id"/>
		<div class=" form">

			<div class="form-group ">

				<label >Survey Name :</label>

				<form:input path="name" cssClass="form-control in" />
				<form:errors path="name" cssStyle="color:red;" />

			</div>
			
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Create" />
			</div>
			
			<div>
				<a href="${pageContext.request.contextPath}/user/admin" class="cen">Home
					</a>
			</div>
		</div>
	</form:form>

	
</body>

</html>