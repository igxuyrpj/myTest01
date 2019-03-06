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
	
	
  
  
  
  
  
  
  <style type="text/css">
 *{margin:0;padding:0;list-style-type:none;} 
a,img{border:0;}
.body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
/* filter */
#filter{width:620px;height:154px;margin-left:70px;font-size:12px;}
#filter dl{clear:both;padding:4px 0;}
#filter dt,dd{display:block;float:left;width:auto;padding:0;margin:3px 0;}
#filter dt{height:14px;padding-bottom:2px;font-weight:bold;color:#333333;}
#filter dd{color:#005AA0;margin-right:8px;}
#filter a{cursor:pointer;}
.seling{background-color:#005AA0;color:#FFFFFF;}
.seled{background-color:#005AA0;color:#FFFFFF;}
</style>

<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
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
	     <form action="${pageContext.request.contextPath}/chinaren/getvaluesByCondition" method="post">
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
		
		
		<div id="filter">
        <dl>
            <dt>学校：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>巢湖学院</a></div></dd>
            <dd><div><a>北京大学</a></div></dd>
            <dd><div><a>清华大学</a></div></dd>
            
            
        </dl>
        <dl>
            <dt>系别：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>信息工程学院</a></div></dd>
            <dd><div><a>数学系</a></div></dd>
            <dd><div><a>艺术系</a></div></dd>
            
            
        </dl>
        <dl>
            <dt>专业：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>软件工程</a></div></dd>
            <dd><div><a>物联网工程</a></div></dd>
            
            
        </dl>
        <dl>
            <dt>班级：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>一班</a></div></dd>
            <dd><div><a>二班</a></div></dd>
            <dd><div><a>三班</a></div></dd>
            <dd><div><a>四班</a></div></dd>
        </dl>
          </div>
		
		
		
		
		
	 <div id="tb" class="index-newarticle mt10" style="height:600px;width:100%;border: 1px solid; ">
	 
		<div id="histroyBox"></div>
	 
	 
	 
	 
	 
	 
		<!-- <div>
		   <table border="1" cellpadding="7" align="center" style="text-align: center; width: 95%">
    <tr>
        <td width="100px;">序号</td>
        <td width="100px;">学校名称</td>
        <td width="100px;">系别</td> 
         <td width="100px;">专业</td> 
        <td width="100px;">姓名</td>
         <td width="100px;">学号</td>
          <td width="100px;">班级</td>
           <td width="100px;">性别</td>          
            <td width="100px;">联系方式</td>
              <td width="100px;">年龄</td>
              <td width="100px;">操作</td>
    </tr></table>
		</div> -->
		<!-- <div id="tb">
		
		
		
		
		
		
		</div>
			 -->
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
	
 </div>
 <div class="clearfix"></div>
 </div>
 <div class="public-footer mt15">
	
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
<script type="text/javascript">
    $(function () {
        //选中filter下的所有a标签，为其添加hover方法，该方法有两个参数，分别是鼠标移上和移开所执行的函数。
        $("#filter a").hover(
            function () {
                $(this).addClass("seling");
            },
            function () {
                $(this).removeClass("seling");
            }
        );


        //选中filter下所有的dt标签，并且为dt标签后面的第一个dd标签下的a标签添加样式seled。(感叹jquery的强大)
        $("#filter dt+dd a").attr("class", "seled"); /*注意：这儿应该是设置(attr)样式，而不是添加样式(addClass)，
                                                      不然后面通过$("#filter a[class='seled']")访问不到class样式为seled的a标签。*/       

        //为filter下的所有a标签添加单击事件
        $("#filter a").click(function () {
            $(this).parents("dl").children("dd").each(function () {
				//下面三种方式效果相同（第三种写法的内部就是调用了find()函数，所以，第二、三种方法是等价的。）
                //$(this).children("div").children("a").removeClass("seled");
				//$(this).find("a").removeClass("seled");
				$('a',this).removeClass("seled");
            });

            $(this).attr("class", "seled");

           /*  alert(RetSelecteds());  *///返回选中结果
            var res=RetSelecteds();
            $.ajax({
            	        url : "${pageContext.request.contextPath }/chinaren/select", //后台查询验证的方法
            	         data : {
            	                "data" : res
            	            }, //携带的参数
            	            type : "post",
            	            dataType: "json",
            	            contentType:"application/x-www-form-urlencoded; charset=UTF-8",
                        success : function(data) {
                        	//alert(data);
                        	if(data==""){
                        		 $("#tb").empty();
                                 var str = "";
                                 $("#tb").html("<h2>没有相关信息</h2>");
                        		
                        	}
                        	
                        	else{
                        		alert(data);
                        	 //$("#tb").empty();
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
                            /*  var str = "";
                         	 $.each(data, function(n, value){
             		    		 // alert(value.path); 
             		    	   
             		     	    if(data[0]!=""||data[0]!=null){
             		     	    	
             		    		   str +='<table border="1" cellpadding="7" align="center" style="text-align: center; width: 95%"><tr> <td width="100px;">'+value.id+'</td><td width="100px;">'+value.school+'</td><td width="100px;">'+value.college+'</td><td width="100px;">'+value.major+'</td>'+
             		    			 ' <td width="100px;">'+value.name+'</td><td width="100px;">'+value.num+'</td><td width="100px;">'+value.class1+'</td><td width="100px;">'+value.sex+'</td><td>'+value.phone+'</td> <td width="100px;">'+value.age+'</td><td width="100px;"></td></tr></table>';
             	
             		     	    }
             		     	    }); 
                         	
                         	  $("#tb").append(str); */
                        	}
                   	  
                         }
                     });
                
            
            
            
            
            
            
        });
        /* alert(RetSelecteds());  *///返回选中结果
    });

    function RetSelecteds() {
        var result = "";
        $("#filter a[class='seled']").each(function () {
            result += $(this).html()+",";
        });
        return result;
    }
</script>