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
                
                
                
                
                
                <style type="text/css">
/* body,h1,h2,h3,h4,h5,h6,hr,p,blockquote,dl,dt,dd,ul,ol,li,pre,form,fieldset,legend,button,input,textarea,th,td{margin:0;padding:0}
body,button,input,select,textarea{font:12px/1.5 tahoma,arial,\5b8b\4f53,sans-serif;text-align:justify;text-justify:inter-ideograph;word-break:break-all;word-wrap:break-word}
h1,h2,h3,h4,h5,h6{font-size:100%} */
address,cite,dfn,em,var,i,u{font-style:normal}
code,kbd,pre,samp{font-family:courier new,courier,monospace}
small{font-size:12px}ul,ol{list-style:none}
sup{vertical-align:text-top}sub{vertical-align:text-bottom}
legend{color:#000}fieldset,img{border:0}button,input,select,textarea{font-size:100%;padding:0;margin:0}
table{border-collapse:collapse;border-spacing:0}caption,th{ text-align:left }
.ovh{overflow:hidden}.l{float:left}.r{float:right}.cur{cursor:pointer}
.c_b{content:".";display:block;height:0;clear:both;visibility:hidden;zoom:1;font-size:0px;overflow:hidden;visibility:hidden}.c_b2{clear:both}.dn{display:none}.dis{display:block}.b{font-weight:bold}
body{behavior:url("css/hover_htc.htc");font-family:"Microsoft YaHei",宋体; color:#333;}/*hover*/

/*会员注册*/
.login ul{/*background:url(../images/line.png) repeat-x;*/ padding-top:10px; border-top:1px solid #fff}
.login ul a{ color:#005cb1}
.login .id input,.login .pw input,.in_id,.in_mo,.reg_input,.reg_input_pic{background-color:#FFF; border:1px solid #d5cfc2;  font-size:14px; font-weight:bold; vertical-align:middle}
.login .id input,.login .pw input{width:170px; height:30px;margin:0 5px 5px 0; line-height:30px; padding:0 5px;}
.login .id input:hover,.login .pw input:hover,.in_id:hover,.in_mo:hover,.reg_input:hover,.reg_input_pic:hover{border:1px solid #005cb1;background-color:#F2FAFF;}
.l_button,.r_button{background:url(images/login_button.png) no-repeat; width:118px; height:39px; border:none; cursor:pointer; display:block; float:left; text-indent:-9000px}
.l_button{background-position:0 -60px;}
.r_button{background-position:-138px -60px; margin-right:4px}
.l_button:hover{background-position:0 0;}
.r_button:hover{background-position:-138px 0;}
.f_reg_but{margin:10px 0 0 115px}

.reg{width:460px; font-size:14px;line-height:25px; overflow:hidden;}
.reg dl{padding-left:10px; font-size:14px;}
.reg dl dt{ margin-top:15px}
.reg dl dd{padding:3px 0}
.reg .title{width:100px; display:inline-block; text-align:right; padding-right:10px}
.reg_input_pic{width:80px;}
.in_pic_s{margin-left:83px}
.reg .img{position:absolute}
.onShow,.onFocus,.onError,.onCorrect,.onLoad{background:url(images/reg_bg.png) no-repeat 3000px 3000px;padding-left:30px; font-size: 12px; height:25px; width:124px; display:inline-block; line-height:25px; vertical-align:middle; overflow:hidden; margin-left:6px}
.onShow{color:#999; padding-left:0px}
.onFocus{background-position:0px -30px; color:#333}
.onError{background-position:0px -60px; color:#333}
.onCorrect{background-position:0px 0; text-indent:-9000px}
.onLoad{background-position:0px 0}
.reg_m{margin-left:90px}
.clew_txt{display:inline-block; padding:7px  0 0 15px; font-size:12px;}

.id input,.pw input,.in_id,.in_mo,.reg_input,.reg_input_pic{_behavior:url(js/Round_htc.htc);-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px; height:25px;}
.user_button a,.pay_but{_behavior:url(js/Round_htc.htc);-moz-border-radius:100px;-webkit-border-radius:100px;border-radius:100px;}

#one1,#one2{display:block; background-color:#e9eed8; padding:5px 0; text-align:center; clear:both; cursor:pointer}
#one2{margin-top:15px}
#one1:hover,#one2:hover{background-color:#d4dfb0}
#one1 span,#one2 span{color:#F00}
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
            <button class="btn btn-mini pane" data-type="register" onclick="window.location.href='#'">&nbsp;&nbsp;退出</button>
            
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
				<a href="${pageContext.request.contextPath}/driver/index" style="margin-left:5px">首页</a>
                <a href="${pageContext.request.contextPath}/driver/index2">业务办理</a>
                <a href="${pageContext.request.contextPath}/driver/getPerson">我的预约</a>
                <a href="${pageContext.request.contextPath}/driver/getPerson2">个人中心</a>
                <a href="#">信息查询</a>
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

    <div class="row" style="height: 500px;">
    <!--登录开始-->
    <div  style=" height:337px; width:1083px; background: #fff url(../static/css/images/login-bg1.jpg) right bottom no-repeat;">
    <div class="reg login" >
     <div style="margin-left:79px;padding-top: 20px;"> <h2>登录 窗口</h2></div>
        <form action="${pageContext.request.contextPath}/login" method="post" name="form1" id="form1">
            <dl>
                <div style="height:17px; overflow:hidden"></div>
                           <dd><span class="title">身份证号：</span><input class="reg_input" name='iptCard' type='text' id='iptCard' onblur="return checktheform();" /><span id="iptCardTip" class="onshow"></span></dd>
               <!--  <dd><span class="title">登录账号：</span><input class="reg_input" name="t_UserName" id="t_UserName" onblur="checkusername(this.value);" type="text" /><span id="t_UserNameTip" class="onshow"></span></dd> -->
                <dd><span class="title">登录密码：</span><input class="reg_input" onblur="return checkpasswd(this);" id="t_UserPass" name="t_UserPass" type="password"/><span id="t_UserPassTip" class="onshow"></span></dd>
            </dl>
           <!--  <div class="f_reg_but"><input id="button" name="button" type="submit" value="登录" class="l_button"/><span class="clew_txt"><a href="register.jsp">立即注册</a></span></div> -->
        <div class="f_reg_but"><input  id="button" style="width: 50px;" name="button" type="submit" value="登录" /><span class="clew_txt"><a href="../register1.jsp">立即注册</a></span></div>
        </form>                      
    </div>
    </div>
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
                        <a href="${pageContext.request.contextPath}/driver/personal">个人中心</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/driver/personal">我的预约</a>
                    </li>
                    <li>
                        <a href="#">管理员登录</a>
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
