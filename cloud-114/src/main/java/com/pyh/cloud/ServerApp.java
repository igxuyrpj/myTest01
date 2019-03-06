package com.pyh.cloud;

import java.util.Scanner;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class ServerApp {

	public static void main(String[] args) {
		
		Scanner input=new Scanner(System.in);
		String profiles=input.nextLine();
		new SpringApplicationBuilder(ServerApp.class).profiles(profiles).run(args);
		//TODO:还没有完成的模块
		//SpringApplication.run(ServerApp.class, args);
	}
}
