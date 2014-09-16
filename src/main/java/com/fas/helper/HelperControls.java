package com.fas.helper;

import java.util.Map;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;
import com.fas.service.IUserService;
import com.fas.validator.LoginValidator;

public class HelperControls {

	/**************************LOGIN CONTROLLER HELPER METHODS***************************************/
	
	/**
	 * authenticate user and show appropriate message where required
	 */
	public Users validateUser(IUserService userService,Users user, BindingResult result,
			ModelAndView modelView, Map<String, String> message) {
		LoginValidator validator=new LoginValidator();
		
		validator.validate(user, result);
		
		user=userService.authenticateUser(user);
		
		modelView.setViewName("login");
		
		if (result.hasErrors()) {
			 message.put("ERR_MESSAGE", "ErrorMessage");
        }else if(!user.isValidUser()){
			 message.put("INVALID_USER_MESSAGE","INVALID_USER_MESSAGE");
		}else if(user.isValidUser()){
			/*
			 * this view will only be set if user is been authenticated
			 */
			modelView.setViewName("home");
		}
		return user;
	}
	
	
	
	
	/**
	 * Check that has user logged in , if true it will return home page else will redirect to login page
	 * @param user
	 * @return
	 */
	public ModelAndView IsUserRevisited(Users user) {
		if(user == null) {user = new Users();}
	       
	       if(user.getId()>0)
			{
				return new ModelAndView("home");
			}else{
				return new ModelAndView("login", "users", new Users());
			}
	}
	
	
	/**************************EOF LOGIN CONTROLLER HELPER METHODS***************************************/
}
