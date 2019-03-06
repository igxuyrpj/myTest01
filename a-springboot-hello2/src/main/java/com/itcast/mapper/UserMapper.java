package com.itcast.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.itcast.entity.User;


@Mapper
public interface UserMapper {
     @Select("select * from user1 where id=#{id}")
	public User getUserById(Integer id);
}
