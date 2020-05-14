<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

<title>LogIn Form</title>

</head>
<body>

		<table>
			<tr>
				
				<th>Link</th>
				
			</tr>
		
			<c:forEach var="temp" items="${url}">
			
				<tr>
					<td>${temp }</td>
				</tr>
				
			
			</c:forEach>
		</table>

</body>

</html>