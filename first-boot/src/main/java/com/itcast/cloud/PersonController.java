package com.itcast.cloud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.context.ApplicationContext;
@RestController
public class PersonController {
    @Autowired
	private ApplicationContext ctx;
    
	@RequestMapping("/getPer/{id}")
	public Person getPerson(@PathVariable Integer id ){
		Person person=new Person();
		person.setAge(233);
		person.setId(id);
		//person.setName("张三");
		person.setName(ctx.getEnvironment().getProperty("test.user.name"));
		return person;
	}
	
	
}
