package com.moaaz.MoaazClothes.models;

public class Product {

	private int id;
	private String name;
	private String detail;
	private double price;
	private String url;

	public Product(int id, String name, String detail, double price, String url) {
		super();
		this.id = id;
		this.name = name;
		this.detail = detail;
		this.price = price;
		this.url = url;
	}

	public Product(String name, String detail, double price, String url) {
		super();
		this.name = name;
		this.detail = detail;
		this.price = price;
		this.url = url;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the detail
	 */
	public String getDetail() {
		return detail;
	}

	/**
	 * @param detail the detail to set
	 */
	public void setDetail(String detail) {
		this.detail = detail;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", detail=" + detail + ", price=" + price + ", url=" + url
				+ "]";
	}

}
