package com.moaaz.MoaazClothes.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.moaaz.MoaazClothes.database.WaitingDatabase;
import com.moaaz.MoaazClothes.models.User;
import com.moaaz.MoaazClothes.models.Waiting;

@Service
public class WaitingService {

	WaitingDatabase waitingDatabase = new WaitingDatabase();

	public void putUserInWaiting(User user) {
		try {
			waitingDatabase.putUserInWaiting(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public ArrayList<Waiting> getAllUserThatInWaiting() {
		try {
			return waitingDatabase.getAllUsersInWaiting();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public void deleteUserFromWaiting(User user) {
		try {
			waitingDatabase.deleteUserFromWaiting(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
