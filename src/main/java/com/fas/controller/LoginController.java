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
	
	@ModelAttribute("userContext")
	  public Users createuser() {
	    return new Users();  
	  }
	
	//Loads the first page
	@ModelAttribute("userContext")
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView startApp(@ModelAttribute("userContext") Users user) {

		LOG.info("Coming into startApp ");
		return helperApps.IsUserRevisited(user);
	}

	
	
	// Used to authenticate the users
	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public ModelAndView loginAuth(@ModelAttribute("users") Users user,
			BindingResult result) {
		LOG.info("Coming into authLogin: POST");

		ModelAndView modelView = new ModelAndView();
		Map<String, String> message = new HashMap<String, String>();
		user = helperApps.validateUser(userService, user, result, modelView,
				message);
		modelView.addObject("users", new Users());
		modelView.addObject("message", message);
		modelView.addObject("userContext", user);
		return modelView;
	}





	

}
