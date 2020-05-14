/*$(document)
 .ready(
 function() {
 $('#weather-input').click(function() {
 var city = $('#weather-input').val();
 var key = '49fb5349be12df20288a03477bea3247';
 if (city === '') {
 return false
 } else {
 var urltoget = 'https://api.openweathermap.org/data/2.5/weather?q='
 + city
 + '&units=metric&appid='
 + key;

 $
 .ajax({
 url : urltoget,
 dataType : 'json',
 type : 'GET',
 success : function(data) {
 request = data;

 var image = "<strong style=\"padding-left:30px;font-size:large\";>Weather&emsp;&emsp;&nbsp;&nbsp; : </strong>&emsp;<div class=\"label-1\"><img id='wicon'  src=http://openweathermap.org/img/w/"
 + data.weather[0].icon
 + ".png"
 + " />,&nbsp;"
 + data.weather[0].main
 + " &nbsp;&nbsp;</div>";
 var descript = "<br/><strong style=\"padding-left:30px;font-size:large\";>Description&emsp;&nbsp;: </strong><div class=\"label-2\">"
 + "  "
 + data.weather[0].description
 + "</div>";
 var temp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Temperature&ensp;&nbsp;: </strong><div class=\"label-3\">"
 + data.main.temp
 + "&deg;C &nbsp;&nbsp;</div>";
 var maxtemp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Max-Temp&emsp;&ensp; : </strong><div class=\"label-4\">"
 + data.main.temp_min
 + "&deg;C &nbsp;&nbsp;</div>";
 var mintemp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Min-Temp&emsp;&ensp;&ensp;: </strong><div class=\"label-5\">"
 + data.main.temp_max
 + "&deg;C &nbsp;&nbsp;</div>";
 var pressure = "<br/><strong style=\"padding-left:30px;font-size:large\";>Pressure&emsp; : </strong><div class=\"label-6\">"
 + data.main.pressure
 + "&nbsp;&#13225; &nbsp;&nbsp;</div>";
 var humidity = "<br/><strong style=\"padding-left:30px;font-size:large\";>Humidity&emsp; : </strong><div class=\"label-7\">"
 + data.main.humidity
 + "&nbsp;&deg;C &nbsp;&nbsp;</div>";
 var todisplay = "<br/>&nbsp;&nbsp;<label>"
 + data.name
 + ", "
 + data.sys.country
 + "</label><br/>"
 + image
 + descript
 + temp
 + maxtemp
 + mintemp
 + pressure
 + humidity;

 $('#display').html(
 todisplay)
 /*
 * $('#display')
 * .html( "<br/>&nbsp;&nbsp;<label>" +
 * data.name + "," +
 * data.sys.country + "</label><br/>" + "<img
 * id='wicon'
 * src=http://openweathermap.org/img/w/" +
 * data.weather[0].icon +
 * ".png" + " />" +
 * data.main.temp +
 * "&deg;C
 * <br/>&nbsp;&nbsp;" +
 * data.weather[0].main + " ," +
 * data.weather[0].description )
 */
/*$('label')
 .css(
 {
 "font-size" : "40px"
 })
 $('label')
 .css(
 {
 "padding-left" : "110px",
 "margin-top" : "-25px"
 })

 $('.label-1')
 .css(
 {
 "font-weight" : "bold",
 "display" : "inline-block",
 "padding-left" : "25px",
 "padding-top" : "0px"
 })
 $('.label-2')
 .css(
 {
 "display" : "inline-block",
 "padding-left" : "25px",
 "font-weight" : "bold",
 "padding-top" : "8px"
 })
 $('.label-3')
 .css(
 {
 "display" : "inline-block",
 "padding-left" : "25px",
 "font-weight" : "bold",
 "padding-top" : "8px"
 })
 $('.label-4')
 .css(
 {
 "display" : "inline-block",
 "padding-left" : "25px",
 "font-weight" : "bold",
 "padding-top" : "8px"
 })
 $('.label-5')
 .css(
 {
 "display" : "inline-block",
 "padding-left" : "25px",
 "font-weight" : "bold",
 "padding-top" : "8px"
 })
 $('.label-6')
 .css(
 {
 "display" : "inline-block",
 "padding-left" : "25px",
 "font-weight" : "bold",
 "padding-top" : "8px"
 })
 $('.label-7')
 .css(
 {
 "display" : "inline-block",
 "padding-left" : "25px",
 "font-weight" : "bold",
 "padding-top" : "8px"
 })
 $('strong').css(
 "color",
 "#1fab89")

 },
 error : function(data) {
 $('#diplay')
 .html(
 "<p><b>"
 + data.message
 + "</b></p>")
 }

 })
 }
 });
 });*/


$(document).ready(function(){
	$('#get').click(function(){
		
		var city = $('#weather-input').val();
		var key = '49fb5349be12df20288a03477bea3247';
		if (city === '') {
			console.log("Key Pressed")
			return false
		} else {
			var urltoget = 'https://api.openweathermap.org/data/2.5/weather?q='
					+ city + '&units=metric&appid=' + key;
			console.log("Key Pressed")
			
					$.ajax({
						url : urltoget,
						dataType : 'json',
						type : 'GET',
						success : function(data) {
							request = data;

							var image = "<strong style=\"padding-left:30px;font-size:large\";>Weather&emsp;&emsp;&nbsp;&nbsp; : </strong>&emsp;<div class=\"label-1\"><img id='wicon'  src=http://openweathermap.org/img/w/"
									+ data.weather[0].icon
									+ ".png"
									+ " />,&nbsp;"
									+ data.weather[0].main + " &nbsp;&nbsp;</div>";
							var descript = "<br/><strong style=\"padding-left:30px;font-size:large\";>Description&emsp;&nbsp;: </strong><div class=\"label-2\">"
									+ "  " + data.weather[0].description + "</div>";
							var temp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Temperature&ensp;&nbsp;: </strong><div class=\"label-3\">"
									+ data.main.temp + "&deg;C &nbsp;&nbsp;</div>";
							var maxtemp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Max-Temp&emsp;&ensp; : </strong><div class=\"label-4\">"
									+ data.main.temp_min
									+ "&deg;C &nbsp;&nbsp;</div>";
							var mintemp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Min-Temp&emsp;&ensp;&ensp;: </strong><div class=\"label-5\">"
									+ data.main.temp_max
									+ "&deg;C &nbsp;&nbsp;</div>";
							var pressure = "<br/><strong style=\"padding-left:30px;font-size:large\";>Pressure&emsp;&emsp;&nbsp;&nbsp;      : </strong><div class=\"label-6\">"
									+ data.main.pressure
									+ "&nbsp;&#13225; &nbsp;&nbsp;</div>";
							var humidity = "<br/><strong style=\"padding-left:30px;font-size:large\";>Humidity&emsp;&emsp;&nbsp; : </strong><div class=\"label-7\">"
									+ data.main.humidity
									+ "&nbsp;&deg;C &nbsp;&nbsp;</div>";
							var latlong="<br/><strong style=\"padding-left:30px;font-size:large\";>Latitude&emsp;&emsp;&nbsp;&nbsp; : </strong><div class=\"label-7\">"
								+ data.coord.lat+"&nbsp;&deg; &nbsp;&nbsp;</div><br/><strong style=\"padding-left:30px;font-size:large\";>Longitude&emsp;&ensp;&nbsp; : </strong><div class=\"label-7\">"
								+data.coord.lon+ "&nbsp;&deg;&nbsp;&nbsp;</div>";
							
							var todisplay = "<br/>&nbsp;&nbsp;<label>" + data.name
									+ ", " + data.sys.country + "</label><br/>"+"<hr>"
									+ image + descript + temp + maxtemp + mintemp
									+ pressure + humidity+latlong;

							$('#display').html(todisplay)

							/*$('#display')
									.html(
											"<br/>&nbsp;&nbsp;<label>"
													+ data.name
													+ ","
													+ data.sys.country
													+ "</label><br/>"
													+ "<img id='wicon' src=http://openweathermap.org/img/w/"
													+ data.weather[0].icon + ".png"
													+ " />" + data.main.temp
													+ "&deg;C<br/>&nbsp;&nbsp;"
													+ data.weather[0].main + " ,"
													+ data.weather[0].description)*/

							$('label').css({
								"font-size" : "30px"
							})
							$('label').css({
								"padding-left" : "120px",
								"margin-top" : "-25px"
							})

							$('.label-1').css({
								"font-weight" : "bold",
								"display" : "inline-block",
								"padding-left" : "2px",
								"padding-top" : "0px"
							})
							$('.label-2').css({
								"display" : "inline-block",
								"padding-left" : "25px",
								"font-weight" : "bold",
								"padding-top" : "8px"
								
							})
							$('.label-3').css({
								"display" : "inline-block",
								"padding-left" : "25px",
								"font-weight" : "bold",
								"padding-top" : "8px"
							})
							$('.label-4').css({
								"display" : "inline-block",
								"padding-left" : "25px",
								"font-weight" : "bold",
								"padding-top" : "8px"
							})
							$('.label-5').css({
								"display" : "inline-block",
								"padding-left" : "25px",
								"font-weight" : "bold",
								"padding-top" : "8px"
							})
							$('.label-6').css({
								"display" : "inline-block",
								"padding-left" : "25px",
								"font-weight" : "bold",
								"padding-top" : "8px"
							})
							$('.label-7').css({
								"display" : "inline-block",
								"padding-left" : "25px",
								"font-weight" : "bold",
								"padding-top" : "8px"
							})
							$('strong').css({"color": "#17b794","padding-left":"90px"})
							$('hr').css({"width":"400px","border-color":"#000000","border-width":"2px"})

						},
						error : function(data) {
							$('#diplay').html("<p><b>" + data.message + "</b></p>")
						}

					})

		}
	})
})

function weatherfn() {

	var city = $('#weather-input').val();
	var key = '49fb5349be12df20288a03477bea3247';
	if (city === '') {
		return false
	} else {
		var urltoget = 'https://api.openweathermap.org/data/2.5/weather?q='
				+ city + '&units=metric&appid=' + key;

		$
				.ajax({
					url : urltoget,
					dataType : 'json',
					type : 'GET',
					success : function(data) {
						request = data;

						var image = "<strong style=\"padding-left:30px;font-size:large\";>Weather&emsp;&emsp;&nbsp;&nbsp; : </strong>&emsp;<div class=\"label-1\"><img id='wicon'  src=http://openweathermap.org/img/w/"
								+ data.weather[0].icon
								+ ".png"
								+ " />,&nbsp;"
								+ data.weather[0].main + " &nbsp;&nbsp;</div>";
						var descript = "<br/><strong style=\"padding-left:30px;font-size:large\";>Description&emsp;&nbsp;: </strong><div class=\"label-2\">"
								+ "  " + data.weather[0].description + "</div>";
						var temp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Temperature&ensp;&nbsp;: </strong><div class=\"label-3\">"
								+ data.main.temp + "&deg;C &nbsp;&nbsp;</div>";
						var maxtemp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Max-Temp&emsp;&ensp; : </strong><div class=\"label-4\">"
								+ data.main.temp_min
								+ "&deg;C &nbsp;&nbsp;</div>";
						var mintemp = "<br/><strong style=\"padding-left:30px;font-size:large\";>Min-Temp&emsp;&ensp;&ensp;: </strong><div class=\"label-5\">"
								+ data.main.temp_max
								+ "&deg;C &nbsp;&nbsp;</div>";
						var pressure = "<br/><strong style=\"padding-left:30px;font-size:large\";>Pressure&emsp; : </strong><div class=\"label-6\">"
								+ data.main.pressure
								+ "&nbsp;&#13225; &nbsp;&nbsp;</div>";
						var humidity = "<br/><strong style=\"padding-left:30px;font-size:large\";>Humidity&emsp; : </strong><div class=\"label-7\">"
								+ data.main.humidity
								+ "&nbsp;&deg;C &nbsp;&nbsp;</div>";
						var todisplay = "<br/>&nbsp;&nbsp;<label>" + data.name
								+ ", " + data.sys.country + "</label><br/>"
								+ image + descript + temp + maxtemp + mintemp
								+ pressure + humidity;

						$('#display').html(todisplay)

						$('#display')
								.html(
										"<br/>&nbsp;&nbsp;<label>"
												+ data.name
												+ ","
												+ data.sys.country
												+ "</label><br/>"
												+ "<img id='wicon' src=http://openweathermap.org/img/w/"
												+ data.weather[0].icon + ".png"
												+ " />" + data.main.temp
												+ "&deg;C<br/>&nbsp;&nbsp;"
												+ data.weather[0].main + " ,"
												+ data.weather[0].description)

						$('label').css({
							"font-size" : "40px"
						})
						$('label').css({
							"padding-left" : "110px",
							"margin-top" : "-25px"
						})

						$('.label-1').css({
							"font-weight" : "bold",
							"display" : "inline-block",
							"padding-left" : "25px",
							"padding-top" : "0px"
						})
						$('.label-2').css({
							"display" : "inline-block",
							"padding-left" : "25px",
							"font-weight" : "bold",
							"padding-top" : "8px"
						})
						$('.label-3').css({
							"display" : "inline-block",
							"padding-left" : "25px",
							"font-weight" : "bold",
							"padding-top" : "8px"
						})
						$('.label-4').css({
							"display" : "inline-block",
							"padding-left" : "25px",
							"font-weight" : "bold",
							"padding-top" : "8px"
						})
						$('.label-5').css({
							"display" : "inline-block",
							"padding-left" : "25px",
							"font-weight" : "bold",
							"padding-top" : "8px"
						})
						$('.label-6').css({
							"display" : "inline-block",
							"padding-left" : "25px",
							"font-weight" : "bold",
							"padding-top" : "8px"
						})
						$('.label-7').css({
							"display" : "inline-block",
							"padding-left" : "25px",
							"font-weight" : "bold",
							"padding-top" : "8px"
						})
						$('strong').css("color", "#1fab89")

					},
					error : function(data) {
						$('#diplay').html("<p><b>" + data.message + "</b></p>")
					}

				})

	}
}
