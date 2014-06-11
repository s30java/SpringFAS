/**
 * 
 */
package com.fas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;
/**
 * @author swaybhase
 * changes for login
 */

@Controller
public class LoginController {
	
	
	@RequestMapping(value = {"/showLogin"}, method = RequestMethod.GET)
	public ModelAndView showLogin(){
		
		return new ModelAndView("login", "users", new Users());
	}

	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public ModelAndView authLogin(@ModelAttribute("users") Users user, BindingResult result){
		System.out.println("username is :: "+user.getUsername());
		System.out.println("passwqord is :: "+user.getPassword());
		return new ModelAndView("login", "users", new Users());
	}
}
