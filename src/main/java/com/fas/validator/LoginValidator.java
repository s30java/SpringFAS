 package com.fas.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.fas.modal.Users;

public class LoginValidator implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object obj, Errors errors) {
	//	Users user=(Users)obj;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "required.error.login");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required.error.login");
		
	}

}
