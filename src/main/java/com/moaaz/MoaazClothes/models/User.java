package com.moaaz.MoaazClothes.models;

public class User {

	private int id;
	private int role;
	private String name;
	private String email;
	private String password;
	private String address;

	public User() {

	}

	public User(int id, int role, String name, String email, String password, String address) {
		super();
		this.id = id;
		this.role = role;
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
	}

	public User(int role, String name, String email, String password, String address) {
		super();
		this.role = role;
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
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
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the role
	 */
	public int getRole() {
		return role;
	}

	/**
	 * @param role the role to set
	 */
	public void setRole(int role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", role=" + role + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", address=" + address + "]";
	}

}
