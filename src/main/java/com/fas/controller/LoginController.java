/**
 * 
 */
package com.fas.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;
import com.fas.service.IUserService;
import com.fas.validator.LoginValidator;
/**
 * @author swaybhase
 * changes for login
 */

@Controller
@SessionAttributes("userContext")
public class LoginController {
	
	@Autowired
	private IUserService userService;
	
	//Loads the first page
	@RequestMapping(value = {"/showLogin"}, method = RequestMethod.GET)
	public ModelAndView showLogin(){
		
		return new ModelAndView("login", "users", new Users());
	}
	
	
	
	//Used to authenticate the users 
	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public ModelAndView authLogin(@ModelAttribute("users") Users user, BindingResult result){
		
		ModelAndView modelView=new ModelAndView();
		Map<String, String> message = new HashMap<String, String>();
		LoginValidator validator=new LoginValidator();
		
		validator.validate(user, result);
		
		user=userService.authenticateUser(user);
		
		modelView.setViewName("login");
		
		if (result.hasErrors()) {
			 message.put("ERR_MESSAGE", "ErrorMessage");
        }else if(!user.isIsValidUser()){
			 message.put("INVALID_USER_MESSAGE","INVALID_USER_MESSAGE");
		}else if(user.isIsValidUser()){
			/*
			 * this view will only be set if user is been authenticated
			 */
			modelView.setViewName("home");
		}
		modelView.addObject("users", new Users());
		modelView.addObject("message",message);
		modelView.addObject("userContext", user);
		return modelView;
	}
}
