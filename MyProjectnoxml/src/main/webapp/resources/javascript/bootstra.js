$(document).ready(function(event){
	
		$('#form').submit(function(event){
			
			/*var num=parseInt($('#phone').val())
			console.log(num.toString().length)
			console.log(typeof(num))
			
			console.log(num)
			if(typeof(num)=="number"){
				
				console.log(num)
				if(parseInt(num.toString().length)===10){
					var user={
							fname:$('#fname').val(),
							lname:$('#lname').val(),
							mob_num:$('#phone').val(),
							email:$('#email').val(),
							password:$('#password').val()
					}
					console.log(num+"aasdsd")
					
					$.ajax({
						type : "POST",
						url : "${pageContext.request.contextPath}/user/confirm",
						data: user,
						success : function(result) {
								
								alert("Hi "+user.fname+" "+user.lname+" you have registered successfully")
			
						},
						error : function(e) {
							$('.main').css("color","red")
							$('.main').css("font-size","larger")
							$('.main').html("Invalid Data")
							
							
						}
						
					})
				}
				else{
					alert("Mobile Number Invalid")
				}
			}*/
			
			var error=[];
			var errorstr='';
			var fnam=$('#fname').val();
			var lnam=$('#lname').val();
			var emailid=$('#email').val();
			var regexemail=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			var mob=parseInt($('#phone').val());
			var pass=$('#password').val();
			if(fnam==='' && typeof(fnam)==='string'){
				error.push("Enter valid First Name ")
			}
			
			if(lnam==='' && typeof(lnam)==='string'){
				error.push("Enter valid Last Name ")
				
			}
			
			if(emailid==='' && typeof(emailid)==='string' && emailid!==regexemail){
				error.push("Enter valid Email-Id ")
			}
			
			if(mob.toString().length<10 && typeof(mob)==='number'){
				error.push("Enter valid Mobile Number ")
			}
					
			
			if(pass.length<7 && typeof(pass)==='string'){
				error.push("Password should be minimum 8 character")
			}
			
			for (var i = 0; i < error.length; i++) {
				errorstr+=(i+1)+'. '+error[i]+'\n'
			}
			
			if(error.length>0){
				alert(errorstr)
				event.preventDefault();			
			}
			else {
				event.preventDefault();	
				var user={
						fname:$('#fname').val(),
						lname:$('#lname').val(),
						mob_num:$('#phone').val(),
						email:$('#email').val(),
						password:$('#password').val()
				}
		
				$.ajax({
					type : "POST",
					url : "confirm",
					data: user,
					success : function(result) {
							alert("Hi "+user.fname+" "+user.lname+" you have registered successfully");														
					},
					error : function(e) {
						alert("Registration Error")
						
					}
					
				})				
			}

		})
})