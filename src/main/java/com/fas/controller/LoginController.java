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
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;
import com.fas.service.IUserService;
import com.fas.validator.LoginValidator;
/**
 * @author swaybhase
 * changes for login
 */

@Controller
public class LoginController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value = {"/showLogin"}, method = RequestMethod.GET)
	public ModelAndView showLogin(){
		
		return new ModelAndView("login", "users", new Users());
	}

	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public ModelAndView authLogin(@ModelAttribute("users") Users user, BindingResult result){
		
		ModelAndView modelView=new ModelAndView();
		Map<String, String> message = new HashMap<String, String>();
		LoginValidator validator=new LoginValidator();
		
		validator.validate(user, result);
		boolean validUser=userService.authenticateUser(user);
		
		
		if (result.hasErrors()) {
			 message.put("ERR_MESSAGE", "ErrorMessage");
        }else if(!validUser){
			 message.put("INVALID_USER_MESSAGE","INVALID_USER_MESSAGE");
		}
		
		
		modelView.setViewName("login");
		modelView.addObject("users", new Users());
		modelView.addObject("message",message);
		
		return modelView;
	}
}
