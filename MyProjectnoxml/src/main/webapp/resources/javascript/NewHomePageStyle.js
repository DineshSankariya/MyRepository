var day = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ];
var mon = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sept',
		'Oct', 'Nov', 'Dec' ];

$(document).ready(
		function weather() {

			var city = 'Ahmedabad';
			var key = '49fb5349be12df20288a03477bea3247';
			var urltoget = 'https://api.openweathermap.org/data/2.5/weather?q='
					+ city + '&units=metric&appid=' + key;

			$.ajax({
				url : urltoget,
				dataType : 'json',
				type : 'GET',
				success : function(data) {
					request = data;
					$('#display').html(
							"<img id='wicon'  src=http://openweathermap.org/img/w/"
									+ data.weather[0].icon + ".png" + " />"
									+ data.main.temp
									+ "&deg;C <br/>&nbsp;&nbsp;" + data.name)
					$('#display').css({
						"font-weight" : "bold",
						"font-size" : "14px",
						"font-family" : " Poppins, sans-serif",
						"text-decoration" : "none",
						"position" : "absolute",
						"bottom" : "38px",
						"left" : "120px",
						"color":"black"
					})
					
					$('#wicon').css("width","40px")
					
					

				},
				error : function(data) {
					$('#diplay').html("<p><b>" + data.message + "</b></p>")
				}

			})
			setTimeout(weather, 1011);
		})