package com.itcast.cloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class FirstApp {
	public static void main(String[] args) {
		//SpringApplication.run(FirstApp.class, args);
		//new SpringApplicationBuilder(FirstApp.class).properties("spring.config.location=classpath:/properties.yml").run(args);
	
		new SpringApplicationBuilder(FirstApp.class).properties("spring.profiles.active=windows").run(args);
	}

}
