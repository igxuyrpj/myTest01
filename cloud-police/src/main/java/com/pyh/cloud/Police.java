package com.pyh.cloud;

public class Police {
	private Integer id;
	private String name;
	private String msg;
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
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Police(Integer id, String name, String msg) {
		super();
		this.id = id;
		this.name = name;
		this.msg = msg;
	}
	public Police() {
		super();
	}
	

}
