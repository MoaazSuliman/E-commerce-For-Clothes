package com.moaaz.MoaazClothes.service;

import java.text.SimpleDateFormat;
import java.util.Date;


public class Method {

	public  String getDate() {
		String pattern = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

		return simpleDateFormat.format(new Date());
	}

}
