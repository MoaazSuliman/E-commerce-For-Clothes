package com.moaaz.MoaazClothes.AdminController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moaaz.MoaazClothes.security.AdminSecurity;
import com.moaaz.MoaazClothes.service.MessageService;

@Controller
public class AdminMessageController {

	@Autowired
	MessageService messageService;
	@Autowired
	AdminSecurity adminSec;

	@RequestMapping(value = "/message", method = RequestMethod.GET)
	public String getMessagees(ModelMap model, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			model.put("messages", messageService.getAllMessages());
			return "message";
		}
		return "/login";
	}

	@RequestMapping(value = "/getAllMessages", method = RequestMethod.GET)
	public String getAllMessages(HttpServletRequest request, ModelMap model) {
		if (adminSec.checkAdminSecurity(request)) {
			model.put("messages", messageService.getAllMessages());
			return "message";
		}
		return "/login";
	}

	@RequestMapping(value = "/deleteMessage/{id}", method = RequestMethod.GET)
	public String deleteMessage(@PathVariable int id, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			messageService.deleteMessage(id);
			return "redirect:/message";
		}
		return "/login";
	}
}
