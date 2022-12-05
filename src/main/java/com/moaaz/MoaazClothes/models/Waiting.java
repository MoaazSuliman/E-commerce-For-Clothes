package com.moaaz.MoaazClothes.models;

public class Waiting {
	private int id;
	private User user;// user_id in database.

	public Waiting(int id, User user) {
		super();
		this.id = id;
		this.user = user;
	}

	public Waiting(User user) {
		super();
		this.user = user;
	}

	public Waiting() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Waiting [id=" + id + ", user=" + user + "]";
	}

}
