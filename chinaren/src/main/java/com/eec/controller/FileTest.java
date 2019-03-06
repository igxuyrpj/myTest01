package com.eec.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eec.entity.Msg;
import com.eec.entity.Student;
import com.eec.service.UserService;


import net.sf.json.JSONArray;


@Controller
@RequestMapping(value = "/chinaren")
public class FileTest {
	@Autowired
	private UserService service;
	
	
	//访问学校主页
	@RequestMapping("/index") 
	public String Forward(){
		
		return "index";//getList
		
	}
	
	//访问学校主页
		@RequestMapping("/index2") 
		public String Forward2(){
			
			return "index2";//getList
			
		}
		//访问学校主页
				@RequestMapping("/result") 
				public String result(){
					
					return "result";//getList
					
				}
				/*@RequestMapping("/result") 
				public ModelAndView  reVideoplayPage(ModelAndView  model){
					ModelAndView modelandview = new ModelAndView();
					//ShiPing video=empService.getVideosById(id);		
					//modelandview.addObject("video", video);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("result");
					return modelandview;
					//return "VideoplayPage";
						}		
				*/
				
				
				
				
				
				//访问校友录
				@RequestMapping("/college") 
				public String college(){
					
					return "college";//getList
					
				}
				//获取全部用户
				@RequestMapping("/admin") 
				public String getAllUser(Map<String,Object> map){
					map.put("lists", service.getAllStu());
					//JSONArray lists = JSONArray.fromObject(empService.getAll());
					//map.put("lists", lists);
					return "admin";//getList
					//System.out.println(lists);
					//return "Page1";
				}
				//编辑用户
				@RequestMapping("/update/{id}")
				public ModelAndView edit(@PathVariable("id") Integer id) { 
					ModelAndView modelandview = new ModelAndView();
					Student emp=service.getStudentById(id);
					//System.out.println(emp);
					modelandview.addObject("emp", emp);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("update");
					return modelandview;
				}
				//保存更改
				@RequestMapping("/updateSave")
				public String updateSave(Student student){
					service.updateStudent(student);
					//empService.updateVideos(shiping);
					return "redirect:/chinaren/admin";
				}
				@RequestMapping("/delete/{id}") 
				public String delete(@PathVariable("id") Integer id){
					service.deleteStudent(id);
					
					return "redirect:/chinaren/admin";
					//return "ListVideos";
				}
				//筛选条件
				@RequestMapping("/SelectCondition") 
				public String SelectCondition(){
					
					return "SelectCondition";//getList
					
				}
				//admin
				@RequestMapping("/alogin") 
				public String alogin(){
					
					return "redirect:/login.jsp";//getList
					
				}	
				//筛选条件结果
				@RequestMapping("/selectRes") 
				public String selectRes(){
					
					return "selectRes";//getList
					
				}	
				//留言
				@RequestMapping("/msg")
				public String msg(HttpServletRequest request) { 
					
					String msg=request.getParameter("Box");
					String name=(String)request.getSession().getAttribute("name");
					String num=(String)request.getSession().getAttribute("num");
					Msg message=new Msg(msg, name, num);
					//System.out.println(message);
					service.insertMsg(message);
					return "redirect:/chinaren/getMsg";
				}	
				//获取全部留言
				@RequestMapping("/getMsg") 
				public String getMsg(Map<String,Object> map){
					map.put("lists", service.getAllMsg());
					//JSONArray lists = JSONArray.fromObject(empService.getAll());
					//map.put("lists", lists);
					return "index2";//getList
					//System.out.println(lists);
					//return "Page1";
					//return "redirect:/chinaren/index2";
				}
				/*@RequestMapping("/selectRes") 
				public ModelAndView  reVideoplayPage(ModelAndView  model){
					ModelAndView modelandview = new ModelAndView();
					//ShiPing video=empService.getVideosById(id);		
					//modelandview.addObject("video", video);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("selectRes");
					return modelandview;
					//return "VideoplayPage";
						}	
				*/
				@RequestMapping("/personal")
				public ModelAndView personal(HttpServletRequest request) { 
					String num=(String)request.getSession().getAttribute("num");
					ModelAndView modelandview = new ModelAndView();
					Student stu=service.getStudent(num);
					//System.out.println(emp+"1111111111111111111");
					modelandview.addObject("emp", stu);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("personal");
					return modelandview;
				}	
				
	//根据搜索条件获取学生信息
	@RequestMapping("/getStusByCondition") 
	public String getAllUser(Map<String,Object> map,@RequestParam(value = "search", required = false) String conditions,HttpServletRequest request){
		String para=request.getParameter("class");		
		if(para.equals("系别")){
		
		map.put("lists", service.getAllStuByCollege(conditions));
		/*System.out.println(map.get("lists"));*/
		//JSONArray lists = JSONArray.fromObject(empService.getAll());
		//map.put("lists", lists);
		return "index3";//getList
		//System.out.println(lists);
		//return "Page1";
		}else if(para.equals("班级")){
			
			map.put("lists", service.getAllStuByClass1(conditions));
		/*System.out.println(map.get("lists"));*/
			return "index3";
		}else{
			map.put("lists", service.getAllStuByName(conditions));
			/*System.out.println(map.get("lists"));*/
			return "index3";
		}
	}
	//分页显示视频列表
		@RequestMapping(value="/getList",produces = "application/json; charset=utf-8") 
		@ResponseBody
		public String getList(HttpServletRequest request,HttpServletResponse response) throws IOException{
			//map.put("lists", empService.getAll());
			response.setContentType("application/json; charset=utf-8");  
			JSONArray data = JSONArray.fromObject(service.getAllStu());
			//return "ListVideos";getList
			//System.out.println(lists);
			//System.out.println(data.toString());
			//Map<String,Object> map=new HashMap<String,Object>();
			//response.getWriter().write(data.toString());
			//map.put("datas", data);
			//System.out.println("9999999999944444"+data);
			//System.out.println(data.toString());
			//response.getWriter().print(data.toString());
			//return "Page";
			return data.toString();
			//return null;
		}
		
      //筛选条件select
		@RequestMapping(value="/select",produces = "application/json; charset=utf-8")
		@ResponseBody
		public String select(Map<String,Object> map,HttpServletRequest request,HttpServletResponse response) throws IOException{
			request.setCharacterEncoding("UTF-8");
			//response.setContentType("text/html;charset=UTF-8"); 
			response.setContentType("application/json; charset=utf-8");  
			String str = request.getParameter("data");	
			String [] arr = str.split(",");
			String school=arr[0];
			String college=arr[1];
			String major=arr[2];
			String class1=arr[3];
			Student student=new Student();
			if(!school.equals("全部")){
				student.setSchool(school);		
			}else{
				student.setSchool(null);
			}
			if(!college.equals("全部")){
				student.setCollege(college);
			}else{
				student.setCollege(null);
			}
			if(!major.equals("全部")){
				student.setMajor(major);		
			}else{
				student.setMajor(null);
			}
			if(!class1.equals("全部")){
				student.setClass1(class1);	
			}else{
				student.setClass1(null);
			}
					//System.out.println(student);
			//map.put("lists", service.ChooseConditions(student));
			JSONArray data = JSONArray.fromObject(service.ChooseConditions(student));
			//System.out.println(map.get("lists"));
			//System.out.println("1111111111111111");
			
			return data.toString();
			
		}
		
		
		
		
		
		/*
		//筛选条件select
				@RequestMapping("/select")
				
				public String select(Map<String,Object> map,HttpServletRequest request,HttpServletResponse response) throws IOException{
					request.setCharacterEncoding("UTF-8");
					response.setContentType("text/html;charset=UTF-8"); 
					
					String str = request.getParameter("data");	
					String [] arr = str.split(",");
					String school=arr[0];
					String college=arr[1];
					String major=arr[2];
					String class1=arr[3];
					Student student=new Student();
					if(!school.equals("全部")){
						student.setSchool(school);		
					}else{
						student.setSchool(null);
					}
					if(!college.equals("全部")){
						student.setCollege(college);
					}else{
						student.setCollege(null);
					}
					if(!major.equals("全部")){
						student.setMajor(major);		
					}else{
						student.setMajor(null);
					}
					if(!class1.equals("全部")){
						student.setClass1(class1);	
					}else{
						student.setClass1(null);
					}
							//System.out.println(student);
					map.put("lists", service.ChooseConditions(student));
					//System.out.println(map.get("lists"));
					return "selectRes";
					
				}*/
	
		/*//获取学生全部信息
		@Autowired
		private UserServiceImpl userService;
		@RequestMapping("/getAllUser") 
		public String getAllUser(Map<String,Object> map){
			map.put("lists", userService.getAllUser());
			//JSONArray lists = JSONArray.fromObject(empService.getAll());
			//map.put("lists", lists);
			return "ListUser";//getList
			//System.out.println(lists);
			//return "Page1";
		}*/
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
	
}
