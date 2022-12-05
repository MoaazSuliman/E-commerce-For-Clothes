package com.moaaz.MoaazClothes.database;

import java.sql.SQLException;
import java.util.ArrayList;


import com.moaaz.MoaazClothes.models.Message;
import com.moaaz.MoaazClothes.service.UserService;

public class MessageDatabase extends DatabaseConnection {

	UserService userService = new UserService();

	public void sendMessage(Message message) throws SQLException {
		sql = "INSERT INTO message (user_id , message) VALUES (?,?)";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, message.getUser().getId());
		s.setString(2, message.getMessage());
		s.execute();
	}

	public ArrayList<Message> getAllMessages() throws SQLException {
		sql = "SELECT * FROM message";
		ArrayList<Message> messages = new ArrayList<>();
		connection = createConnection();
		s = connection.prepareStatement(sql);
		result = s.executeQuery();
		while (result.next())
			messages.add(new Message(result.getInt(1), userService.getUserById(result.getInt(2)), result.getString(3)));
		return messages;
	}

	public void deleteMessage(int id) throws SQLException {
		sql = "DELETE FROM message WHERE id =?";
		connection = createConnection();
		s = connection.prepareStatement(sql);
		s.setInt(1, id);
		s.execute();
	}
}
