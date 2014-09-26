package com.fas.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fas.modal.Users;


/**
 * 
 * 
 * @author swaybhase
 *
 * Class to  perform operation for customer survey dept 
 */
@Controller
public class CustomerAccountController {

	private final Logger LOG = LoggerFactory.getLogger(CustomerAccountController.class);
	/**
	 *mapping to show the customer page at initial startup 
	 * @return
	 */
	@RequestMapping(value = {"/ShowCustDept"},method = RequestMethod.GET)
	public ModelAndView showCustHomeView(@ModelAttribute("userContext") Users user){
		
		
		LOG.info("in customer controller ::::::::::::::::::::::::"+user.getId());
		
		return new ModelAndView("Customer/customerLandingView");
	}
	
	
	/**
	 *mapping to show the question and create questions there
	 * @return
	 */
	@RequestMapping(value = {"/CreateBank"},method = RequestMethod.GET)
	public ModelAndView showQuesBank(){
		
		return new ModelAndView("Customer/questionBankView");
	}

}
