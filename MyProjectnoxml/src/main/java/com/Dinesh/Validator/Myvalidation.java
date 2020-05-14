package com.Dinesh.Validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class Myvalidation implements ConstraintValidator<Myannot, String> {

	@Override
	public boolean isValid(String tocheck, ConstraintValidatorContext arg1) {
		
		
		
		if (!tocheck.isEmpty()) {
			String timspace=tocheck.replaceAll("\\s", "");
			if(timspace.length()>0) {
				String trimmedvalue = tocheck.replaceAll("\\s", "");
				System.out.println("Trimmed spaces from " + tocheck + " : " + trimmedvalue);
				Pattern pat = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
				Matcher match = pat.matcher(trimmedvalue);
				System.out.println(match.matches());
				return match.matches();
			}
		
			
		}
		
			System.out.println("Input is null");
			return false;
		
		
	}

}
