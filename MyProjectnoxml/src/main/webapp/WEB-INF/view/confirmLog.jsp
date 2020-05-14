<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/formstyle.css" />

<style type="text/css">
.mail {
	margin: 0 auto;
}
</style>
<title>LogIn Form</title>
<script type="text/javascript">
	
	/*function dynamicpage(data) {
			var xhr = new XMLHttpRequest();
			if(data.id==='profile'){
				var user=document.getElementById('useridval');
			
				xhr.open('GET', '${pageContext.request.contextPath}/users/'+data.id+'/{'+Number(user.value)+'}', true);
				xhr.onload = function() {
					if (this.status == 200) {
						document.getElementById('content').innerHTML=xhr.responseText;
					}
				}
				xhr.send();
			}
			else {
				xhr.open('GET', '${pageContext.request.contextPath}/users/'+data.id, true);

				xhr.onload = function() {
					if (this.status == 200) {
						document.getElementById('content').innerHTML=xhr.responseText;
					}
				}
				xhr.send();
			}
			
	}*/
</script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-dark sticky-top">

		<c:forEach var="temp" items="${userid}">
			<c:url var="profile" value="/users/profile">
				<c:param name="profileid" value="${temp.id}"></c:param>
			</c:url>
		</c:forEach>
		<button class=" navbar-toggler collapsed" type="button"
			data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class=" navbar-toggler-icon"></span>
		</button>
		<!-- 
			<form class="form-inline my-2 my-lg-0" style="padding-left:50px;">
				<input class="form-control mr-sm-2" type="search" value=""
					placeholder="City Name" aria-label="Search" id="weathinput">
				<button class="btn btn-outline-success my-2 my-sm-0" id="weathbtn">Get Weather</button>
			</form>
			 -->
		<div class="collapse navbar-collapse " id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto dis" id="menu">
				<li class="nav-item active"><a id="surveyforuser"
					class="btn btn-outline-light"
					href="${pageContext.request.contextPath}/user/init"
					style="font-weight: bold; font-size: large;">Log Out </a></li> 
				<li class="nav-item" style="padding-left: 15px;"><a
					id="profile" class="btn btn-outline-light "
					style="font-weight: bold; font-size: large;" href="${profile}">Profile
				</a></li>
			</ul>

		</div>
	</nav>

	<table>
		<tr>
			<th>Sr.No</th>
			<th>Survey Name</th>
			<th>Action</th>
		</tr>
		<c:forEach var="temp" items="${surveylink}" varStatus="loop">
			<c:url var="surveys" value="/user/surveypage">
				<c:param name="surveylist" value="${temp.id}"></c:param>
			</c:url>
			<tr>
				<td>${loop.count}</td>
				<td>${temp.name}</td>
				<td><a href="${surveys}" class="badge badge-success">Go</a></td>

			</tr>
		</c:forEach>
	</table>

	<!-- <div class="col-4">
			<a href="#" id="profile" onclick="dynamicpage(this)">Profile</a>&nbsp;
			 <a href="#" id="surveyforuser" onclick="dynamicpage(this)">Survey</a>
		</div>-->

	<div id="content"></div>



</body>

</html>