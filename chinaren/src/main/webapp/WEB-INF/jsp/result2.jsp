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
  
  
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<!-- <script type="text/javascript" src="../js/back-endPage.js"></script> --> <!-- 后台分页 -->
    <script type="text/javascript" src="../js/front-endPage.js"></script><!-- 前台分页 -->
    <script type="text/javascript" src="js/shujv2.js"></script>
	
	<link rel="stylesheet" type="text/css" href="../css/table.css">
  
	
	
	
	
	
	
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
			<li class="item"><a href="#">网站首页</a></li>
			<li class="item"><a href="#">校友录</a></li>
			<li class="item"><a href="#">科研团队</a></li>
			<li class="item"><a href="#">中国.印尼关系</a></li>
			<li class="item"><a href="#">印尼政治</a></li>
			<li class="item"><a href="#">印尼经济</a></li>
			<li class="item"><a href="#">印尼宗教文化</a></li>
			<li class="item"><a href="#">印尼对外关系</a></li>
		</ul>
	</div>
 </div>
 <div class="index-main">
	<!-- banner -->
	<div class="public-container">
	
	 <div class="index-newarticle mt10" style="height:600px;width:100%;border: 1px solid; ">
	
	
	
	
	
		
	<div id="histroyBox"></div>

		
		
		
		<script type="text/javascript">
		
	 $(function () {
		 
	    	$.ajax({
	            type: "POST",
	            url: "http://localhost:8080/chinaren/chinaren/getList",
	            dataType: "json",
	            contentType:"application/x-www-form-urlencoded; charset=UTF-8",
	            success: function(data1) {
	            	//var data = JSON.stringify(data1);
	            	var data =data1;
	            	
	            	$('#histroyBox').CJJTable({
	         	       'title':["姓名","学号","系别","专业","年龄","联系方式","性别","学校"],//thead中的标题 必填
	         	       //'body':["taskCode","startAddr","endAddr","varietiesTypeName","createDate","customerName"],//tbody td 取值的字段 必填
	         		   'body':["name","num","college","major","age","phone","sex","school"],
	         	       'display':[1,1,1,1,1,2],//隐藏域，1显示，2隐藏 必填
	         	       'pageNUmber':10,//每页显示的条数 选填
	         	       'pageLength':data.length,//选填
	         	       'url':data,//数据源 必填
	         	       dbTrclick:function(e){//双击tr事件
	         	        alert(e.find('.taskCode').html())
	         	       }
	         	    }); 
	            }
	            });
		
		 
		 
	});
	
	
	   //前台分页的样子
	    /*  $('#histroyBox').CJJTable({
	       'title':["装点","卸点","运输货物","下单日期","作者"],//thead中的标题 必填
	       //'body':["taskCode","startAddr","endAddr","varietiesTypeName","createDate","customerName"],//tbody td 取值的字段 必填
		   'body':["id","college","marjon","age","sex","school"],
	       'display':[1,1,1,1,1,2],//隐藏域，1显示，2隐藏 必填
	       'pageNUmber':10,//每页显示的条数 选填
	       'pageLength':data.length,//选填
	       'url':data,//数据源 必填
	       dbTrclick:function(e){//双击tr事件
	        alert(e.find('.taskCode').html())
	       }
	    });  */
	  /*   //后台分页的样子
	   $('#histroyBox').CJJTable({
	        'title':["装点","卸点","运输货物","下单日期"],//thead中的标题 必填
	        'body':["contactName","contactMobliePhone","carrierName","taskNum","taskCustomerExpectPrice","taskCustomerBudgetFreight"],//tbody td 取值的字段 必填
	        'display':[1,1,1,1,2,2],//隐藏域，1显示，2隐藏 必填
	        'pageJson':{
	            "taskId":528710,
	            "pageSize":100,//ajax请求参数中的每页展示数量 选填
	            "token":"yJUmunFeG3REqisYAmCfeA"
	        },
	        'url':'/api/quoted/quotedList',//数据源 必填
	        dbTrclick:function(that){ //双击tr事件
	            alert(that.find('.contactName').html())
	        }
	    }); */
	    
	    
	 
	</script>
	
		
		
		
	</div> 
	<div class="clearfix"></div>
	<!-- 功能展示和中印尼关系部分 -->
	<div class="index-fun mt10">
		<div class="index-menu border">
			<ul>
				<li class="item"><i class="people"></i><a href="">研究人员风采</a></li>
				<li class="item"><i class="file"></i><a href="">文件管理中心</a></li>
				<li class="item"><i class="char"></i><a href="">研究资料中心</a></li>
				<li class="item"><i class="cg"></i><a href="">最新成果展</a></li>
			</ul>
			<div class="index-contact">
				<i></i>
				<div class="contact-text">
					<p>电子邮箱:sujinw@qq.com</p>
					<p>联系电话:1888888888</p>
				</div>
			</div>
		</div>
		<div class="index-fun-article border ml10">
			<div class="fun-article-title">
				<div class="title-left">
					<i></i>
					<span>中印尼关系</span>
					<div class="title-bg"></div>
				</div>
				<div class="title-right"><i></i></div>
			</div>
			<div class="func-artic-left fl">
				<img src="../images/list-pic.png" alt="" title="" />
			</div>
			<ul class="index-fun-list fr">
				<li class="item"><i></i><a href=""> 中国社会科学网：多路径促进中</a><span class="item-time">04/28</span></li>
				<li class="item"><i></i><a href=""> 中新网湖北：华中师大密切与印尼...</a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 新华社：“２１世纪海上丝绸之路... </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> “印度尼西亚研究中心”评审会顺利举行  </a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href="">	印度尼西亚动态月报</a><span class="item-time">04/2</span></li>
				<li class="item"><i></i><a href=""> 中国社会科学网：多路径促进中</a><span class="item-time">04/2</span></li>
			</ul>
		</div>
	</div>
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
				<a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a>
			</p>
			<p class="public-friendlinks"> <a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a><a href="#">华中师范大学</a>
			</p>
		</div>
	</div>
	<div class="public-footer-bottom">
		<div class="public-container">
			<div class="public-text">
				<p><span>网站点击人数:314992人</span><span>文章总数:1846篇</span><span>文章总浏览量:235263人次</span></p>
				<p><span>版权所有：华中师范大学印尼研究中心</span><span>地址：武汉市洪山区珞喻路152号</span></p>
				<p>本站属于非盈利学术网站 站内文章及言论不代表本站立场 如有版权问题敬请告知 我们会立即处理</p>
			</div>
		</div>
	</div>
 </div>
 </body>
</html>

