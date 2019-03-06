package com.eec.entity;

public class Driver {
	private Integer id;
	private String name;
	private String idCard;
	private String phone;
	private String pwd;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Driver(Integer id, String name, String idCard, String phone, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.idCard = idCard;
		this.phone = phone;
		this.pwd = pwd;
	}
	public Driver(String name, String idCard, String phone, String pwd) {
		super();
		this.name = name;
		this.idCard = idCard;
		this.phone = phone;
		this.pwd = pwd;
	}
	public Driver() {
		super();
	}
	

}
