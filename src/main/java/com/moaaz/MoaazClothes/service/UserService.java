package com.moaaz.MoaazClothes.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.moaaz.MoaazClothes.database.UserDatabase;
import com.moaaz.MoaazClothes.models.User;

@Service
public class UserService {
	UserDatabase userdb = new UserDatabase();

	public ArrayList<User> getUsers() {
		try {
			return userdb.getUsers();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public void register(User user) {
		try {
			userdb.insertNewUser(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public void deleteUser(int id) {
		try {
			userdb.deleteUser(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public User getUser(String email, String password) {
		try {
			return userdb.getUserByEmailAndPassword(email, password);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public User getUserById(int id) {
		try {
			return userdb.getUserById(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
		return null;
	}

}
