package com.moaaz.MoaazClothes.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.moaaz.MoaazClothes.database.MessageDatabase;
import com.moaaz.MoaazClothes.models.Message;

@Service
public class MessageService {
	private MessageDatabase messageDatabase = new MessageDatabase();

	public ArrayList<Message> getAllMessages() {
		try {
			return messageDatabase.getAllMessages();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public void sendMessage(Message message) {
		try {
			messageDatabase.sendMessage(message);
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
	}

	public void deleteMessage(int id) {
		try {
			messageDatabase.deleteMessage(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
