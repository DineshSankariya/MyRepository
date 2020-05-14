<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!Doctype html>
<html>
<head>
<link  rel="stylesheet" style="text/css" href="${pageContext.request.contextPath}/resources/css/myprojectstyle.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/javascript/myjavascript.js"></script>
<title>
	Welcome
</title>
</head>
<body background="${pageContext.request.contextPath}/resources/image/checklist-2077023_1920.jpg" class="hello" >
	
	<div class="place">
	
	<div class="place1">
		<ol type="1">
			<li>Which language said to be procedure or functional programming?</li>
		</ol>
			 
			<p> <input type="radio" name="c++" value="C++" > C++
		 	 <input type="radio" name="java" value="JAVA"> Java
		 	 <input type="radio" name="c" value="C" > C</p>
		 	 
	
	
	
	
	
		<ol type="1" start="2">
			<li>Which language doesn't support multiple inheritance?</li>
		</ol>
			<p>
			 <input type="radio" name="c++" value="C++"/> C++
		 	 <input type="radio" name="java" value="JAVA"/> Java
		 	 <input type="radio" name="c" value="C"/> C
		 	 </p>

	
	
	
	
	
	
		<ol type="1" start="3">
			<li>Which  is earlier programming language?</li>
		</ol>
		<p>
			 <input type="radio" name="c++" value="C++"/> C++
		 	 <input type="radio" name="java" value="JAVA"/> Java
		 	 <input type="radio" name="c" value="C"/> C
		 	 </p>
	
	</div>
	</div>
	<br></br>
	<br></br>
	<a href="QAone" class="but">Previous Page</a><br></br>
	<a href="${pageContext.request.contextPath}/" class="sub" onclick="dinesh()">Submit</a>
	

</body>
	

</html>