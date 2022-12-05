package com.moaaz.MoaazClothes.AdminController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.service.UserService;
import com.moaaz.MoaazClothes.validation.UserValidation;

@Controller
@SessionAttributes({ "admin", "user" })
public class LoginAndRegisterController {

	@Autowired
	UserService userService;
	UserValidation userValidation = new UserValidation();

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register1() {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register2(@RequestParam String name, @RequestParam String email, @RequestParam String password,
			@RequestParam String address, ModelMap model) {
		User user = new User(2, name, email, password, address);
		String validation = userValidation.checkRegister(user);
		if (validation.equals("")) {
			userService.register(user);
			return "login";
		}
		model.addAttribute("errorMsg", validation);
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		model.addAttribute("address", address);
		model.addAttribute("invalid", 1);
		return "register";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login1() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login2(@RequestParam String email, @RequestParam String password, ModelMap model,
			HttpSession session) {
		User user = userService.getUser(email, password);
		/*
		 * Null wrong email or password role=1 ==>admin role=2 ==>user
		 */
		if (user == null) {
			model.addAttribute("errorMsg", "Invalid Email Or Password");
			model.addAttribute("email", email);
			model.addAttribute("password", password);
			model.addAttribute("invalid", 1);
			return "login";
		} else if (user.getRole() == 2) {
			session.setAttribute("user", user);
			session.setAttribute("id", user.getId());
			if (session.getAttribute("myCart") != null) {
//				HttpSession s = (HttpSession) session.getAttribute("myCart");
//				s.invalidate();
				return "redirect:/ourProducts";
			}
			if (session.getAttribute("sendMessage") != null)
				return "redirect:/contact";
			return "redirect:/Shopping";
		}
		session.setAttribute("admin", true);
		return "redirect:/dashboard ";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		if (request.getSession().getAttribute("id") != null) {
			System.out.println("This IS User Session");
		}
		request.getSession().invalidate();
		if (request.getSession().getAttribute("id") == null) {
			System.out.println("Session Destroyed Success.");
		}
		return "/login";
	}

}
