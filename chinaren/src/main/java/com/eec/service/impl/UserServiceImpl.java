package com.eec.service.impl;

import com.eec.entity.Msg;
import com.eec.entity.Student;
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
	public void insertStudent(Student student) {
		// TODO Auto-generated method stub
		userMapper.insertStudent(student);
	}

	@Override
	public Student getStudent(String num) {
		// TODO Auto-generated method stub
		return userMapper.getStudent(num);
	}

	@Override
	public List<Student> getAllStuByWords(String college) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByWords(college);
	}

	@Override
	public List<Student> getAllStuByCollege(String college) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByCollege(college);
	}

	@Override
	public List<Student> getAllStuByClass1(String class1) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByClass1(class1);
	}

	@Override
	public List<Student> getAllStuByName(String name) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByName(name);
	}

	@Override
	public List<Student> getAllStu() {
		// TODO Auto-generated method stub
		return userMapper.getAllStu();
	}

	@Override
	public List<Student> ChooseConditions(Student student) {
		// TODO Auto-generated method stub
		return userMapper.ChooseConditions(student);
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		userMapper.updateStudent(student);
	}

	@Override
	public Student getStudentById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getStudentById(id);
	}

	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteStudent(id);
	}

	@Override
	public void insertMsg(Msg msg) {
		// TODO Auto-generated method stub
		userMapper.insertMsg(msg);
	}

	@Override
	public List<Msg> getAllMsg() {
		// TODO Auto-generated method stub
		return userMapper.getAllMsg();
	}


}
