package com.pyh.cloud;

import java.util.Scanner;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class PoliceServer {
    public static void main(String[] args) {

		Scanner input=new Scanner(System.in);
		String port=input.nextLine();
		new SpringApplicationBuilder(PoliceServer.class).properties("server.port="+ port).run(args);
		
		//SpringApplication.run(PoliceServer.class, args);
	}

}
