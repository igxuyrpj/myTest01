package com.eec.entity;

public class Info {
	private Integer id;
	private String name;
	private String idCard;
	private String date;
	private String time;
	private String subject;
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Info(Integer id, String name, String idCard, String date, String time) {
		super();
		this.id = id;
		this.name = name;
		this.idCard = idCard;
		this.date = date;
		this.time = time;
	}
	public Info() {
		super();
	}
	@Override
	public String toString() {
		return "Info [name=" + name + ", idCard=" + idCard + ", date=" + date + ", time=" + time + "]";
	}
	
	public Info(String name, String idCard, String date, String time, String subject) {
		super();
		this.name = name;
		this.idCard = idCard;
		this.date = date;
		this.time = time;
		this.subject = subject;
	}
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	

}
