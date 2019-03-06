package com.eec.service;

import com.eec.entity.Msg;
import com.eec.entity.Student;


import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserService {
	public Student getStudent(String num);
	public List<Student> getAllStuByWords (String college);
	public List<Student> getAllStuByClass1 (String class1);
	public List<Student> getAllStu ();
	public List<Student> ChooseConditions (Student student);
	public Student getStudentById(Integer id);
	
	public List<Student> getAllStuByName (String name);
	public List<Student> getAllStuByCollege (String college);
	public void insertStudent(Student student);
	
	public void updateStudent(Student student);
	public void deleteStudent(Integer id);
	/*public List<User> getAllUser ();*/
	public void insertMsg(Msg msg);
	public List<Msg> getAllMsg ();
}
