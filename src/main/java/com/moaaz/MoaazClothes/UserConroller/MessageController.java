package com.moaaz.MoaazClothes.UserConroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.moaaz.MoaazClothes.models.Message;
import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService msgService;

	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public String sendMessage(HttpSession session, @RequestParam String message, ModelMap model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			session.setAttribute("sendMessage", true);
			return "redirect:/login";
		}
		Message msg = new Message(user, message);
		msgService.sendMessage(msg);
		model.put("string", "Your Message Sent Success.");
		return "contact";
	}
}
