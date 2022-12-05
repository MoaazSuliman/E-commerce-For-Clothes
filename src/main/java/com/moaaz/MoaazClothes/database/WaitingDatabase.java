package com.moaaz.MoaazClothes.database;

import java.sql.SQLException;
import java.util.ArrayList;

import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.models.Waiting;
import com.moaaz.MoaazClothes.service.UserService;

public class WaitingDatabase extends DatabaseConnection {

	UserService userService = new UserService();

	public void putUserInWaiting(User user) throws SQLException {
		sql = "INSERT INTO waiting (user_id) VALUES(?)";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, user.getId());
		s.execute();
	}

	public void deleteUserFromWaiting(User user) throws SQLException {
		sql = "DELETE FROM waiting WHERE user_id =?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, user.getId());
		s.execute();
	}

	public ArrayList<Waiting> getAllUsersInWaiting() throws SQLException {
		ArrayList<Waiting> ws = new ArrayList<>();
		sql = "SELECT * FROM waiting";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		result = s.executeQuery();
		while (result.next())
			ws.add(new Waiting(result.getInt(1), userService.getUserById(result.getInt(2))));
		return ws;
	}
	
	
}
