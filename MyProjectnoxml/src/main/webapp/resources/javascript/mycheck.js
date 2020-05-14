var day = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ];
var mon = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sept',
		'Oct', 'Nov', 'Dec' ];
var request;

function clock() {
	var date = new Date();
	var cur_day = day[date.getDay()];
	var cur_mon = mon[date.getMonth()];
	var cur_date = date.getDate();
	var cur_year = date.getFullYear();
	var ampm = date.getHours() >= 12 ? 'pm' : 'am';
	var cur_hr = date.getHours() % 12;
	var cur_min = date.getMinutes();
	var cur_sec = date.getSeconds();
	if (cur_hr === 0) {
		cur_hr = 12;
	}

	if (cur_hr < 10) {
		cur_hr = '0' + cur_hr;
	}
	if (cur_min < 10) {
		cur_min = '0' + cur_min;
	}
	if (cur_sec < 10) {
		cur_sec = '0' + cur_sec;
	}
	var displaytime = cur_day + ' ' + cur_mon + ' ' + cur_date + ' ' + cur_year
			+ ' ' + cur_hr + ':' + cur_min + ':' + cur_sec + ' '
			+ ampm.toUpperCase();

	document.getElementById('clock').innerHTML = displaytime;
	// $('#clock').html(displaytime);

	setTimeout("clock()", 1000);

}

$(document).ready(function weather() {
	var city = 'ahmedabad';
	var key = '49fb5349be12df20288a03477bea3247';
	var urltoget = 'https://api.openweathermap.org/data/2.5/weather?q=' + city
			+ '&units=metric&appid=' + key;
	$.ajax({
		url : urltoget,
		dataType : 'json',
		type : 'GET',
		success : function(data) {
			$('#display').html(
					'<p><b>' + data.name + "&nbsp; </b>"
							+ "<img src=http://openweathermap.org/img/w/"
							+ data.weather[0].icon + ".png" + " /><br/>"
							+ data.main.temp + "&deg;C | "
							+ data.weather[0].main + " ,"
							+ data.weather[0].description + '</p>')
			
			 /*console.log(data.name + " " + data.main.temp + " " +
			 data.weather[0].main + " " + data.weather[0].description)*/
			 
		},
		error : function() {
			$('#diplay').html("<p><b>" + data.message + "</b></p>")
		}

	})
	setTimeout(weather, 1011);
})


