package com.moaaz.MoaazClothes.models;

public class Message {

	private int id;
	private User user;
	private String message;

	public Message(User user_id, String message) {
		super();
		this.user = user_id;
		this.message = message;
	}

	public Message(int id, User user_id, String message) {
		super();
		this.id = id;
		this.user = user_id;
		this.message = message;
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
	 * @return the user_id
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user_id the user_id to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

}
