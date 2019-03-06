package com.eec.entity;

public class Msg {
	private Integer id;
	private String textMsg;
	private String name;
	private String num;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTextMsg() {
		return textMsg;
	}
	public void setTextMsg(String textMsg) {
		this.textMsg = textMsg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public Msg(Integer id, String textMsg, String name, String num) {
		super();
		this.id = id;
		this.textMsg = textMsg;
		this.name = name;
		this.num = num;
	}
	public Msg( String textMsg, String name, String num) {
		super();
		
		this.textMsg = textMsg;
		this.name = name;
		this.num = num;
	}
	public Msg() {
		super();
	}
	

}
