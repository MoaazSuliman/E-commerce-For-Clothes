package com.moaaz.MoaazClothes.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class UserSecurity {

	public boolean checkSUserSecurity(HttpServletRequest request) {
		return (request.getSession().getAttribute("user") != null) ? true : false;
	}
}
