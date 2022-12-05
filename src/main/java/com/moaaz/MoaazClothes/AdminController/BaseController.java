package com.moaaz.MoaazClothes.AdminController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {


	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(HttpServletRequest request, ModelMap model) {
		if (request.getSession().getAttribute("user") != null)
			model.put("registerAndLogin", 1);
		else
			model.put("registerAndLogin", 0);
		return "contact";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(HttpServletRequest request, ModelMap model) {
		if (request.getSession().getAttribute("user") != null)
			model.put("registerAndLogin", 1);
		else
			model.put("registerAndLogin", 0);
		return "about";
	}


}
