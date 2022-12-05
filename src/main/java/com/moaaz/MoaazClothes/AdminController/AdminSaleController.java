package com.moaaz.MoaazClothes.AdminController;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moaaz.MoaazClothes.models.Sale;
import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.service.SaleService;
import com.moaaz.MoaazClothes.service.UserService;
import com.moaaz.MoaazClothes.service.WaitingService;

@Controller
public class AdminSaleController {

	@Autowired
	WaitingService wService;
	@Autowired
	SaleService saleService;
	@Autowired
	UserService userService;

	@RequestMapping(value = "/showUsersThatInWaiting", method = RequestMethod.GET)
	public String salesForUser(ModelMap model) {
		model.put("waits", wService.getAllUserThatInWaiting());
		System.out.println(wService.getAllUserThatInWaiting().size());
		return "viewUserThatInWaiting";
	}

	@RequestMapping(value = "/deleteAllUserProductsThatAreTrue/{user_id}", method = RequestMethod.GET)
	public String deleteProductsForUserThatAreTrue(@PathVariable int user_id) throws SQLException {
		User user = userService.getUserById(user_id);
		wService.deleteUserFromWaiting(user);
		saleService.deleteAllProductsThatAreTrue(user);
		return "redirect:/showUsersThatInWaiting";
	}

	@RequestMapping(value = "/showUserProducts/{user_id}", method = RequestMethod.GET)
	public String showUserProducts(@PathVariable int user_id, ModelMap model) {
		ArrayList<Sale> sales = saleService.getSalesThatHadBoughtForUser(userService.getUserById(user_id));
		model.put("sales", sales);
		return "viewProductsForUserThatInWaiting";
	}
}
