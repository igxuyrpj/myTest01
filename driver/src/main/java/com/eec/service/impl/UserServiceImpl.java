package com.eec.service.impl;

import com.eec.entity.Driver;
import com.eec.entity.Info;

import com.eec.mapper.UserMapper;
import com.eec.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	

	
	@Override
	public void insertDriver(Driver driver) {
		// TODO Auto-generated method stub
		userMapper.insertDriver(driver);
	}

	@Override
	public void deleteDriver(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteDriver(id);
	}

	@Override
	public List<Driver> getDriverById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getDriverById(id);
	}

	@Override
	public List<Driver> getAllDriver() {
		// TODO Auto-generated method stub
		return userMapper.getAllDriver();
	}


	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		
	}

	

	@Override
	public Driver getDriverByIdCard(String idCard) {
		// TODO Auto-generated method stub
		return userMapper.getDriverByIdCard(idCard);
	}

	@Override
	public List<Info> getAllInfo() {
		// TODO Auto-generated method stub
		return userMapper.getAllInfo();
	}

	@Override
	public void deleteDriverByIdCard(String idCard) {
		// TODO Auto-generated method stub
		userMapper.deleteDriverByIdCard(idCard);
	}

	@Override
	public Info getInfoByIdCard(String idCard) {
		// TODO Auto-generated method stub
		return userMapper.getInfoByIdCard(idCard);
	}

	@Override
	public void insertInfo(Info info) {
		// TODO Auto-generated method stub
		userMapper.insertInfo(info);
	}

	@Override
	public Info getInfoByIdCard2(String idCard) {
		// TODO Auto-generated method stub
		return userMapper.getInfoByIdCard2(idCard);
	}

	@Override
	public void updateDriver(Driver driver) {
		// TODO Auto-generated method stub
		userMapper.updateDriver(driver);
	}

	


}
