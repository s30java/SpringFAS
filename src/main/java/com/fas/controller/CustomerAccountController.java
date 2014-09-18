package com.fas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * 
 * @author swaybhase
 *
 * Class to  perform operation for customer survey dept 
 */
@Controller
public class CustomerAccountController {

	/**
	 *mapping to show the customer page at initial startup 
	 * @return
	 */
	@RequestMapping(value = {"/ShowCustDept"},method = RequestMethod.GET)
	public ModelAndView showCustHomeView(){
		
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
