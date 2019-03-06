package com.itcast.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itcast.entity.User;
import com.itcast.services.UserService;

@RestController
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping("/getUser/{id}")
	public String getUser(@PathVariable("id") Integer id){
		User user=userService.getUserById(id);
		return user.toString();
	}

}
