package com.entity;

public class Login_user {
	int id ;
	String psw;
	String role;
	
	
	public Login_user(int id, String psw, String role) {
		super();
		this.id = id;
		this.psw = psw;
		this.role = role;
	}

	public Login_user() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	public String getRole() {
		return role;
	}
	public void setPosition(String role) {
		this.role = role;
	}
	

	
}
