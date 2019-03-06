package com.eec.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eec.entity.Student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;

@Controller
public class Controller1 {

	@Autowired
	private com.eec.service.UserService userService;
	
	
	@RequestMapping("/login")
	public String userLogin(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		 String num = request.getParameter("num");
	     String name = request.getParameter("name");
	     
	      HttpSession session = request.getSession();
	      
	      session.setAttribute("name", name);
	      session.setAttribute("num", num);
	      
	    /*  System.out.println(session.getAttribute("userPhone")+"111111111111111111");*/
	      
	/*      
     if ("admin".equals(name) && "111111".equals(pwd)) {
          response.sendRedirect("index.jsp");
	     }*/ 
	      if ("admin".equals(name) && "admin".equals(num)) {
	      	
	     	 return "redirect:/chinaren/admin";
	 	     }
     
	   
		Student stu = userService.getStudent(num);
		if(stu!=null&&name.equals(stu.getName())){
			
			return "redirect:/chinaren/index";
		}else{
			request.setAttribute("info", 1);
			return "forward:login.jsp";
		}
	}
	//注销登录
	@RequestMapping("/logOut")
	public String userlogOut(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		 String name = request.getParameter("phone");
	    //String pwd = request.getParameter("password");
	     
	     // request.getSession().setAttribute("userPhone", name);
	  
	     // HttpSession session = request.getSession();
	     // 
	     // session.setAttribute("userPhone", name);
	      
	    /*  System.out.println(session.getAttribute("userPhone")+"111111111111111111");*/
	      
		 request.getSession().removeAttribute("name");
		 request.getSession().invalidate();
    
		 return "redirect:/chinaren.jsp";
		
	}
	
	
	
	//验证用户名是否重复
	
	@RequestMapping("/check")
	
	public void CheckUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); 
		
		String num = request.getParameter("name");	
		
	/*	String name1=new String(name.getBytes("ISO8859-1"),"UTF-8");*/
		
		/*System.out.println(num+"sssssssssssssssssssssssss");*/
		Student user = userService.getStudent(num);
		if(user!=null){
			response.getWriter().write("1"); //存在
		}else{
			response.getWriter().write("0"); //不存在
		}
	}
	//获取学校信息
	@RequestMapping("/goSchool") 
	public String getAllStu(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8");  
		response.setCharacterEncoding("utf-8");
		String school=request.getParameter("school");
		
		if(school.equals("巢湖学院")){
			
			return "forward:login.jsp";
		}else{
			request.setAttribute("info", 1);
			return "forward:chinaren.jsp";


		}
		
	}
	
	@RequestMapping("/register")
	public String register(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		 String school = request.getParameter("school");
	     String num = request.getParameter("num");
	     String name = request.getParameter("name");
	     String class1 = request.getParameter("class");
	     String college = request.getParameter("college");
	     String phone = request.getParameter("phone");
	     String sex = request.getParameter("sex");
	     String age = request.getParameter("age");
	     String major = request.getParameter("major");
	    
	     String date = request.getParameter("date");
	     
	      Student stu=new Student(school, num, name, class1, college, phone, sex, age,major,date);
	      userService.insertStudent(stu);
	      
	      return "forward:login.jsp";
	}
	/*
	@RequestMapping("/forget.do")
	public String getPassword(HttpServletRequest request) {
		int mob;
		if(request.getSession().getAttribute("mob")!=null){
			mob= (int) request.getSession().getAttribute("mob");
		}else{
			return "forward:forgetpassword.jsp";
		}
		
		String code=String.valueOf(mob);
		String tel=request.getParameter("mobile");
		String ucode=request.getParameter("ucode");
		
		User user=  userService.getUserByPhone(tel);
		//if(user==null){
		//	return "forgetpassword.jsp"; 
		//}else
		if(ucode.equals(code)){
			//将数据加入到数据库
			String pwd=request.getParameter("password");
			user.setUserpassword(pwd);//更改密码
			userService.updatePass(user);//更新密码
			return "forward:login.jsp";
		//}else{
		//	return "forgetpassword.jsp";
		//}
		
	}else{
		return "forward:forgetpassword.jsp";
	}
}*/
}
