package com.Dinesh.DataBaseEntity;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.Dinesh.Validator.MyNullvaid;
import com.Dinesh.Validator.Myannot;

public class LogIn {
	
	@NotNull(message ="is required")
	@Myannot
	private String email;
	
	@NotNull(message ="is required")
	@MyNullvaid(message = "incorrect password")
	@Size(min = 5,message = "input must be min 5 char")
	private String password;
	
	

	public LogIn() {
	}



	public LogIn(String email, String password) {
		this.email = email;
		this.password = password;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public String toString() {
		return "LogIn [email=" + email + ", password=" + password + "]";
	}	
	
	
}
