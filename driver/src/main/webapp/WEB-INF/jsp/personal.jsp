<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>服务管理平台</title>
         <link rel="icon" href="favicon.ico" type="image/x-icon" />
            <link rel="shortcut icon" href="favicon.png" type="image/x-icon" />
                <link href="../static/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
                <link href="../static/css/font-awesome.min.css" rel="stylesheet" />
                <!--[if IE 7]>
                <link href="../static/css/font-awesome-ie7.min.css" rel="stylesheet">
                <![endif]-->
                <link href="../static/css/main.css" rel="stylesheet" media="screen"/>
                <script type="text/javascript" src="../static/js/ie6.js"></script>
                <script type="text/javascript" src="../static/jsthird/respond.js"></script>
                
                
                
                
 <style>
	/* body{font-family:'microsoft yahei';} */
	em{font-style:normal;font-size:14px;}
	.form-group {position: relative;width:140px;}
	.form-group-txt{height:32px;line-height:32px;padding:0 10px;}
	.form-group-select {/*padding-left: 1px;*/}
	.form-control,
	.simulation-input {
		width: 100%;
		line-height: 16px;
		font-size: 12px;
		color: #4b555b;
		background: none;
		outline: none;
		border: 1px solid #d3dcdd;
		background-color: #fff;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		-ms-box-sizing: border-box;
		box-sizing: border-box;
		margin: 0 -1px;
		padding: 7px 8px;
		*padding-left: 0;
		*padding-right: 0;
		*text-indent: 8px;
		*float: left;
		transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
	}
	.float-left{float:left;}



	form {
		max-width: 500px;
		width: 400px;
		margin: 24px auto;
		font-size: 28px;
	}

	label {
		display: block;
		margin: 10px 10px 15px;
		font-size: 24px;
	}

	input {
		display: block;
		width: 100%;
		height: 40px;
		font-size: 22px;
		margin-top: 10px;
		padding: 6px 10px;
		color: #333;
		border: 1px solid #CCC;
		box-sizing: border-box;
	}

	meter, progress {
		display: block;
		width: 100%;
		margin-top: 10px;
	}

	.btn {
		margin-top: 30px;
	}

	.btn input {
		color: #FFF;
		background-color: green;
		border: 0 none;
		outline: none;
		cursor: pointer;
	}



</style>

<script src="js/jquery-1.2.6.min.js" type=text/javascript></script>
<script src="js/formValidator_min.js" type="text/javascript" charset="UTF-8"></script>
<script src="js/formValidatorRegex.js" type="text/javascript" charset="UTF-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.formValidator.initConfig({formid:"form1",debug:false,submitonce:true,
		onerror:function(msg,obj,errorlist){
			//$.map(errorlist,function(msg1){alert(msg1)});
			alert(msg);
		}
	});
	$("#t_UserName").formValidator({onshow:"5-10个字符",onfocus:"5-10个字符",oncorrect:"该用户名可以注册"}).inputValidator({min:5,max:10,onerror:"输入有误"}).regexValidator({regexp:"username",datatype:"enum",onerror:"格式有误"});
	$("#iptNickName").formValidator({onshow:"至少4个字符",onfocus:"至少4个字符",oncorrect:"通过"}).inputValidator({min:4,empty:{leftempty:false,rightempty:false,emptyerror:"输入有误"},onerror:"输入有误"});
	$("#t_UserPass").formValidator({onshow:"至少6个字符",onfocus:"至少6个字符",oncorrect:"密码合法"}).inputValidator({min:6,empty:{leftempty:false,rightempty:false,emptyerror:"输入有误"},onerror:"输入有误"});
	$("#t_RePass").formValidator({onshow:"请再次输入密码",onfocus:"请再次输入密码",oncorrect:"密码一致"}).inputValidator({min:6,empty:{leftempty:false,rightempty:false,emptyerror:"输入有误"},onerror:"输入有误"}).compareValidator({desid:"t_UserPass",operateor:"=",onerror:"密码不一致"});	
	$("#iptName").formValidator({onshow:"至少4个字符",onfocus:"至少4个字符",oncorrect:"通过"}).inputValidator({min:4,empty:{leftempty:false,rightempty:false,emptyerror:"输入有误"},onerror:"输入有误"});
	$("#iptCard").formValidator({onshow:"15或18位的身份证",onfocus:"15或18位的身份证",oncorrect:"输入正确"}).functionValidator({fun:isCardID});
	$("#t_Email").formValidator({onshow:"6-100个字符",onfocus:"6-100个字符",oncorrect:"恭喜你,你输对了",defaultvalue:"@"}).inputValidator({min:6,max:100,onerror:"长度非法"}).regexValidator({regexp:"^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",onerror:"格式不正确"});
});
function test1(obj)
{
	if(obj.value=="全角字符当做1个长度")
	{
		$.formValidator.getInitConfig("1").wideword = false;
		obj.value = "全角字符当做2个长度";
	}
	else
	{
		$.formValidator.getInitConfig("1").wideword = true;
		obj.value = "全角字符当做1个长度";
	}
	
}

function del(){ 
	  if(!confirm("是否确定取消预约？")){ 
	  window.event.returnValue = false; 
	  } 
	  } 
	 

</script>
     </head>
        <body>
                <div class="header">
                    

<div style="display: none">
<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
</div>
<div id="toptool" class="top-nav">
	<div class="container">
				<div style="font-size: 16px;color: white;">用户:${name}</div>		
		 <div class="login-pane">
            <button class="btn btn-mini pane" data-type="register" onclick="window.location.href='${pageContext.request.contextPath}/logOut'">&nbsp;&nbsp;退出</button>
            
        </div> 
		<div class="login-pane">
			<button class="btn btn-mini pane" onclick="window.location.href='../index.jsp'">&nbsp;&nbsp;个人登录</button>
			
		</div>
		<div class="login-pane">
            <button class="btn btn-mini pane" data-type="register" onclick="window.location.href='../register1.jsp'">&nbsp;&nbsp;用户注册</button>
            
        </div> 
	</div>
</div>
<div class="header_body ui-header">
	<div class="container">
		<div class="row">
			<a class="span5 header-logo dpB fL cb" href="#" title="回到平台首页">
				<i class="ui-header ico-logo dpIB fL"></i>
				<span class="header-logo-top fL">巢湖市公安局交通管理局</span><br/>
				<span class="header-logo-middle fL">交通安全综合服务管理平台</span>
			
			</a>
			<div id="mainnav" class="main-nav span7 taR">
				<a style="color: blue;" href="${pageContext.request.contextPath}/driver/index" style="margin-left:5px">首页</a>
                <a style="color: blue;" href="${pageContext.request.contextPath}/driver/index2">业务办理</a>
                <a style="color: blue;" href="${pageContext.request.contextPath}/driver/getPerson">我的预约</a>
                <a style="color: blue;" href="${pageContext.request.contextPath}/driver/getPerson2">个人中心</a>
                <a style="color: blue;" href="${pageContext.request.contextPath}/driver/index">管理员界面</a>
				</div>
		</div>
	</div>
</div>




                </div>
                

<style>
    .footer{
        margin-top:52px;
    }
    .control-group{
        z-index: inherit!important;
    }
</style>
<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
<div class="container main mt20">

    <div class="row" style=" height:460px; width:1083px; background: #fff url(../static/css/images/login-bg1.jpg) right bottom no-repeat;">
    <!--登录开始-->
    
    <div style="margin-left: -132px;margin-top:62px;">
   <form action="${pageContext.request.contextPath }/driver/index2" method="post">
	<table border="1" width="375px" height="400px" style="text-align: center;">
			<tr>
				<td width="80px;">用户名</td>
				<td><label>${emp.name}  </label></td>
				<%-- <td><input style="height:20px; " id="id" type="text" name="id" value="${emp.id }"></td> --%>
			</tr>
			<tr>
				<td width="80px;">身份证号码</td>
				<td><label>${emp.idCard }  </label></td>
				<%-- <td><input style="height:20px; " id="id" type="text" name="id" value="${emp.id }"></td> --%>
			</tr>
			<tr>
				<td>预约科目</td>
				<td><label>${emp.subject}  </label></td>
				<%-- <td><input  style="height:20px; "  id="username"  type="text" name="username" value="${emp.username}"></td> --%>
			</tr>
			 
			<tr>
				<td> 日期</td>
				<td><label>${emp.date}</label></td>
				<%-- <td><input  style="height:20px; "  id="userpassword"  type="text" name="userpassword" value="${emp.userpassword}"></td> --%>
			</tr>
			<tr>
				<td> 时间</td>
				<td><label>${emp.time}</label></td>
				<%-- <td><input  style="height:20px; "  id="userpassword"  type="text" name="userpassword" value="${emp.userpassword}"></td> --%>
			</tr>
			
				<td colspan="2">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
					<!-- <input style="width: 64px;height: 30px;"  type="submit" value="确定"> -->
					<button type="submit" style="width: 64px;height: 30px;">确&nbsp;  定</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;<button onclick="return del()" style="width: 64px;height: 30px;" ><a href="${pageContext.request.contextPath }/driver/out">取消预约</a></button>
				</td>
				
			</tr>
	</table>
</form>
    </div>
    
		
<script>
	var score = document.getElementById('score');
	var level = document.getElementById('level');

	score.oninput = function () {
		level.value = this.value;
	}
</script>
    
    
    
    
    
    
    
    
    
<!--登录结束-->  
        <!-- <div class="span12 login">

            <ul class="nav nav-tabs" id="login-tabs">
                <li class=" active  ">
                    <a href="#" data-toggle="tab">
                       
                        个人登录</a>
                </li>
                <li class="">
                    <a href="#qyjgdl" data-toggle="tab">
                        <i class="icon-building"></i>
                        单位登录</a>
                </li>
            </ul>
            <div class="tab-content" style="overflow: inherit;">
                <div id="grdl" class="tab-pane fade  active in  tsc-form ">
                    <div class="login-msg"><p></p></div>
                    <form id="login1" class="form-horizontal" action="#" method="POST">

                        <input type="hidden" name="usertype" value="1"/>
                        <input type="hidden" name="systemid" value="main"/>

                        <div class="control-group">
                            <label class="control-label" for="inputId">用户名</label>

                            <div class="controls">
                                <input type="text" name="username" id="inputId"  value=""
                                       placeholder="请输入注册填写的身份证明号码"
                                       data-valid="required"
                                       data-valid-required="::请输入身份证明号码" style="text-transform:uppercase"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">密码</label>

                            <div class="controls">
                                <input type="password" name="password" autocomplete="off" id="inputPassword"
                                       placeholder="请输入密码"
                                       data-valid="required" data-valid-required="::请输入密码"/>
                            </div>
                        </div>
                        <div class="control-group">
                            
                            <div id="dom_id" style="padding-left:130px;width: 300px;"></div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" name="rememberMe" value="true" id="remember-1" />
                                    <label for="remember-1">记住用户名</label>
                                </label>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="button" id="btnGryhdl" class="btn btn-primary">
                                                                                               登录
                            </button>
                            <a href="/views/register.html"  style="margin-left: 20px">立即注册</a>
                            
                            
                            
                        </div>
                        <input type='hidden' id='csessionid' name='csessionid'/>
                        <input type='hidden' id='sig' name='sig'/>
                        <input type='hidden' id='token' name='token'/>
                        <input type='hidden' id='scene' name='scene'/>
                    </form>

                </div>

                
            </div>
        </div> -->
        
        <div class="span12" style=" margin-top: 50px;">
            <div class="msg-warning">
                <p>
                    友情提示：当前公安交通管理部门：<span style="color: #10218b">
                     巢湖市
                    </span>。
                    如果您不是在南京市注册，请至<a href="#">部级平台</a>登录。
                    
                    
                </p>
            </div>
        </div>
    </div>
    <!--span9 end-->
    <!--row end-->
</div>

<script type="text/javascript" src="../static/jsthird/require.js" data-main="../static/js/base.js"
        data-page="js/mdlLoginSlide"></script>

                

<div class="footer">
    <div class="container">
        <div class="row">
                      <div class="span8">
                <ul class="footer-nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/driver/index">首页</a>
                    </li>
                    <li>
                       <a href="${pageContext.request.contextPath}/driver/index2">业务办理</a>
                    </li>
                    <li>
                       <a href="${pageContext.request.contextPath}/driver/getPerson">我的预约</a>
                    </li>
                    <li>
                          <a href="${pageContext.request.contextPath}/driver/getPerson2">个人中心</a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath}/driver/admin">管理员界面</a>
                    </li>
                    
                    
                </ul>

            </div>
        </div>
        <div class="row">
            <div class="copyright span8">

                
                <p>版权所有 © 2015-2017 公安部交通管理局 公安部交通管理科学研究所 V1.9.4
                    <!--|
                       <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                               document.write(unescape("%3Cspan id='cnzz_stat_icon_1000148905'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000148905%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
                       </script>-->
                </p>
                <p>
                    <a href="http://www.miibeian.gov.cn/" target="_blank">苏ICP备06012607号-2</a>
                    <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32021102000598" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;margin-left: 10px;"><img src="../static/img/batb.png" style="float:left;margin-right: 5px"/>苏公网安备 32021102000598号</a>
                </p>

            </div>
             <div class="span1"></div>
            <div class="span2" style="text-align: left;position: relative;" id="span2">
                <style>
                    #span2 .bc{
                        position: absolute;
                        top: 6px;
                        right: -104px;
                    }
                </style>
                <div class="bc">
                </div>
               <!--  <img src="static/css/images/jtaqwfb.jpg" style="width: 70px;">
                <img src="../static/css/images/gabjtkys2.jpg" style="width: 70px;"> -->
                <!--<div class="wxgab wxlogo"></div>-->
                <!--<div class="wx wxlogo"></div>-->
            </div>
        </div>

    </div>
</div>



        </body>
</html>
