package com.moaaz.MoaazClothes.UserConroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.security.UserSecurity;
import com.moaaz.MoaazClothes.service.SaleService;
import com.moaaz.MoaazClothes.service.WaitingService;

@Controller
public class BuyNowController {

	@Autowired
	WaitingService waitingService;
	@Autowired
	UserSecurity userSecurity;
	@Autowired
	SaleService saleService;

	@RequestMapping(value = "/buyNow", method = RequestMethod.GET)
	public String buyNow(HttpServletRequest request) {
		if (!userSecurity.checkSUserSecurity(request)) {
			request.getSession().setAttribute("myCart", true);
			return "redirect:/login";
		}
		System.out.println("This Is Buy Now");
		User user = (User) request.getSession().getAttribute("user");
		waitingService.putUserInWaiting(user);
		saleService.buyNow(saleService.getAllSalesForUser(user), user.getId());
		request.getSession().setAttribute("connect", true);
		return "redirect:/myCart";
	}

}
