package com.itcast.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.itcast.entity.User;

//@Configuration//配置类
//@ComponentScan(value="com.itcast")//扫描组件（@controller，@service，@repository @Component）
/*@ComponentScan(value="com.itcast",excludeFilters={
		@Filter(type=FilterType.ANNOTATION,classes={Controller.class})
})*///排除组件的扫描
//excludeFilters=Filter[],指定扫描的时候按照什么规则排除那些组件，
//includeFilters=Filter[],指定扫描的组件只需要扫描包含的哪些组件。
public class MainConfig {
	
	@Bean("user")
	public User user(){
		return new User();
		
	}
	
}
