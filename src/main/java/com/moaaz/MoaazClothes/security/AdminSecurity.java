package com.moaaz.MoaazClothes.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class AdminSecurity {

	public boolean checkAdminSecurity(HttpServletRequest request) {
		return request.getSession().getAttribute("admin") != null ? true : false;
	}
}
