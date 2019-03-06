package com.pyh.cloud;

public class Police {
	private Integer id;
	private String name;
	@Override
	public String toString() {
		return "Police [id=" + id + ", name=" + name + "]";
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
	public Police(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Police() {
		super();
	}
	

}
