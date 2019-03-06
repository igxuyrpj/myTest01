package com.eec.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eec.entity.Msg;
import com.eec.entity.Student;

@Repository
public interface UserMapper {
	public Student getStudent(String num);
	public List<Student> getAllStuByWords (String value);
	public void insertStudent(Student student);
	public List<Student> getAllStuByClass1 (String class1);
	public List<Student> getAllStuByCollege (String college);
	public List<Student> getAllStuByName (String value);
	public List<Student> getAllStu ();
	public Student getStudentById(Integer id);
	//筛选条件
	public List<Student> ChooseConditions (Student student);
	
		public void updateStudent(Student student);
	public void deleteStudent(Integer id);
	public List<Msg> getAllMsg ();
	public void insertMsg(Msg msg);
}
