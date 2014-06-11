/**
 * 
 */
package com.fas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;
import com.fas.service.IUserService;
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
		
		
		
		boolean validUser=userService.authenticateUser(user);
		
		System.out.println("Is validUser  :: "+validUser);
		return new ModelAndView("login", "users", new Users());
	}
}
