package com.moaaz.MoaazClothes.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.moaaz.MoaazClothes.database.SaleDatabase;
import com.moaaz.MoaazClothes.models.Sale;
import com.moaaz.MoaazClothes.models.User;

@Service
public class SaleService {

	SaleDatabase saleDatabase = new SaleDatabase();

	public void insertProductForUserIntoCart(int user_id, int product_id) {
		try {
			saleDatabase.insertProductForUserIntoCart(user_id, product_id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public ArrayList<Sale> getAllSalesForUser(User user) {
		try {
			return saleDatabase.getAllProductsForUserThatStillFalse(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public long getTotalPriceForUserCart(ArrayList<Sale> sales) {
		long total = 0;
		for (Sale sale : sales) {
			total += sale.getProduct().getPrice();
		}
		return total;
	}

	public void deleteOneSaleForUser(int sale_id) {
		try {
			saleDatabase.deleteOneSaleForUser(sale_id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
	}

	public void buyNow(ArrayList<Sale> sales, int user_id) {
		try {
			saleDatabase.buyNow(sales, user_id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
	}

	public ArrayList<Sale> getSalesThatHadBoughtForUser(User user) {
		try {
			return saleDatabase.getSalesThatHadBoughtForUser(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	// It Main User Get It In The Real World
	public void deleteAllProductsThatAreTrue(User user) {
		try {
			saleDatabase.deleteAllProductsThatAreTrueForUser(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
