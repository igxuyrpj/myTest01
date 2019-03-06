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

import com.eec.entity.Driver;
import com.eec.entity.Info;

import com.eec.service.UserService;

import net.sf.json.JSONArray;


@Controller
@RequestMapping(value = "/driver")
public class FileTest {
	@Autowired
	private UserService service;
	
	
	//访问主页
	@RequestMapping("/index") 
	public String Forward(){
		
	return "redirect:/index.jsp";
		
	}
	
	@RequestMapping("/reserve") 
	public String reserve(){
		
		return "reserve";//getList
		
	}
	@RequestMapping("/reserve1") 
	public String reserve1(){
		
		return "reserve1";//getList
		
	}
	//访问学校主页
		@RequestMapping("/index2") 
		public String Forward2(){
			
			return "index2";//getList
			
		}
		
				@RequestMapping("/subject")
				public String subject(HttpServletRequest request) { 
					String idCard=(String)request.getSession().getAttribute("name");
					 Info info=service.getInfoByIdCard2(idCard);
					if(info==null){

						String subject=request.getParameter("subject");
						String date=request.getParameter("date");
						String time=request.getParameter("datepicker");
						String idCard1=(String)request.getSession().getAttribute("name");
						String name=(service.getInfoByIdCard(idCard1)).getName();
						//System.out.println(message);
						Info info1=new Info(name, idCard, date, time,subject);
						
						service.insertInfo(info1);
						return "redirect:/driver/getPerson";
						
						
					}else{
						request.setAttribute("info", 1);
						return "reserve";
						//return "redirect:/index.jsp";
					}
					
					
					
					
				
				}	
				//我的预约
				@RequestMapping("/getPerson")
				public ModelAndView personal(HttpServletRequest request) { 
					String idCard=(String)request.getSession().getAttribute("name");
					ModelAndView modelandview = new ModelAndView();
					Info info=service.getInfoByIdCard2(idCard);
					//System.out.println(emp+"1111111111111111111");
					modelandview.addObject("emp", info);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("personal");
					return modelandview;
				}	
				//个人中心
				@RequestMapping("/getPerson2")
				public ModelAndView personal2(HttpServletRequest request) { 
					String idCard=(String)request.getSession().getAttribute("name");
					ModelAndView modelandview = new ModelAndView();
					Driver driver=service.getDriverByIdCard(idCard);
				//System.out.println(driver.toString()+"1111111111111111111");
					modelandview.addObject("emp", driver);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("personal2");
					return modelandview;
				}	
				
				
				
				
				@RequestMapping("/out") 
				public String college(HttpServletRequest request){
					String idCard=(String)request.getSession().getAttribute("name");
					service.deleteDriverByIdCard(idCard);
						//System.out.println("444444444444444444");			
						
					
					return "index2";//getList
					
				}
				//获取全部已预约用户
				@RequestMapping("/getOrder") 
				public String getAllInfo(Map<String,Object> map){
					map.put("lists", service.getAllInfo());
					//JSONArray lists = JSONArray.fromObject(empService.getAll());
					//map.put("lists", lists);
					return "order";//getList
					//System.out.println(lists);
					//return "Page1";
				}
				
				
				//获取全部用户
				@RequestMapping("/admin") 
				public String getAllUser(Map<String,Object> map){
					map.put("lists", service.getAllDriver());
					//JSONArray lists = JSONArray.fromObject(empService.getAll());
					//map.put("lists", lists);
					return "admin";//getList
					//System.out.println(lists);
					//return "Page1";
				}
				//编辑用户
				@RequestMapping("/update/{idCard}")
				public ModelAndView edit(@PathVariable("idCard") String idCard) { 
					ModelAndView modelandview = new ModelAndView();
					Driver emp=service.getDriverByIdCard(idCard);
					//System.out.println(emp);
					modelandview.addObject("emp", emp);
					//modelandview.setViewName("EditVideos");
					modelandview.setViewName("update");
					return modelandview;
				}
				//保存更改
				@RequestMapping("/updateSave")
				public String updateSave(Driver driver,HttpServletRequest request){
					String idCard=(String)request.getSession().getAttribute("name");
                    if(!idCard.equals("341227199411109512")){
                    	service.updateDriver(driver);
                    	return "redirect:/driver/index2";
                    }else {
					service.updateDriver(driver);
					//empService.updateVideos(shiping);
					return "redirect:/driver/admin";
                    }
				}
				@RequestMapping("/delete/{id}") 
				public String delete(@PathVariable("id") Integer id){
					service.deleteDriver(id);
					
					return "redirect:/driver/admin";
					//return "ListVideos";
				}
				@RequestMapping("/deleteOrder/{idCard}") 
				public String deleteOrder(@PathVariable("idCard") String idCard){
					service.deleteDriverByIdCard(idCard);;
					
					return "redirect:/driver/getOrder";
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
	
		
		
		
		
		
		
	
}
