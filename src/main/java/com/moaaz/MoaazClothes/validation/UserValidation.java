package com.moaaz.MoaazClothes.validation;

import com.moaaz.MoaazClothes.models.User;

public class UserValidation {

	public String checkRegister(User user) {
		if (!validName(user.getName()))
			return "Invalid Name";
		if (!validEmail(user.getEmail()))
			return "Invalid Email";
		if (!validPassword(user.getPassword()))
			return "Password Should Contain small,capital Alphapet And Numbers";
		if (!validAddress(user.getAddress()))
			return "Invalid Address";
		return "";
	}

	private boolean validName(String name) {
		String[] names = name.split(" ");
		return (name.isBlank() || names.length < 2) ? false : true;
	}

	private boolean validEmail(String email) {
		int index = 0;
		String valid = "@gmail.com";
		for (int i = 0; i < email.length(); i++) {
			if (email.charAt(i) == valid.charAt(index) && i > 0) {
				index++;
			}
		}
		if (index == 10)
			return true;
		return false;
	}

	private boolean validPassword(String password) {
		boolean small = false, capital = false, number = false;
		for (int i = 0; i < password.length(); i++) {
			if (password.charAt(i) >= '0' && password.charAt(i) <= '9')
				number = true;

			if (password.charAt(i) >= 'a' && password.charAt(i) <= 'z')
				small = true;

			if (password.charAt(i) >= 'A' && password.charAt(i) <= 'Z')
				capital = true;
			if (small && number && capital)
				return true;
		}
		return false;
	}

	private boolean validAddress(String address) {
		return address.isBlank() ? false : true;
	}
}
