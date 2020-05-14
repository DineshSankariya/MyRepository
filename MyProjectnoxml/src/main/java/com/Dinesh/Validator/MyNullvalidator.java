package com.Dinesh.Validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class MyNullvalidator implements ConstraintValidator<MyNullvaid,String>{

	@Override
	public boolean isValid(String arg0, ConstraintValidatorContext arg1) {
		
		

		if(arg0!=null) {
			if(arg0.length()>0) {
				System.out.println("Inside not empty string  condition");
				return true;
			}
		}
	
		
		
		return false;
	
	}
	
	
	
}
