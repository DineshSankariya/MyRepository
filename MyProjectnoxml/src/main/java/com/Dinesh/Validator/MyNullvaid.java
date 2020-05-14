package com.Dinesh.Validator;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = MyNullvalidator.class)
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface MyNullvaid {
	
	public String value() default "";
	
	public String message();
	
	public Class<?>[] groups() default {};
	
	public Class<? extends Payload>[] payload() default{};
	
}
