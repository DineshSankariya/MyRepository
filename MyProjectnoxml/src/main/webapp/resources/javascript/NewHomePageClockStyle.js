var day = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ];
var mon = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sept',
		'Oct', 'Nov', 'Dec' ];

$(document).ready(function clock() {
	
	var date = new Date();
	var cur_day = day[date.getDay()];
	var cur_mon = mon[date.getMonth()];
	var cur_date = date.getDate();
	var cur_year = date.getFullYear();
	var ampm = date.getHours() >= 12 ? 'pm' : 'am';
	var cur_hr = date.getHours()% 12;
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
	
	var displaytime = cur_hr + ':' + cur_min + ':' + cur_sec;

	$('#clock').html(displaytime);
	$('#clock').css({
		"font-weight" : "bold",
		"font-size" : "15px",
		"font-family" : " Montserrat, sans-serif",
		"text-decoration" : "none",
		"position" : "absolute",
		"top" : "90px",
		"right" : "355px",
		"color":"black"
	})
	
	setTimeout(clock, 1000);
	
})