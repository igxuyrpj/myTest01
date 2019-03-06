package com.itcast.test;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.itcast.shiro.ShiroConfig;

public class TestMain {
	public static void main(String[] args) {

        // @Configuration注解的spring容器加载方式，用AnnotationConfigApplicationContext替换ClassPathXmlApplicationContext
        ApplicationContext context = new AnnotationConfigApplicationContext(ShiroConfig.class);

        // 如果加载spring-context.xml文件：
        // ApplicationContext context = new
        // ClassPathXmlApplicationContext("spring-context.xml");
      
        //Person tb = (Person) context.getBean("getPerson");
       // System.out.println(tb.getName()+"     sfdlskdfjlskf");
        //System.out.println(tb.getFilterChainDefinitionMap()+"     sfdlskdfjlskf");
        
        
        ShiroFilterFactoryBean tbb = (ShiroFilterFactoryBean) context.getBean("shirFilter");
        System.out.println(tbb.getFilterChainDefinitionMap()+"    11111111111111");
    }
}
