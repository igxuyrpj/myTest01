package com.eec.service;

import com.eec.entity.Driver;
import com.eec.entity.Info;


import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserService {
	
	 public void updateDriver(Driver driver);
	public Info getInfoByIdCard2(String idCard);

	public void deleteStudent(Integer id);
	/*public List<User> getAllUser ();*/
	
	
	public void insertDriver(Driver driver);
	public void deleteDriver(Integer id);
	public List<Driver> getDriverById (Integer id);
	public List<Driver> getAllDriver ();
	public Driver getDriverByIdCard (String idCard);
	
	
	public List<Info> getAllInfo ();
	public void deleteDriverByIdCard(String idCard);
	public Info getInfoByIdCard(String idCard);
	public void insertInfo(Info info);
	
	
}
