package com.itcast.entity;

public class User {
 private Integer id;
 private String role;
 private String name;
 private String pwd;
public User(String role, String name, String pwd) {
	super();
	this.role = role;
	this.name = name;
	this.pwd = pwd;
}
public User() {
	super();
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
@Override
public String toString() {
	return "User [id=" + id + ", role=" + role + ", name=" + name + ", pwd=" + pwd + "]";
}
 
}
