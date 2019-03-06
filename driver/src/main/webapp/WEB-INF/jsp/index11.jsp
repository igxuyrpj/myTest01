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
        </head>
        <body>
                <div class="header">
                    

<div style="display: none">
<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
</div>
<div id="toptool" class="top-nav">
	<div class="container">
				
		<div class="login-pane">
			
			
		</div>
		<div class="login-pane">
			<button class="btn btn-mini pane" onclick="window.location.href='#'">&nbsp;&nbsp;个人登录</button>
			
		</div>
		<div class="login-pane">
            <button class="btn btn-mini pane" data-type="register" onclick="window.location.href='#'">&nbsp;&nbsp;用户注册</button>
            
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
				<a href="#" style="margin-left:5px">首页</a>
                <a href="#">业务办理</a>
                <a href="#">服务导航</a>
                <a href="#">公告公布</a>
                <a href="#">信息查询</a>
				</div>
		</div>
	</div>
</div>




                </div>
                

<style>
    .footer{
        margin-top:200px;
    }
    .control-group{
        z-index: inherit!important;
    }
</style>
<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
<div class="container main mt20">
    <div class="row">
        <div class="span12 login">

            <ul class="nav nav-tabs" id="login-tabs">
                <li class=" active  ">
                    <a href="#" data-toggle="tab">
                       
                        个人登录</a>
                </li>
                <!-- <li class="">
                    <a href="#qyjgdl" data-toggle="tab">
                        <i class="icon-building"></i>
                        单位登录</a>
                </li> -->
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
                            <!-- <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" name="rememberMe" value="true" id="remember-1" />
                                    <label for="remember-1">记住用户名</label>
                                </label>
                            </div> -->
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
        </div>
        <div class="span12">
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
                        <a href="#">首页</a>
                    </li>
                    <li>
                        <a href="#">业务办理</a>
                    </li>
                    <li>
                        <a href="#">服务导航</a>
                    </li>
                    <li>
                        <a href="#">公告公布</a>
                    </li>
                    <li>
                        <a href="#">信息查询</a>
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
               <!--  <img src="../static/css/images/jtaqwfb.jpg" style="width: 70px;">
                <img src="../static/css/images/gabjtkys2.jpg" style="width: 70px;"> -->
                <!--<div class="wxgab wxlogo"></div>-->
                <!--<div class="wx wxlogo"></div>-->
            </div>
        </div>

    </div>
</div>



        </body>
</html>
