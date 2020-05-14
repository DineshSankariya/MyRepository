var day = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ];
var mon = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sept',
		'Oct', 'Nov', 'Dec' ];

function clock() {
	var date = new Date();
	var cur_day = day[date.getDay()];
	var cur_mon = mon[date.getMonth()];
	var cur_date = date.getDate();
	var cur_year = date.getFullYear();
	var ampm = date.getHours() >= 12 ? 'pm' : 'am';
	var cur_hr = date.getHours();
	var cur_min = date.getMinutes();
	var cur_sec = date.getSeconds();

	if (cur_hr < 10) {
		cur_hr = '0' + cur_hr;
	}
	if (cur_min < 10) {
		cur_min = '0' + cur_min;
	}
	if (cur_sec < 10) {
		cur_sec = '0' + cur_sec;
	}
	var displaytime = cur_hr + ':' + cur_min + ':' + cur_sec;

	$('#clock').html(displaytime);

}





$(document).ready(function weather(){
		
			var city = 'ahmedabad';
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
									$('#display').css({"font-weight":"bold","font-size": "medium","font-family":" Montserrat, sans-serif","text-decoration":"none",
										"position":"fixed","top":"3px"})
					

				},
				error : function(data) {
					$('#diplay').html("<p><b>" + data.message + "</b></p>")
				}

			})
			
			var date = new Date();
		var cur_day = day[date.getDay()];
		var cur_mon = mon[date.getMonth()];
		var cur_date = date.getDate();
		var cur_year = date.getFullYear();
		var ampm = date.getHours() >= 12 ? 'pm' : 'am';
		var cur_hr = date.getHours();
		var cur_min = date.getMinutes();
		var cur_sec = date.getSeconds();
	
		if (cur_hr < 10) {
			cur_hr = '0' + cur_hr;
		}
		if (cur_min < 10) {
			cur_min = '0' + cur_min;
		}
		if (cur_sec < 10) {
			cur_sec = '0' + cur_sec;
		}
		var displaytime = cur_hr + ':' + cur_min + ':' + cur_sec;
	
		$('#clock').html(displaytime);
			
			
			
			 setTimeout(weather, 1011);
})
		

		/*
		 * $('#weathbtn').on('click',function getweather(){ var cityname,
		 * apikey, urltoget, xhttp; cityname =
		 * document.getElementById("weathinput"); console.log(cityname.value);
		 * apikey = '49fb5349be12df20288a03477bea3247'; urltoget =
		 * "https://api.openweathermap.org/data/2.5/weather?q=" + cityname.value +
		 * "&units=metric&appid=" + apikey; xhttp = new XMLHttpRequest();
		 * console.log("cityname = " + cityname.value); xhttp.onreadystatechange =
		 * function() { if (this.readyState == 4 && this.status == 200) {
		 * 
		 * console.log(xhttp.response) } }; xhttp.open("GET", urltoget, true);
		 * xhttp.send(); })
		 */
		
	

/*
 * var city = 'ahmedabad'; var key = '49fb5349be12df20288a03477bea3247'; var
 * urltoget = 'https://api.openweathermap.org/data/2.5/weather?q=' + city +
 * '&units=metric&appid=' + key;
 * 
 * $.ajax({ url : urltoget, dataType : 'json', type : 'GET', success :
 * function(data) { request = data; $('#display').html( "<img id='wicon'
 * src=http://openweathermap.org/img/w/" + data.weather[0].icon + ".png" + " />" +
 * data.main.temp + "&deg;C <br/>&nbsp;&nbsp;" + data.name)
 * $('#wicon').css("width", "40px") }, error : function(data) {
 * $('#diplay').html( "<p><b>" + data.message + "</b></p>") } })
 */

// setTimeout(weather, 1011);

/*
 * $('#weathbtn').click(function(){ var cityname,apikey,urltoget,xhttp; cityname
 * =document.getElementById("weathinput"); console.log(cityname.value);
 * apikey='49fb5349be12df20288a03477bea3247';
 * urltoget="https://api.openweathermap.org/data/2.5/weather?q="+cityname.value+"&units=metric&appid="+apikey;
 * xhttp = new XMLHttpRequest(); console.log("cityname = "+cityname.value);
 * xhttp.onreadystatechange = function() { if (this.readyState == 4 &&
 * this.status == 200) {
 * 
 * console.log(xhttp.response) } }; xhttp.open("GET", urltoget, true);
 * xhttp.send(); })
 */

