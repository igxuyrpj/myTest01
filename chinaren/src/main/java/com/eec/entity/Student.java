package com.eec.entity;

public class Student {
	private Integer id;
	private String school;
	private String num;
	private String name;
	private String class1;
	private String college;
	private String phone;
	private String sex;
	private String age;
	private String major;
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClass1() {
		return class1;
	}
	public void setClass1(String class1) {
		this.class1 = class1;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public Student(Integer id, String school, String num, String name, String class1, String college, String phone,
			String sex, String age) {
		super();
		this.id = id;
		this.school = school;
		this.num = num;
		this.name = name;
		this.class1 = class1;
		this.college = college;
		this.phone = phone;
		this.sex = sex;
		this.age = age;
	}
	
	
	public Student( String school, String class1, String college,String major) {
		super();	
		this.school = school;
		this.class1 = class1;
		this.college = college;
		this.major = major;
		
	}
	public Student(String school, String num, String name, String class1, String college, String phone, String sex,
			String age, String major,String date) {
		super();
		this.school = school;
		this.num = num;
		this.name = name;
		this.class1 = class1;
		this.college = college;
		this.phone = phone;
		this.sex = sex;
		this.age = age;
		this.major = major;
		this.date = date;
	}
	public Student() {
		super();
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", school=" + school + ", num=" + num + ", name=" + name + ", class1=" + class1
				+ ", college=" + college + ", phone=" + phone + ", sex=" + sex + ", age=" + age + "]";
	}
}
