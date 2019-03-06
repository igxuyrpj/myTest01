package com.pyh.cloud;

import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@Configuration
public class TestController {
    @Bean
    @LoadBalanced
	public RestTemplate getRestTemplate(){
		return new RestTemplate();
	}
    
    @GetMapping("/router")
    @ResponseBody
    public String router(){
    	RestTemplate tel=getRestTemplate();
    	String json=tel.getForObject("http://cloud-police/call/4", String.class);
         return json;
    }
    
    
    
    
    
    
}
