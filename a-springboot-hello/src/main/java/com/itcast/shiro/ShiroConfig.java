package com.itcast.shiro;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.mgt.SecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.itcast.test.Person;
/**
 * shiro的配置类
 * @author Administrator
 *
 */
//@Configuration
public class ShiroConfig {
	public ShiroConfig() {
        System.out.println("ShiroConfig容器启动初始化。。。");
    }
	
	
	//Subject:用户主体(把操作交给SecurityManager)
	//SecurityManager:安全管理器（关联realm）
    //Realm: shrio连接数据的桥梁

/**
 * 创建ShiroFilterFactoryBean
 */
	@Bean
    public ShiroFilterFactoryBean shirFilter(DefaultWebSecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        // 必须设置 SecurityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        // setLoginUrl 如果不设置值，默认会自动寻找Web工程根目录下的"/login.jsp"页面 或 "/login" 映射
        shiroFilterFactoryBean.setLoginUrl("/getlogin");
        // 设置无权限时跳转的 url;
        shiroFilterFactoryBean.setUnauthorizedUrl("/getlogin");

        // 设置拦截器
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        //游客，开发权限
        filterChainDefinitionMap.put("/guest/**", "anon");
        //用户，需要角色权限 “user”
        filterChainDefinitionMap.put("get/add", "authc");
        //管理员，需要角色权限 “admin”
        filterChainDefinitionMap.put("get/update", "authc");
        //开放登陆接口
        filterChainDefinitionMap.put("/login", "anon");
        //其余接口一律拦截
        //主要这行代码必须放在所有权限设置的最后，不然会导致所有 url 都被拦截
        filterChainDefinitionMap.put("/**", "authc");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        System.out.println("Shiro拦截器工厂类注入成功");
        return shiroFilterFactoryBean;
    }
	/*@Bean
	public ShiroFilterFactoryBean filterFactoryBean(@Qualifier("securityManager") DefaultWebSecurityManager securityManager){
		ShiroFilterFactoryBean shiroFilterFactoryBean=new ShiroFilterFactoryBean();
		//设置安全管理器securityManager
		shiroFilterFactoryBean.setSecurityManager(securityManager);
		//添加Shiro内置过滤器
	*//**
	 * Shiro 内置的过滤器，可以实现权限相关的拦截器
	 * 常用的过滤器
	 * anon:无需认证（登录），可以访问
	 * authc:必须认证才可以访问
	 * user:如果使用remeberMe的功能，可以直接访问
	 * perms：该资源必须得到资源权限才可以访问
	 * role：该资源必须得到角色权限才可以访问
	 *//*
		Map<String,String> filterMap=new LinkedHashMap<String,String>();
		filterMap.put("get/add", "authc");
		filterMap.put("get/update", "authc");
		filterMap.put("/*", "authc");
		//sff.setLoginUrl("/getlogin");
		System.out.println(filterMap.get("add"));
		shiroFilterFactoryBean.setFilterChainDefinitionMap(filterMap);
		
		return shiroFilterFactoryBean;
	}*/
	

/**
 * 创建DefaultWebSecurityManager
 */
    @Bean
    public DefaultWebSecurityManager securityManager(@Qualifier("userRealm") UserRealm userRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        // 设置realm.
        securityManager.setRealm(userRealm);
        return securityManager;
    }

	/*public DefaultWebSecurityManager getSecurityManager(@Qualifier("userRealm") UserRealm userRealm ){
		DefaultWebSecurityManager ds=new DefaultWebSecurityManager();
		//关联realm
		ds.setRealm(userRealm);
		
		return ds;
	}*/
	
	
	
	/**
	 * 创建Realm
	 */
	@Bean(name="userRealm")
    public UserRealm getRealm(){
	return new UserRealm();
       }
	
	
	@Bean
    public Person getPerson(){
		Person person=new Person();
		person.setName("lisi");
	return person;
       }

}
