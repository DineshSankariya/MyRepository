<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
</head>
<body>
<script src="https://code.highcharts.com/highcharts.js"></script>

<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
	<div id="container"></div>
	<input type="hidden" value="${surveyid}" id="surid">
	<input type="hidden" value="${surveyname}" id="surname">
<script type="text/javascript">
	
	/*$(document).ready(
		function(){
			var id=document.getElementById("surid").value;
			console.log(id);
			$.ajax({
				type:'GET',
				url:"chart/"+id,				
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
			
			
		})*/
		
$(document).ready(function(){
			
			var id=document.getElementById("surid").value;
			var name=document.getElementById("surname").value;
			console.log(id);
			console.log(name);
		
		$.ajax({
			
			type:"GET",
			url:"result/"+id,				
			success: function(result){
					
				var series=[]
				var data=[]
				
				 
				        for (var key in result) {
				            
				               console.log(key + ': ' + result[key]);
				               var object={};
							   object.name=key.toUpperCase();
							   object.y=result[key];
							   data.push(object);
			            }
					
					/*var seriesObject={
							type:'pie',
							name: 'Result',
							data:data
							
					}*/
					
					var seriesObject={
							name:name,
							data:data,
							dataLabels: {
					            enabled: true,
					            rotation: -90,
					            color: '#FFFFFF',
					            align: 'right',
					            format: '{point.y:.1f}', // one decimal
					            y: 10, // 10 pixels down from the top
					            style: {
					                fontSize: '13px',
					                fontFamily: 'Verdana, sans-serif'
					            }
					        }
					}
					series.push(seriesObject);
					drawchart1(series); 
				 }
		
		});
	
	
	function drawchart(result){	
		Highcharts.chart('container', {
		    chart: {
		        type: 'pie',
		        options3d: {
		            enabled: true,
		            alpha: 45,
		            beta: 0
		        }
		    },
		    title: {
		        text: name
		        
		    },
		    accessibility: {
		        point: {
		            valueSuffix: '%'
		        }
		    },
		    tooltip: {
		        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		    },
		    plotOptions: {
		        pie: {
		            allowPointSelect: true,
		            cursor: 'pointer',
		            depth: 35,
		            dataLabels: {
		                enabled: true,
		                format: '{point.name}'
		            }
		        }
		    },
		    series: result
		});
	}
	
	function drawchart1(result)
	{
		
		
		Highcharts.chart('container', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: name
		    },
		    subtitle: {
		        text: 'Source: '+name
		    },
		    xAxis: {
		        type: 'category',
		        labels: {
		            rotation: -45,
		            style: {
		                fontSize: '13px',
		                fontFamily: 'Verdana, sans-serif'
		            }
		        }
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: name
		        }
		    },
		    legend: {
		        enabled: false
		    },
		    tooltip: {
		        pointFormat: name+': <b>{point.y:.1f} </b>'
		    },
		    series: result
		    
		});
		
		
		
		
	}
	
})
	
	
	</script>
	</body>
<!-- <title>Insert title here</title>
<style></style>
</head>
<body>
	<input type="hidden" value="${surveyid}" id="surid">
	<div id="container"></div>
</body> -->
</html>