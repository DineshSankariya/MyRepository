<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<input type="hidden" name="userid" value="${userid}">
		
		<form:hidden path="id"/>
		<c:url var="temp" value="LogIn">
			<c:param name="email" value="${user.email}"></c:param>
			<c:param name="password" value="${user.password}"></c:param>
		</c:url>
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
				<a href="${temp}" class="cen">Home
					</a>
			</div>
		</div>
	</form:form>

	
</body>

</html>