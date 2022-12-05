package com.moaaz.MoaazClothes.UserConroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moaaz.MoaazClothes.models.Product;
import com.moaaz.MoaazClothes.service.ProductService;

@Controller
public class IndexUserController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = { "/", "/Shopping", "/index" }, method = RequestMethod.GET)
	public String Home(ModelMap model, HttpServletRequest request) {
		// User Logged in.
		if (request.getSession().getAttribute("user") != null)
			model.put("registerAndLogin", 1);
		else
			model.put("registerAndLogin", 0);

		model.put("products", productService.getProducts());
		return "index";
	}

	@RequestMapping(value = "/showProduct/{id}", method = RequestMethod.GET)
	public String showProduct(ModelMap model, @PathVariable int id) {
		Product product = productService.getProductById(id);
		model.put("product", product);
		return "product";
	}

	@RequestMapping(value = "/ourProducts")
	public String ourProducts(HttpServletRequest request, ModelMap model) {
		if (request.getSession().getAttribute("user") != null)
			model.put("registerAndLogin", 1);
		else
			model.put("registerAndLogin", 0);
		model.put("products", productService.getProducts());
		return "products";
	}
}
