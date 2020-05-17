<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>

<html>
<head>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/admin.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>

<style type="text/css">
</style>
<title>Admin Page</title>
<script type="text/javascript">
	/*$(document).ready(function() {

		document.getElementById('list').addEventListener('click', function loadlist() {
			var xhr = new XMLHttpRequest();

			xhr.open('GET', 'listuser', true);

			xhr.onload = function() {
				if (this.status == 200) {
					$('#dynamicpage').append(xhr.responseText);
				}
			}
			xhr.send();
		});

		
	})*/

	
</script>
</head>
<body>

	<div class="cre">
	<input type="hidden" name="userid" value="${userid.id}">
		<div class="form-group">

			<a href="createsurvey" style="text-decoration: none;"> <img
				alt="Create Survey"
				src="${pageContext.request.contextPath}/resources/image/icons8-add-48.png"
				style="width: 30px;">
			</a> <label class="fo">Create Survey</label>
		</div>

		<div class="form-group">

			<a style="text-decoration: none;" href="listuser" id="list"> <img
				alt="Create Survey"
				src="${pageContext.request.contextPath}/resources/image/icons8-add-48.png"
				style="width: 30px;">
			</a> <label class="fo">List Users</label>

		</div>
		<div>
			<a href="${pageContext.request.contextPath}/users/mailform">
				<img
				alt="Create Survey"
				src="${pageContext.request.contextPath}/resources/image/icons8-composing-mail-80.png"
				style="width: 30px;">
			</a><label class="fo">Send Mail</label>
		</div>

		<table >

			<tr>
				<th>Sr.No</th>
				<th>Survey Name</th>
				<th>Action</th>
			</tr>
			<c:forEach var="temp" items="${Surveys}" varStatus="loop">
				<c:url var="update" value="/user/surveyupdate">
					<c:param name="link" value="${temp.id}"></c:param>
				</c:url>
				<c:url var="delete" value="/user/deletesurvey">
					<c:param name="deletelink" value="${temp.id}"></c:param>
				</c:url>
				<c:url var="addquestion" value="/user/addqueform">
					<c:param name="qlink" value="${temp.id}"></c:param>
				</c:url>
				<c:url var="Gosurvey" value="/user/surveypage">
					<c:param name="userid" value="${userid.id}"></c:param>
					<c:param name="surveylist" value="${temp.id}"></c:param>
				</c:url>
				<c:url var="alterq" value="/user/alterquestion">
					<c:param name="alterquestion" value="${temp.id}"></c:param>
				</c:url>
				
				<c:url var="result" value="/user/result">
					<c:param name="surveyid" value="${temp.id}"></c:param>
				</c:url>

				<tr>
					<td>${loop.count}</td>
					<td>${temp.name}</td>
					<td><a href="${update}" class="badge badge-primary"
						id="updatesurvey">Update</a> | <a href="${delete}"
						class="badge badge-danger"
						onclick="if(!confirm('Are you sure you want to delete #${temp.name}'))return false">Delete</a>
						| <a href="${addquestion}" class="badge badge-primary">AddQuestion
					</a> | <a href="${Gosurvey}" class="badge badge-success"> Go</a> | <a
						href="${alterq}" class="badge badge-info"> Alter Question</a>
						<a href="${result}" class="badge badge-success"> Result</a></td>
				</tr>

			</c:forEach>


		</table>

	</div>
	<div style="text-align: center;padding-top: 30px;">
		<a href="${pageContext.request.contextPath}/user/Log?logout">Log Out</a>
	</div>
	<div id="dynamicpage"></div>

</body>

</html>