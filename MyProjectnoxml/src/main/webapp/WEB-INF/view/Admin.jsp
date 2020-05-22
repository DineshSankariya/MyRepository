<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.springframework.orm.hibernate5.LocalSessionFactoryBean"%>
<%@page import="com.Dinesh.Config.Myconfig"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.Dinesh.DataBaseEntity.SurveyTable"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
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
	<input type="hidden" name="email" value="${userid.email}"/>
		<input type="hidden" name="password" value="${userid.password}"/>
		<div class="form-group">
			<c:url var="createsurvey" value="/user/createsurvey">
				
				<c:param name="userid" value="${userid.id}"></c:param>
				
			</c:url>
			<c:url var="list" value="/user/listuser">
				
				<c:param name="userid" value="${userid.id}"></c:param>
				
			</c:url>
			<a href="${createsurvey}" style="text-decoration: none;"> <img
				alt="Create Survey"
				src="${pageContext.request.contextPath}/resources/image/icons8-add-48.png"
				style="width: 30px;">
			</a> <label class="fo">Create Survey</label>
		</div>

		<div class="form-group">

			<a style="text-decoration: none;" href="${list}" id="list"> <img
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
					<c:param name="userid" value="${userid.id}"></c:param>
				</c:url>
				<c:url var="delete" value="/user/deletesurvey">
					<c:param name="deletelink" value="${temp.id}"></c:param>
					<c:param name="userid" value="${userid.id}"></c:param>
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
					<c:param name="userid" value="${userid.id}"></c:param>
				</c:url>
				
				<c:url var="result" value="/user/result">
					<c:param name="surveyid" value="${temp.id}"></c:param>
				</c:url>
				<c:url var="tosend" value="/user/sendsurvey">
					<c:param name="surveyid" value="${temp.id}"></c:param>
					<c:param name="userid" value="${userid.id}"></c:param>
				</c:url>

				<tr>
					<td>${loop.count}</td>
					<td>${temp.name}</td>
					<td><a href="${update}" class="badge badge-primary"
						id="updatesurvey">Update</a> | <a href="${delete}"
						class="badge badge-danger"
						onclick="if(!confirm('Are you sure you want to delete #${temp.name}'))return false">Delete</a>
						| <a href="${addquestion}" class="badge badge-primary">AddQuestion
					</a> |
					<c:set var="user" value="${userid.id}"></c:set>
					<% 
						
						int userid=(int)pageContext.getAttribute("user");
						SurveyTable survey=(SurveyTable)pageContext.getAttribute("temp");
						boolean linkset=true;
						Connection con=null;
						Statement st=null;
						ResultSet rs=null;
						try{
							//System.out.println("start");
							String url="jdbc:mysql://localhost:3306/survey";
							String username="survey";
							String password="Dinesh_@123";
							Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
							//con=DriverManager.getConnection(url, username, password);
							con=DriverManager.getConnection(url,username,password);
							//System.out.println("start con");
							st=con.createStatement();
							//System.out.println("start con 1");
							st.execute("use survey");	
							//System.out.println("start con 2");
							st.execute("select status from result where uid='"+userid+"'AND sid='"+survey.getId()+"' ");
							//System.out.println("start con 4");
							rs=st.getResultSet();
							//System.out.println("start con 5");
							while(rs.next()){
								//System.out.println("start con 6");
								if(rs.getBoolean("status")){
									//System.out.println("start con 7");
									linkset=false;								
								}
							}
							request.setAttribute("status1", linkset);
							//System.out.println(linkset);
							
						}catch(Exception e){
							//System.out.println("start con error");
							System.out.println(e.getMessage());
							
						}
					
					
					if(linkset){%> <a href="${Gosurvey}" class="badge badge-success"> Go</a>
					<%}else{
					%><a href="#" class="badge badge-danger disable"> Go</a><%} %> | <a
						href="${alterq}" class="badge badge-info"> Alter Question</a> | <a href="${tosend}" class="badge badge-primary" >Send</a> |
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