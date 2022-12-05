package com.moaaz.MoaazClothes.database;

import java.sql.SQLException;
import java.util.ArrayList;

import com.moaaz.MoaazClothes.models.User;

public class UserDatabase extends DatabaseConnection {

	public User getUserByEmailAndPassword(String email, String password) throws SQLException {
		sql = "SELECT * FROM user WHERE email=? and password=?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setString(1, email);
		s.setString(2, password);
		result = s.executeQuery();
		User user = null;
		if (result.next())
			user = new User(result.getInt(1), result.getInt(2), result.getString(3), result.getString(4),
					result.getString(5), result.getString(6));
		return user;
	}

	public void insertNewUser(User user) throws SQLException {
		sql = "INSERT INTO user (role_id, name , email , password ,address) VALUES (?,?,?,?,?)";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, 2);
		s.setString(2, user.getName());
		s.setString(3, user.getEmail());
		s.setString(4, user.getPassword());
		s.setString(5, user.getAddress());
		s.execute();
	}

	public void deleteUser(int id) throws SQLException {
		sql = "DELETE FROM user WHERE id =?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, id);
		s.execute();
	}

	public ArrayList<User> getUsers() throws SQLException {
		sql = "SELECT * FROM user WHERE role_id=? ";
		ArrayList<User> users = new ArrayList<>();
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, 2);
		result = s.executeQuery();
		while (result.next())
			users.add(new User(result.getInt(1), result.getInt(2), result.getString(3), result.getString(4),
					result.getString(5), result.getString(6)));
		return users;
	}

	public User getUserById(int id) throws SQLException {
		sql = "SELECT * FROM user WHERE id = ?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, id);

		result = s.executeQuery();
		if (result.next())
			return new User(result.getInt(1), result.getInt(2), result.getString(3), result.getString(4),
					result.getString(5), result.getString(6));
		return null;
	}

}
