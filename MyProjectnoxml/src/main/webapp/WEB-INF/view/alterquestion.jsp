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

<title>Survey Q&A Management</title>

</head>
<body >
<div style="padding: 50px;">

	<c:forEach var="temp" items="${surveylink}" varStatus="loop">
		<div style="background-color: #fafafa;padding: 20px; font-weight: bold; font-size: medium;">
		<label>${loop.count}.</label>&nbsp;
		<label>${temp.question}</label>
		<br></br>
		&nbsp;
		<input type="radio" >
		<label>${temp.cho1}</label>
		&nbsp;
		<input type="radio">
		<label>${temp.cho2}</label>
		&nbsp;
		<input type="radio">
		<label>${temp.cho3}</label>
		&nbsp;
		<input type="radio">
		<label>${temp.cho4}</label>
		<br></br>
		<c:url var="deleteq" value="/user/deletequestion">
		<c:param name="deleteqlink" value="${temp.qid}"></c:param>
		</c:url>
		<c:url var="updateq" value="/user/updatequestion">
		<c:param name="updateqlink" value="${temp.qid}"></c:param>
		</c:url>
		<div class="form-group">
		&nbsp;&nbsp;&nbsp;<a href="${updateq}" class="btn btn-success btn-sm">Update</a>
		<a href="${deleteq}" class="btn btn-danger btn-sm" onclick="if(!confirm('Are you sure you want to delete this question'))return false">Delete</a>
		</div>
		</div>
	</c:forEach>
	<a href="${pageContext.request.contextPath}/user/admin" class="cen">Home
					</a>
</div>	
</body>

</html>