/**
 * 
 */
package com.fas.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fas.helper.HelperControls;
import com.fas.modal.Users;
import com.fas.service.IUserService;

/**
 * @author swaybhase
 * changes for login
 */

@Controller
@SessionAttributes("userContext")
public class LoginController {
	
	@Autowired
	private IUserService userService;
	
	private final Logger LOG = LoggerFactory.getLogger(LoginController.class);
	
	private final HelperControls helperApps=new HelperControls();
	Map<String, String>  message;
	@ModelAttribute("userContext")
	  public Users createuser() {
	    return new Users();  
	  }
	
	//Loads the first page
	@ModelAttribute("userContext")
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView startApp(@ModelAttribute("userContext") Users user,Map<String, Object> model) {
		 message = new HashMap<String, String>();
	
		 LOG.info("Coming into authLogin: POST "+message.isEmpty());
		
        model.put("userList", getUserTypeList());
        model.put("message", message);
		return helperApps.IsUserRevisited(user).addAllObjects(model);
	}

	/** list down all the user type
	 * @return
	 */
	public static Map< Integer, String > getUserTypeList() {
		
		 Map< Integer, String > userType = new HashMap<Integer, String>();  
		 userType.put(1, "Admin");  
		 userType.put(2, "Consumer");  
		 userType.put(3, "Product");  		
		 userType.put(4, "Productgfgdfdfgd");  	
		 
		return userType;
	}

	
	
	// Used to authenticate the users
	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public ModelAndView loginAuth(@ModelAttribute("users") Users user,BindingResult result,Map<String, Object> model) {
		
		 message = new HashMap<String, String>();
		ModelAndView modelView = new ModelAndView();
		
		
		user = helperApps.validateUser(userService, user, result, modelView,message);
		
		 model.put("userList", getUserTypeList());
		 
		modelView.addObject("users", new Users()).addAllObjects(model);
		modelView.addObject("message", message);
		modelView.addObject("userContext", user);
		
		return modelView;
	}

	//register the first page
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public ModelAndView registerApp(@ModelAttribute("registerusers") Users regUser,BindingResult result,ModelAndView modelView){

		 message = new HashMap<String, String>();
		
		try{
			userService.addUser(regUser);	
			
			LOG.debug("new user id :::::::::::::::::::::: "+regUser.getId());
			message.put("SAVED_DATA", "Data saved");
		}catch(Exception ex){
			message.put("UNSAVED_DATA", "Exception occured");
			LOG.debug("EXCEPTION OCCURED ..............................:::::::::::::::::::::: "+ex.getMessage());
		}
		
	
	
		return new ModelAndView("redirect:/home.html");
	}



	

}
