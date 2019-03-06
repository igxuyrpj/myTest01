package com.shiro.controller;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//@RequestMapping("/get")
@Controller
public class Cotro {
	@Autowired
	Person person;
	
	@RequestMapping("/hello")
	@ResponseBody
	public String hello(){
		return "hello World!"+person.getName()+"1"+person.getSex()+"1"+person.getAge();
		
	}
	@RequestMapping("/getlogin")
	public String login(){
		//return person.getName().toString();
		//System.out.println("111111111111");
		return "/login";
	}
	
	@RequestMapping("/add")
	public String test(){
		System.out.println("add");
		return "/user/add";
	}
	
	@RequestMapping("/update")
	public String update(){
		return "/user/update";
	}
	//测试thymeleaf
	@RequestMapping("/html")
	public String html(Model model){
		model.addAttribute("name","zhangsanlisi");
		//返回test.html页面
		return "/test";
	}
}
