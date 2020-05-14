<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html>
<head>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/addquestyle.css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/javascript/jquery-migrate-1.4.1.js"></script>
<script type="text/javascript">
	/*function validate(){
	
	 var q=document.getElementById('ques').value;
	 var ch1=document.getElementById('cho1').value;
	 var ch2=document.getElementById('cho2').value;
	 var ch3=document.getElementById('cho3').value;
	 var ch4=document.getElementById('cho4').value;
	 if(q===''|| ch1===''|| ch2===''||ch3===''||ch4===''){
	 $("#btn").attr("disabled", true);
	 }
	 else{
	 $("#btn").attr("disabled", false);
	 }
	
	 }
	 */

	$(document).ready(function() {
		var users=[];
		$(".custom").click(function() {
			$.ajax({

				url : 'listcustomer.html',
				success : function(data) {
					
					$('.customer').html(data);
						
				
				}
			})
		});
	});
	 
	 
	/* $(document).ready(function() {
		$(".custom").click(function(){
			s
		}) 
	 });*/
	 
	 
</script>

<title>AddQuestion</title>
</head>
<body class="al">

	<div class="style">
		<form:form action="savequestion" modelAttribute="question">
		
			<p>Add question</p>
			 <div class="form-group">
			<input type="hidden"  name="surid" value="${surveyid}" class="form-control in" />
			
			</div>  
			
			<form:textarea cols="50" rows="8" path="question" id="ques"
				class="form-control in" />
			<form:errors path="question" cssClass="err" />
			<p>Choice1</p>
			<form:input path="cho1" id="cho1" class="form-control in" />
			<form:errors path="cho1" cssClass="err" />
			<p>Choice2</p>
			<form:input path="cho2"  id="cho2" class="form-control in" />
			<form:errors path="cho2" cssClass="err" />
			<p>Choice3</p>
			<form:input path="cho3" id="cho3" class="form-control in" />
			<form:errors path="cho3" cssClass="err" />
			<p>Choice4</p>
			<form:input path="cho4" id="cho4" class="form-control in" />
			<form:errors path="cho4" cssClass="err" />
			<br></br>
			<input type="submit" value="Add Question" class="btn btn-primary" ons/> 
		</form:form><br></br>
		<a href="${pageContext.request.contextPath}/user/admin" class="cen">
					Home</a>
	
		</div>

</body>


</html>