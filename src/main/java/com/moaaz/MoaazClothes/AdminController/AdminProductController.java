package com.moaaz.MoaazClothes.AdminController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.moaaz.MoaazClothes.models.Product;
import com.moaaz.MoaazClothes.security.AdminSecurity;
import com.moaaz.MoaazClothes.service.ProductService;

@Controller
public class AdminProductController {

	@Autowired
	ProductService productService;

	@Autowired
	AdminSecurity adminSec;

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(ModelMap model, HttpServletRequest request) {

		if (adminSec.checkAdminSecurity(request)) {
			model.addAttribute("products", productService.getProducts());
			return "dashboard";
		}

		return "/login";
	}

	@RequestMapping(value = "/createProduct", method = RequestMethod.GET)
	public String addProduct(HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request))
			return "create-product";
		return "/login";
	}

	@RequestMapping(value = "/createProduct", method = RequestMethod.POST)
	public String addProductPost(@RequestParam String name, @RequestParam double price, @RequestParam String detail,
			@RequestParam String url, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			productService.insertProduct(new Product(name, detail, price, url));
			return "redirect:/dashboard";
		}
		return "/login";
	}

	@RequestMapping(value = "/deleteProduct/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable int id, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			productService.deleteProduct(id);
			return "redirect:/dashboard";
		}
		return "/login";
	}

	@RequestMapping(value = "/updateProduct/{id}", method = RequestMethod.GET)
	public String updateProduct(@PathVariable int id, ModelMap model, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			Product p = productService.getProductById(id);
			model.put("product", p);
			return "updateProduct";
		}
		return "/login";
	}

	@RequestMapping(value = "/updateProduct/{id}", method = RequestMethod.POST)
	public String updateProductPost(@PathVariable int id, @RequestParam String name, @RequestParam double price,
			@RequestParam String detail, @RequestParam String url, HttpServletRequest request) {
		if (adminSec.checkAdminSecurity(request)) {
			Product p = new Product(id, name, detail, price, url);
			productService.updateProduct(p);
			return "redirect:/dashboard";
		}
		return "/login";
	}

}
