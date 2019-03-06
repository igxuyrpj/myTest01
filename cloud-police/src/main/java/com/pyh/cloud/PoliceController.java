package com.pyh.cloud;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PoliceController {
	 @RequestMapping(value="/call/{id}",method=RequestMethod.GET,
   		  produces=MediaType.APPLICATION_JSON_VALUE)  
	 public Police findPerson(@PathVariable("id")Integer id,HttpServletRequest request){
		 Police person=new Police(id,"Crazyit",request.getRequestURL().toString());
   	  return person;
	 }
}
