$('a').click(function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET', '${pageContext.request.contextPath}/user/'+$(this).attr('id'), true);
	xhr.onload = function() {
		if (this.status == 200) {
			$('.main').append(xhr.responseText);
		}
	}
	xhr.send();
})
