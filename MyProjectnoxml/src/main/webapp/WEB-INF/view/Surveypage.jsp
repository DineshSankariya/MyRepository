<%@page import="java.sql.DriverManager"%>
<%@page import="com.Dinesh.DataBaseEntity.SurveyTable"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>



table{
	
	margin: 0 auto;
	width: 700px;
	
}

tr:nth-child(odd){
	background-color:#dddddd;
}

tr:nth-child(even) {
	background-color:#ffffff;
}

th{
	padding: 10px;
	background-color:#52de97;
	height: 50px;
}

td {
	
	padding: 10px;
	
	height: 50px;
	
}

.cre{
	margin: 0 auto;
	text-align: center;	
	margin-top: 80px;
}

.fo{
	font-weight: bold;
}

.logout{
	margin-left:45%;
	padding: 30px;
}

.disable{
 pointer-events: none;
  cursor: default;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	
	$('.taken').click(function(){
		alert("you have already taken survey");
		$(this).addClass("disable");
	})
	
})
	
	
</script>
</head>
<body>
	<table >
		<tr>
			<th>Sr.No</th>
			<th>Survey Name</th>
			<th>Action</th>
		</tr>
		<c:forEach var="temp" items="${surveylink}" varStatus="loop">
			<c:url var="surveys" value="/user/surveypage">
				<c:param name="surveylist" value="${temp.id}"></c:param>
				<c:param name="userid" value="${userid}"></c:param>
			</c:url>
			<tr>
				<td>${loop.count}</td>
				<td>${temp.name}</td>
				<td>
				<%					
					//int uid=request.getParameter("userid");
					SurveyTable s=(SurveyTable)pageContext.getAttribute("temp");
					//System.out.println(s.toString()+"=================");
					int iduser=Integer.parseInt(request.getParameter("userid"));
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
						st.execute("select status from result where uid='"+iduser+"'AND sid='"+s.getId()+"' ");
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
					
					if(linkset){%>
					
						<a href="${surveys}" class="badge badge-success">Go</a>
					
					<%}else{ %>
					
						<a href="#" class="badge badge-danger taken">Go</a>
					
					<%} %>
					
				</td>
				

			</tr>
		</c:forEach>
	</table>
	
</body>
</html>