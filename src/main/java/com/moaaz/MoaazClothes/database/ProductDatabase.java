package com.moaaz.MoaazClothes.database;

import java.sql.SQLException;
import java.util.ArrayList;

import com.moaaz.MoaazClothes.models.Product;

public class ProductDatabase extends DatabaseConnection {

	public void insertNewProducts(Product product) throws SQLException {
		sql = "INSERT INTO product (name , detail , price , url) VALUES (?,?,?,?)";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setString(1, product.getName());
		s.setString(2, product.getDetail());
		s.setDouble(3, product.getPrice());
		s.setString(4, product.getUrl());
		s.execute();
	}

	public void deleteProduct(int id) throws SQLException {
		sql = "DELETE FROM product WHERE id =?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, id);
		s.execute();
	}

	public ArrayList<Product> getProducts() throws SQLException {
		sql = "SELECT * from product ";
		ArrayList<Product> products = new ArrayList<>();
		connection = createConnection();
		s = connection.prepareStatement(sql);
		result = s.executeQuery();
		while (result.next())
			products.add(new Product(result.getInt(1), result.getString(2), result.getString(3), result.getDouble(4),
					result.getString(5)));
		return products;
	}

	public Product getproductById(int id) throws SQLException {
		sql = "SELECT * FROM product WHERE id=?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, id);
		result = s.executeQuery();
		if (result.next())
			return new Product(result.getInt(1), result.getString(2), result.getString(3), result.getDouble(4),
					result.getString(5));
		return null;
	}

	public void updateProduct(Product product) throws SQLException {
		sql = "UPDATE product SET name =? , detail =? , price =? , url=? WHERE id =?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setString(1, product.getName());
		s.setString(2, product.getDetail());
		s.setDouble(3, product.getPrice());
		s.setString(4, product.getUrl());
		s.setInt(5, product.getId());
		s.execute();
	}
}
