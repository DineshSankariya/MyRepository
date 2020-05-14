<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function add() {

		//Create an input type dynamically.
		var element = document.createElement("textarea");
		var label = document.createElement("Label");
		label.innerHTML = "c";
		var radio = document.createElement("input");
		radio.setAttribute("type", "radio");
		radio.setAttribute("checked", "checked");

		var tag = document.createElement("br");
		var tag1 = document.createElement("br");
		var tag2 = document.createElement("br");
		//Assign different attributes to the element.
		element.setAttribute("rows", "4");
		element.setAttribute("cols", "50");
		element.setAttribute("name", "Test Name");
		element.setAttribute("style", "margin:0 auto");

		// 'foobar' is the div id, where new fields are to be added
		var foo = document.getElementById("fooBar");

		//Append the element in page (in span).

		foo.appendChild(element);
		foo.appendChild(radio);
		foo.appendChild(label);
		foo.appendChild(tag);
		foo.appendChild(tag1);

	}
</script>

<title>Survey Question</title>

</head>
<body>

	<form action="surveysuccess">
		<div style="padding: 50px;">
		<input type="hidden" name="surveyid" value="${surveyid}">
		<input type="hidden" name="userid" value="${userid}">
			<c:forEach var="temp" items="${surveylink}" varStatus="loop">
				<div
					style="background-color: #fafafa; padding: 20px; font-weight: bold; font-size: medium;">
					
					<input type="hidden" name="questionid" value="${temp.qid}">
					<label>${loop.count}.</label>&nbsp;<input type="hidden" name="${temp.qid}_question" value="${temp.question}"> <label>${temp.question}</label>
					<br></br> &nbsp; <input type="radio" name="${temp.qid}_answer" value="${temp.cho1}" checked="checked"> <label>${temp.cho1}</label>
					&nbsp; <input type="radio" name="${temp.qid}_answer" value="${temp.cho2}"> <label>${temp.cho2}</label>
					&nbsp; <input type="radio" name="${temp.qid}_answer" value="${temp.cho3}"> <label>${temp.cho3}</label>
					&nbsp; <input type="radio" name="${temp.qid}_answer" value="${temp.cho4}"> <label>${temp.cho4}</label> <br></br>
				</div>
			</c:forEach>
			<br></br> <input type="submit" value="Submit" />
		</div>
	</form>

	
</body>

</html>