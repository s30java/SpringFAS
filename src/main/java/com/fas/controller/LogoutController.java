package com.fas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;

@Controller

public class LogoutController {

	@RequestMapping(value={"/logout.html"}, method=RequestMethod.GET)
	public ModelAndView logout(@ModelAttribute("users") Users user,HttpSession session){
		ModelAndView modelView=new ModelAndView();
		session.invalidate();

		modelView.setViewName("login");
		return modelView;
	}
}
