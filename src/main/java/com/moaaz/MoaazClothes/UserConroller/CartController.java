package com.moaaz.MoaazClothes.UserConroller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moaaz.MoaazClothes.models.Sale;
import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.security.UserSecurity;
import com.moaaz.MoaazClothes.service.SaleService;

@Controller
public class CartController {

	@Autowired
	UserSecurity userSecurity;
	@Autowired
	SaleService saleService;

	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String goToMyCart(HttpServletRequest request, ModelMap model) {
		if (!userSecurity.checkSUserSecurity(request)) {
			request.getSession().setAttribute("myCart", true);
			return "/login";
		}
		User user = (User) request.getSession().getAttribute("user");
		ArrayList<Sale> sales = saleService.getAllSalesForUser(user);
		model.put("salesForUser", sales);
		model.put("total", saleService.getTotalPriceForUserCart(sales));
		if (request.getSession().getAttribute("connect") != null)
			model.put("connect", 1);
		return "myCart";
	}

	@RequestMapping(value = "/addToCart/{product_id}", method = RequestMethod.GET)
	public String addProductToUserCart(HttpServletRequest request, @PathVariable int product_id) {
		if (!userSecurity.checkSUserSecurity(request)) {
			request.getSession().setAttribute("myCart", true);
			return "/login";
		}
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user.toString());
		saleService.insertProductForUserIntoCart(user.getId(), product_id);
		if (request.getSession().getAttribute("connect") != null)
			request.getSession().removeAttribute("connect");
		return "redirect:/myCart";
	}

	@RequestMapping(value = "deleteProductFromCart/{sale_id}", method = RequestMethod.GET)
	public String delteOneSaleForUser(@PathVariable int sale_id) {
		saleService.deleteOneSaleForUser(sale_id);
		return "redirect:/myCart";
	}
}
