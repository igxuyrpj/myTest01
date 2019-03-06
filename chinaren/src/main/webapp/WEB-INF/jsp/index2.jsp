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
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript">
  function checkIP(){//js表单验证方法
     var text=document.getElementById("Box").value;//通过id获取需要验证的表单元素的值
     if(text==""){//当上面获取的值为空时
       alert("留言不能为空哦！");//弹出提示
       return false;//返回false（不提交表单）
     }
     return true;//提交表单
  }
  </script>
  
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
	
	
	 <div class="index-newarticle mt10" >
		
<div>
<form action="${pageContext.request.contextPath}/chinaren/msg" method="post">
    <textarea id="Box" name="Box" style="width: 400px;height: 120px;"></textarea>
     <input type="submit" onclick="return checkIP();" id="submit" value="留言" style="width: 49px;height: 30px"/>

</form>
<div style="height: 700px;overflow:scroll;">
 <c:if test="${empty requestScope.lists }">
<h3>没有找到相关信息！</h3>
</c:if>
  <c:if test="${!empty requestScope.lists }">
    <table align="center" style="text-align: center; width: 100%">
    <tr> <th width="100px">姓名</th>
        <th>留言</th>
       
       
    </tr> 
      <c:forEach items="${requestScope.lists }" var="stu">
      <tr>
          <td width="100px">${stu.name }</td>
          <td>${stu.textMsg }</td>
           
           
             </tr>
	<!-- 删除弹出框  end-->
      
      
      </c:forEach>
       
    </table>
  
  </c:if>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	



</div>




</div>
		
		
		<%-- <c:if test="${empty requestScope.lists }">
<h3>没有找到相关信息！</h3>
</c:if>
  <c:if test="${!empty requestScope.lists }">
    <table border="1" cellpadding="7" align="center" style="text-align: center; width: 100%">
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
              <th>入学时间</th>
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
             <td>${stu.date }</td>
             
            <td><a href="${pageContext.request.contextPath }/videos/update/${emp.id }">编辑</a></td>
             <td><a href="${pageContext.request.contextPath }/videos/delete/${emp.id }">删除</a></td>
            
           <td><a href="${pageContext.request.contextPath }/videos/update/${emp.id }"><img class="operation"
									src="../img/update.png"></a> <a onclick="return del()" href="${pageContext.request.contextPath }/videos/delete/${emp.id }"><img class="operation delban"
								src="../img/delete.png"></a></td>
								
			<td><a style="text-decoration: none" href="${pageContext.request.contextPath }/videos/WatchVideo/${emp.id }">预览</a></td> 
            <!-- <td><a href="${pageContext.request.contextPath }/videos/WatchVideo/${emp.id }">播放</a></td>    -->        
      </tr>
      	<!-- 删除弹出框 -->
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
      
      
      </c:forEach>
       
    </table>
   
  <div style="height:50px;width:80px">
					<a style="display: inline-block;width: 160px;height: 40px;background-color: #47a4e1;line-height: 35px;text-align: center;color: #fff;margin-top: 5px;margin-left: 20px;font-size: 16px;text-decoration: none;" href="${pageContext.request.contextPath }/banner.jsp">返回&nbsp;&nbsp;+</a>
				</div>
  
  </c:if>
		
		
		
		
		
		 --%>
		
		
		
		
		
		
		
		
		
	</div> 
	<div class="clearfix"></div>
	<!-- 功能展示和中印尼关系部分 -->
	
	<div class="clearfix"></div>
	<!-- 部分栏目最新内容部分 -->
	<!-- <div class="index-category-new mt15">
		<div class="index-col-3 border ml10">
			<div class="col-title">
				<span class="title-text fl">外事活动与学术交流</span>
				<div class="col-more fr"><a href=""><i></i></a></div>
			</div>
			<div class="col-list clearfix">
				<div class="index-lately">
					<div class="lately-date fl">
						<span class="date-day">28</span>
						<span class="date-other">2016-04</span>
					</div>
					<div class="lately-cont">
						<p class="lately-title"><a href="">全国高校国际政治研究会</a></p>
						<span class="lately-des">全国高校国际政治研究会2015年年会 圆满..</span>
					</div>
				</div>
				<ul class="index-col-list list3">
					<li class="item"><i></i><a href=""> 中国社会科学网：多路径促进中</a><span class="item-time">04/28</span></li>
					<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>	
				</ul>
			</div>			
		</div>
		<div class="index-col-3 border ml10">
			<div class="col-title">
				<span class="title-text fl">外事活动与学术交流</span>
				<div class="col-more fr"><a href=""><i></i></a></div>
			</div>
			<div class="col-list clearfix">
				<div class="index-lately">
					<div class="lately-date fl">
						<span class="date-day">28</span>
						<span class="date-other">2016-04</span>
					</div>
					<div class="lately-cont">
						<p class="lately-title"><a href="">全国高校国际政治研究会</a></p>
						<span class="lately-des">全国高校国际政治研究会2015年年会 圆满..</span>
					</div>
				</div>
				<ul class="index-col-list list3">
					<li class="item"><i></i><a href=""> 中国社会科学网：多路径促进中</a><span class="item-time">04/28</span></li>
					<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>	
				</ul>
			</div>			
		</div><div class="index-col-3 border ml10">
			<div class="col-title">
				<span class="title-text fl">外事活动与学术交流</span>
				<div class="col-more fr"><a href=""><i></i></a></div>
			</div>
			<div class="col-list clearfix">
				<ul class="index-col-list list-num">
					<li class="item"><i></i><a href=""> 中国社会科学网：多路径促进中</a><span class="item-time">04/28</span></li>
					<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
					<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
				</ul>
			</div>
		</div>
	</div> -->
	<!-- <div class="clearfix"></div>
	<div class="ad-banner mt10"><img src="../images/ad-banner.jpg" alt="" title=""/></div> -->
	<!-- 栏目最新图文调用 -->
	<!-- <div class="index-category-new mt10">
		<div class="index-col-3 border ml10">
			<div class="col-new-title">
				<span class="title-text blue fl">印尼政治</span>
				<div class="col-more fr"><a href=""><i></i></a></div>
			</div>
			<ul class="index-col-list list1 list-pic clearfix">
				<li class="item pic-item">
					<a href="">
						<img src="../images/list-pic-small.jpg" alt="" title="" />
						<span class="item-title">全国高校国际政治研究会 2015年年会...</span>
					</a>
				</li>
				<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
			</ul>
		</div>
		<div class="index-col-3 border ml10">
			<div class="col-new-title">
				<span class="title-text blue fl">印尼政治</span>
				<div class="col-more fr"><a href=""><i></i></a></div>
			</div>
			<ul class="index-col-list list1 list-pic clearfix">
				<li class="item pic-item">
					<a href="">
						<img src="../images/list-pic-small.jpg" alt="" title="" />
						<span class="item-title">全国高校国际政治研究会 2015年年会...</span>
					</a>
				</li>
				<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
			</ul>
		</div>
		<div class="index-col-3 border ml10">
			<div class="col-new-title">
				<span class="title-text blue fl">印尼政治</span>
				<div class="col-more fr"><a href=""><i></i></a></div>
			</div>
			<ul class="index-col-list list1 list-pic clearfix">
				<li class="item pic-item">
					<a href="">
						<img src="../images/list-pic-small.jpg" alt="" title="" />
						<span class="item-title">全国高校国际政治研究会 2015年年会...</span>
					</a>
				</li>
				<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
			</ul>
		</div>
	</div> -->
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

