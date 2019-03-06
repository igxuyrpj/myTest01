package com.pyh.cloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class PoliceServer {
    public static void main(String[] args) {
		SpringApplication.run(PoliceServer.class, args);
	}

}
