<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<form:form action="${pageContext.request.contextPath}/authenticate" method="POST">
		<c:if test="${param.error!=null}">
			<i>Invalid username or password</i>
		</c:if>
		UserName <input type="text" name="username" class="form-control" />
		<br/>
		<br/>
		Password <input type="password" name="password"> 
		<br/>
		<br/>
		<input type="submit" value="Submit"/> 
	</form:form>
	
	
</body>
</html>