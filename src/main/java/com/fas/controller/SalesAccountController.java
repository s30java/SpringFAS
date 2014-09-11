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
 * Class to  perform operation for sales dept and activities
 */
@Controller
public class SalesAccountController {

	/**
	 *mapping to show the sales page at initial startup 
	 * @return
	 */
	@RequestMapping(value = {"/ShowSalesDept"},method = RequestMethod.GET)
	public ModelAndView showSalesView(){
		
		return new ModelAndView("SalesView/sales_HomeView");
	}
	
	
}
