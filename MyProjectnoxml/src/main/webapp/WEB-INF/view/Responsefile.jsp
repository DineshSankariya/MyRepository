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
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
	
	$(document).ready(
		function(){
			
			$.ajax({
				
				url:"chart",
				success: function(result){
					google.charts.load("current", {packages:["corechart"]});
					 google.charts.setOnLoadCallback(function(){
						 console.log(result);
						 drawChart(result);
						 });
					 }
			
			});
			
			function drawChart(result){
				 var data = google.visualization.arrayToDataTable();
				 data.addColumn('String','Users');
				 data.addColumn('String','result');
				 var dataarray = [];
				 $.each(result,function(i,obj){
					 dataarray.push([obj.que,obj.ans]);
				 });
				 data.addRows(dataarray);
				 var piechart={
						 title:'Result',
						 width:400,
						 height:300
				 }
				 var chart = new google.visualization.PieChart(document.getElementById('chart'));
				 chart.draw(data, piechart);
				 
			}
			
			
		})
	
	</script>
<title>Insert title here</title>
<style></style>
</head>
<body>
	<div id="chart" ></div>
	
</body>
</html>