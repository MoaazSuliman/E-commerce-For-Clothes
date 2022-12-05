package com.moaaz.MoaazClothes;

import org.springframework.beans.factory.annotation.Autowired;

import com.moaaz.MoaazClothes.service.ProductService;

public class Test {

	static ProductService productService = new ProductService();

	public static void main(String[] args) {

		System.out.println(productService.getProductById(1).toString());
	}
}
