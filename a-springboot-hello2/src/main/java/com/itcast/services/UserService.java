package com.itcast.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itcast.entity.User;
import com.itcast.mapper.UserMapper;

@Service
public class UserService {
    @Autowired
	UserMapper userMapper;
    public User getUserById(Integer id){
    	System.out.println("运行查询方法.....");
    	return userMapper.getUserById(id);
    }
}
