package com.moaaz.MoaazClothes.models;

public class Sale {

	private int id;
	private User user;// user_id  in database.
	private Product product;// product_id in database.
	private String date;
	// false ==> stay in cart
	// true ==> in waiting from admin to send it.
	private boolean cart;

	public Sale(User user, Product product, String date, boolean cart) {
		super();
		this.user = user;
		this.product = product;
		this.date = date;
		this.cart = cart;
	}

	public Sale(int id, User user, Product product, String date, boolean cart) {
		super();
		this.id = id;
		this.user = user;
		this.product = product;
		this.date = date;
		this.cart = cart;
	}

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
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
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}

	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return the cart
	 */
	public boolean isCart() {
		return cart;
	}

	/**
	 * @param cart the cart to set
	 */
	public void setCart(boolean cart) {
		this.cart = cart;
	}

}
