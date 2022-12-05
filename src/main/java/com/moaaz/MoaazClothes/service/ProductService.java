package com.moaaz.MoaazClothes.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.moaaz.MoaazClothes.database.ProductDatabase;
import com.moaaz.MoaazClothes.models.Product;

@Service
public class ProductService {
	ProductDatabase pdb = new ProductDatabase();

	public void insertProduct(Product product) {
		try {
			pdb.insertNewProducts(product);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public void deleteProduct(int id) {
		try {
			pdb.deleteProduct(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public ArrayList<Product> getProducts() {
		try {
			return pdb.getProducts();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public Product getProductById(int id) {
		try {
			return pdb.getproductById(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public void updateProduct(Product p) {
		try {
			pdb.updateProduct(p);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
