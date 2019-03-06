<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>华中师范学院印尼研究中心</title>
  <!-- css,js -->
  <link href="../css/reset.css" rel="stylesheet" />
  <link href="../css/public.css" rel="stylesheet" />
  <link href="../css/index.css" rel="stylesheet" />
  <script type="text/javascript">
  function del(){ 
	  if(!confirm("确认要删除？")){ 
	  window.event.returnValue = false; 
	  } 
	  } </script>
 </head>
 <body>
 <div class="public-header">
	<div class="public-header-top">
		<div class="public-container">
			<div class="public-left">
				<p>欢迎您: ${name }</p>
			</div>
			<ul class="public-header-list">
				<!-- <li class="item"><i class="call"></i><a href="#">联系我们</a></li> -->
				<!-- <li class="item"><i class="home"></i><a href="#">登录/注册</a></li> -->
				<li class="item"><i class="sc"></i><a href="${pageContext.request.contextPath}/logOut">退出</a></li>
			</ul>
		</div>
	</div>
	<div class="public-header-middle public-container clearfix">
		<div class="public-left">
			<div class="logo"><a href="#"></a></div>
		</div>
		<div class="public-right">
	     <form action="${pageContext.request.contextPath}/chinaren/getStusByCondition" method="post">
			<div class="public-search">
			<select style="width: 55px;height: 30px;" name="class">
		  <option>系别</option>
		  <option>班级</option>
		   <option>找人</option>
		</select>
			
			
			
		<!-- <select style="width: 55px;height: 30px;">
		  <option>系别</option>
		  <option>班级</option>
		</select> -->
				<input type="text" name="search" class="public-input-text"/>
				<input type="submit" class="public-input-btn" value=""/>
			</div>
			</form>
		</div>
	</div>
	<div class="public-nav public-container">
		<ul>
			<li class="item"><a href="${pageContext.request.contextPath}/chinaren/index">网站首页</a></li>
			<li class="item"><a href="${pageContext.request.contextPath}/chinaren/selectRes">校友录</a></li>
			<li class="item"><a href="${pageContext.request.contextPath}/chinaren/getMsg">校园之声</a></li>
			
			<li class="item"><a href="${pageContext.request.contextPath}/chinaren/personal">个人中心</a></li>
			<!-- <li class="item"><a href="#">印尼经济</a></li> -->
			<li class="item"><a href="${pageContext.request.contextPath}/chinaren/alogin">管理员登入</a></li>
		</ul>
	</div>
 </div>
 <div class="index-main">
	<!-- banner -->
	<div class="public-container">
		<!-- <div class="index-bannner"><img src="../images/banner.jpg" alt="banner" title="banner"/></div> -->
	
	<!-- 公告 -->
	<!-- <div class="index-notice mt10">
		<span>公告通知:</span>
		<ul>
			<li class="item"><a href="#">“21世纪海上丝绸之路和中国印尼战略合作”国际研讨会邀请函和回执表1</a></li>
			<li class="item"><a href="#">“21世纪海上丝绸之路和中国印尼战略合作”国际研讨会邀请函和回执表2</a></li>
			<li class="item"><a href="#">“21世纪海上丝绸之路和中国印尼战略合作”国际研讨会邀请函和回执表3</a></li>
			<li class="item"><a href="#">“21世纪海上丝绸之路和中国印尼战略合作”国际研讨会邀请函和回执表4</a></li>
			<li class="item"><a href="#">“21世纪海上丝绸之路和中国印尼战略合作”国际研讨会邀请函和回执表5</a></li>
		</ul>
		<div class="index-notice-arrow">
			<i class="arrow-left"></i>
			<i class="arrow-right"></i>
		</div>
	</div> -->
	<!-- 最新文章图文列表 -->
	 <div class="index-newarticle mt10">
		
		
		
		<c:if test="${empty requestScope.lists }">
<h3>没有找到相关信息！</h3>
</c:if>
  <c:if test="${!empty requestScope.lists }">
    <table border="1" cellpadding="7" align="center" style="text-align: center; width: 90%" >
    <tr>
        <th>序号</th>
        <th>学校名称</th>
        <th>系别</th> 
         <th>专业</th> 
        <th>姓名</th>
         <th>学号</th>
          <th>班级</th>
           <th>性别</th>          
            <th>联系方式</th>
              <th>年龄</th>
              <th colspan="2">操作</th>
    </tr>
      <c:forEach items="${requestScope.lists }" var="stu">
      <tr>
           <td>${stu.id }</td>
         <td>${stu.school }</td>
          <td>
         ${stu.college }
         </td>
          <td>${stu.major }</td>
           <td>${stu.name }</td>
            <td>${stu.num }</td>
             <td>${stu.class1 }</td>
             <td>${stu.sex }</td>
            <td>${stu.phone }</td>
             <td>${stu.age }</td>
             
            <td><a href="${pageContext.request.contextPath }/chinaren/update/${stu.id }">编辑</a></td>
             <td><a href="${pageContext.request.contextPath }/chinaren/delete/${stu.id }" onclick="return del()">删除</a></td>
           
      </tr>
    <%--   	<!-- 删除弹出框 -->
	<div class="banDel">
		<div class="delete">
			<div class="close">
				<a><img src="../img/shanchu.png" /></a>
			</div>
			<p class="delP1">你确定要删除此条记录吗？</p>
			<p class="delP2">
				<a href="${pageContext.request.contextPath }/videos/delete/${emp.id }" class="ok yes">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
      
       --%>
      </c:forEach>
       
    </table>
   
  <%-- <div style="height:50px;width:80px">
					<a style="display: inline-block;width: 160px;height: 40px;background-color: #47a4e1;line-height: 35px;text-align: center;color: #fff;margin-top: 5px;margin-left: 20px;font-size: 16px;text-decoration: none;" href="${pageContext.request.contextPath }/banner.jsp">返回&nbsp;&nbsp;+</a>
				</div> --%>
  
  </c:if>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</div> 
	<div class="clearfix"></div>
	<!-- 功能展示和中印尼关系部分 -->
	
	<div class="clearfix"></div>
	
 </div>
 <div class="clearfix"></div>
 </div>
 <div class="public-footer mt15">
	<!-- <div class="public-footer-top">
		<div class="public-container">
			<ul>
				<li class="item"><a href="#">网站首页</a></li>
				<li class="item"><a href="#">关于我们</a></li>
				<li class="item"><a href="#">科研团队</a></li>
				<li class="item"><a href="#">中国.印尼关系</a></li>
				<li class="item"><a href="#">印尼政治</a></li>
				<li class="item"><a href="#">印尼经济</a></li>
				<li class="item"><a href="#">印尼宗教文化</a></li>
				<li class="item"><a href="#">印尼对外关系</a></li>
			</ul>
		</div>
	</div> -->
	<div class="public-footer-middle">
		<div class="public-container">
			<p class="title">友情链接：</p>
			<p class="public-friendlinks">
				<a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a>
			</p>
			<p class="public-friendlinks"> <a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a><a href="#">巢湖学院</a>
			</p>
		</div>
	</div>
	<div class="public-footer-bottom">
		<div class="public-container">
			<div class="public-text">
				<p><span>版权所有：巢湖学院研究中心</span><span>地址：安徽省合肥巢湖经济开发区 邮政编码：238000 皖ICP备020533号</span></p>
				<p>本站属于非盈利学术网站 站内文章及言论不代表本站立场 如有版权问题敬请告知 我们会立即处理</p>
			</div>
		</div>
	</div>
 </div>
 </body>
</html>

