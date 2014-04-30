/**
 * 
 */
package com.fas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * @author swaybhase
 *
 */

@Controller
public class LoginController {
	
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public ModelAndView getLogin(){
		ModelAndView modal=new ModelAndView();
		
		modal.addObject("message", "Satish");
		modal.setViewName("login");
		
		
		return modal;
	}

}
