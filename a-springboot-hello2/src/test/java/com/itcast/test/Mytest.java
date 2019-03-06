package com.itcast.test;


import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.itcast.config.MainConfig;

public class Mytest {
	@SuppressWarnings("resource")
	@Test	
public void test01(){
	AnnotationConfigApplicationContext applicationContext=new AnnotationConfigApplicationContext(MainConfig.class);
	String[] str=applicationContext.getBeanDefinitionNames();
	for(String name:str){
		System.out.println(name);
	}
}
}
