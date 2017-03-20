package com.entity;

public class SalQuery {
	private int id;
	private int jbgz;
	private int ksf;
	private int gwjt;
	public SalQuery() {
		super();
		// TODO Auto-generated constructor stub
	}


	public SalQuery(int id, int jbgz, int ksf, int gwjt) {
		super();
		this.id = id;
		this.jbgz = jbgz;
		this.ksf = ksf;
		this.gwjt = gwjt;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getJbgz() {
		return jbgz;
	}


	public void setJbgz(int jbgz) {
		this.jbgz = jbgz;
	}


	public int getKsf() {
		return ksf;
	}


	public void setKsf(int ksf) {
		this.ksf = ksf;
	}


	public int getGwjt() {
		return gwjt;
	}


	public void setGwjt(int gwjt) {
		this.gwjt = gwjt;
	}


	public int getCount(){
		return this.jbgz+this.ksf+this.gwjt;
	}


	
}
