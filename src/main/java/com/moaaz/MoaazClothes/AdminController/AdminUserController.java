package com.moaaz.MoaazClothes.AdminController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moaaz.MoaazClothes.security.AdminSecurity;
import com.moaaz.MoaazClothes.service.UserService;

@Controller
public class AdminUserController {

	@Autowired
	UserService userService;
	@Autowired
	AdminSecurity adminSec;

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String goToUsers(ModelMap model, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			model.put("users", userService.getUsers());
			return "users";
		}
		return "/login";
	}

	@RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable int id, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			userService.deleteUser(id);
			return "redirect:/users";
		}
		return "/login";
	}
}
