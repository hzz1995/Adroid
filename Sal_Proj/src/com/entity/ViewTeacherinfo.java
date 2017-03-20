package com.entity;

public class ViewTeacherinfo {
	private String name;
	private int id;
	private String sex;
	private int age;
	private String number;
	private String card;
	
	
	public ViewTeacherinfo() {

	}
	public ViewTeacherinfo(String name, int id, String sex,int age,
			String number, String card) {
		super();
		this.name = name;
		this.id = id;
		this.sex = sex;
		this.age=age;
		this.number = number;
		this.card = card;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	

	
	
}
