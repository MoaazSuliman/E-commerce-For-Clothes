package com.moaaz.MoaazClothes.database;

import java.sql.SQLException;
import java.util.ArrayList;

import com.moaaz.MoaazClothes.models.Sale;
import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.service.DateService;
import com.moaaz.MoaazClothes.service.ProductService;
import com.moaaz.MoaazClothes.service.UserService;

public class SaleDatabase extends DatabaseConnection {

	ProductService productService = new ProductService();
	UserService userService = new UserService();

	public void insertProductForUserIntoCart(int user_id, int product_id) throws SQLException {
		sql = "INSERT INTO sale (user_id ,product_id, date, cart)VALUES (?,?,?,?)";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, user_id);
		s.setInt(2, product_id);
		s.setString(3, new DateService().getDate());
		s.setBoolean(4, false);
		s.execute();
	}

	// Still In The Cart;
	public ArrayList<Sale> getAllProductsForUserThatStillFalse(User user) throws SQLException {
		sql = "SELECT * FROM sale WHERE user_id =? AND cart=?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, user.getId());
		s.setBoolean(2, false);
		result = s.executeQuery();
		ArrayList<Sale> sales = new ArrayList<>();
		while (result.next())
			sales.add(new Sale(result.getInt(1), user, productService.getProductById(result.getInt(3)),
					result.getString(4), result.getBoolean(5)));
		return sales;
	}

//	id ==> sale Id
	public void deleteOneSaleForUser(int sale_id) throws SQLException {
		sql = "DELETE FROM sale WHERE id =?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, sale_id);
		s.execute();
	}

	// After User Say I Will Buy This Products In My Cart.
	public void buyNow(ArrayList<Sale> sales, int user_id) throws SQLException {
		sql = "UPDATE sale SET cart=? WHERE user_id=? AND id=?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		for (Sale sale : sales) {
			s.setBoolean(1, true);
			s.setInt(2, user_id);
			s.setInt(3, sale.getId());
			s.execute();
		}
	}

	public ArrayList<Sale> getSalesThatHadBoughtForUser(User user) throws SQLException {
		sql = "SELECT * FROM sale WHERE user_id=? AND  cart=?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, user.getId());
		s.setBoolean(2, true);
		result = s.executeQuery();
		ArrayList<Sale> sales = new ArrayList<>();
		while (result.next())
			sales.add(new Sale(result.getInt(1), userService.getUserById(result.getInt(2)),
					productService.getProductById(result.getInt(3)), result.getString(4), result.getBoolean(5)));
		return sales;

	}

	public void deleteAllProductsThatAreTrueForUser(User user) throws SQLException {
		sql = "DELETE FROM sale WHERE user_id= ? AND cart=?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, user.getId());
		s.setBoolean(2, true);
		s.execute();

	}
}
