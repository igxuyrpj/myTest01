package com.eec.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eec.entity.Driver;
import com.eec.entity.Info;

@Repository
public interface UserMapper {
	
	
	//筛选条件insertInfo
	public void insertInfo(Info info);
	public List<Info> getAllInfo ();
	public void deleteDriverByIdCard(String idCard);
	public Info getInfoByIdCard(String idCard);
	public Info getInfoByIdCard2(String idCard);
	
	public void insertDriver(Driver driver);
	public void deleteDriver(Integer id);
	public List<Driver> getDriverById (Integer id);
	public List<Driver> getAllDriver ();
	public Driver getDriverByIdCard (String idCard);
	 public void updateDriver(Driver driver);
	
}
