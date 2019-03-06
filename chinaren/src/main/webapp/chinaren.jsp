<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<title>欢迎来到ChinaRen校友录！</title>


<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">PATH={domain:'class.chinaren.com',d1: 'http://s1.bai.itc.cn/',d2: 'http://s2.bai.itc.cn/',js: 'r/j_v1310711076/',flash: 'r/f_v1310711076/',img: 'http://s2.bai.itc.cn/r/i_v1310711076/',cssBase: 'http://s1.bai.itc.cn/r/c/base_v1310711076/',cssCell: 'http://s2.bai.itc.cn/r/c/cells_v1310711076/',cssTheme: 'http://s2.bai.itc.cn/r/c/themes_v1310711076/',cssPage: 'http://s2.bai.itc.cn/r/c/pages_v1310711076/',cssApp: 'http://s2.bai.itc.cn/r/c/apps_v1310711076/',cssTopic: 'http://s2.bai.itc.cn/r/c/topics_v1310711076/',jsSrc: false,jsKola: 'http://s1.bai.itc.cn/r/j/kola/core/kola_v1310711076.js',jsProfile:'http://s1.bai.itc.cn/r/j/sohu/core/core_v1310711076.js',titleSuffix: 'ChinaRen校友录'};PATH.jsPacks = {'sohu.core.*,kola.dom.Form,kola.dom.Select,kola.dom.Textarea,kola.dom.SimpleTextArea,kola.dom.Button,kola.dom.CheckBox,kola.ctrl.DataKeyTab,kola.anim.Tween,kola.anim.Fade,kola.anim.Blind,kola.anim.*,kola.anim.Dragable,kola.cpt.Base,sohu.system.AutoRun,sohu.tool.LazyRender,sohu.ctrl.Dialog,sohu.ctrl.Emote,Sohu.ctrl.Lister,sohu.ctrl.Mask,sohu.ctrl.Pager,sohu.ctrl.TipSuggest,sohu.ctrl.TipMenu,sohu.channel.*,sohu.tool.Validator,sohu.ctrl.GotoTop,sohu.feed.*,sohu.composer.*,sohu.status.*,sohu.ctrl.Tip,sohu.task.*,sohu.navbar.*,sohu.im.*,sohu.friend.*,sohu.friend.FriendSelector,sohu.friend.Component,sohu.chat.*,sohu.friend.Service,sohu.online.*,sohu.status.Service,sohu.sohuim.*,sohu.xcache.*,sohu.game.Message,sohu.game.Model,sohu.game.Channel,sohu.game.Dreamfish,sohu.music.*,sohu.weather.*,sohu.recommend.*,sohu.sa.*':PATH.jsKola,'sohu.wall.Message,sohu.visitor.*,sohu.friendeffect.*,sohu.friendeffect.*,sohu.user.AvatarMaker,sohu.user.AvatarMakerDialog,sohu.user.AvatarSetter':PATH.jsProfile};document.domain = PATH.domain;_KOLA={c:[],r:[]};$call=function(){_KOLA.c.push(arguments);};$register=function(){_KOLA.r.push(arguments);};_KOLA.d=function(){document.domReady=true;if(window.kola&&kola.Event&&kola.Event._fireDomLoad)kola.Event._fireDomLoad();};_KOLA.dc=function(){if(document.documentElement.doScroll)(function(){try{document.documentElement.doScroll("left");}catch(error){setTimeout(arguments.callee,5);return;}_KOLA.d();})();};if(document.addEventListener){document.addEventListener("DOMContentLoaded",_KOLA.d,false);}else if(document.attachEvent){document.attachEvent("onreadystatechange",function(){if(document.readyState==="complete"){document.detachEvent("onreadystatechange",arguments.callee);_KOLA.d();}});_KOLA.dc();};(function() {var a = document.createElement("script");a.type = "text/javascript";a.src = PATH.jsKola;document.getElementsByTagName("head")[0].appendChild(a);})();


apid='1000000';
         
(function(){var params={};try{var se=decodeURIComponent(location.search);if(se&&se.length>1){se = se.substr(1);if(se.indexOf('?') !== -1){se = se.substr(se.indexOf('?')+1);if(se && se.length>1){se=se.split('&');}}else{se = se.split('&');}	for(var i=0,l=se.length;i<l;i++){var obj=se[i].split('=');if(obj.length==2&&obj[0].length>0){params[obj[0].toLowerCase()]=obj[1];}}}}catch(e){setTimeout(arguments.callee,0);return;}var getCookie=function(n){var t,r=new RegExp("(^| )"+n+"=([^;]*)(;|$)","gi");if(t=r.exec(unescape(document.cookie)))return(t[2]);return null;},setCookie=function(n,v){document.cookie=n+"="+escape(v)+"; path=/; domain="+document.domain;};if(typeof(params.rid)=='string'&&params.rid.length>0){setCookie('b_ri',params.rid);}if(window.apid){setCookie('b_pa',window.apid);}var arr=['b_pd','b_pr'];for(var i=0,l=arr.length;i<l;i++){var it=arr[i],v=getCookie(it);if(typeof(v)!='string'||v.length==0){if(it=='b_pd'){if(typeof(params.pid)=='string'&&params.pid.length>0){setCookie(it,params.pid);}}else{if(document.referrer){var a=document.createElement('a');a.href=document.referrer;setCookie(it,a.hostname);}else{setCookie(it,'-');}}}}})();
(function(){var d=new Date(),gc=function(s){var t,r=new RegExp("(^| )"+s+"=([^;]*)(;|$)","gi");if(t=r.exec(unescape(document.cookie)))return(t[2]);return null;},fix=function(k){return k>10?k:('0'+k);},suv=gc('SUV');if(!suv){var random=''+Math.floor(Math.random()*10000)+'0000',str=d.getFullYear().toString().substr(2)+fix(d.getMonth()+1)+fix(d.getDate())+fix(d.getHours())+fix(d.getMinutes())+fix(d.getSeconds())+random.substr(0,4),exp=new Date();exp.setTime(exp.getTime()+100*365*24*60*60*1000);document.cookie='SUV'+"="+escape(str)+"; expires="+exp.toGMTString()+"; path=/; domain=sohu.com";}var a=[],n=document.createElement('script');try{a.push('url='+encodeURIComponent(location.href));}catch(err){setTimeout(arguments.callee,0);return;}a.push('referrer='+encodeURIComponent(document.referrer));a.push('t='+(new Date()).getTime()+Math.round(Math.random()*1000));var p=window.PV_PARAMS;if(typeof(p)=='object'&&p!=null&&p.length>0){a=a.concat(p);}n.src='http://sa.bai.sohu.com/pv.gif?'+a.join('&');document.getElementsByTagName('head')[0].appendChild(n);})();




</script>
<script type="text/javascript" src="js/passport.js"></script>

<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>

<script type="text/javascript">
window.onload=function(){
	var tel="${info }";
	if (tel==1){
		alert("用户名或密码错误")
	}
};
</script>




<link rel="icon" type="image/x-icon" href="http://s2.bai.itc.cn/r/i_v1310711076/alumni/favicon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="http://s2.bai.itc.cn/r/i_v1310711076/alumni/favicon.ico" />
<link rel="apple-touch-icon" href="http://s2.bai.itc.cn/r/i_v1310711076/alumni/apple-touch-icon.png" />


<link rel="stylesheet" type="text/css" href="css/base.css" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="http://s2.bai.itc.cn/r/c/apps_v1310711076/alumni/regStyle.css" />

 <style>
     body{
         background-color: aliceblue;
     }
     select{
         width: 100%;
         height: 30px;
         border-radius: 5px;
         border-color: aliceblue;
         font-size: 14px;
         letter-spacing: 5px;
     }
     .content{
         width: 300px;
         margin: 60px auto;
     }
     .rows{
         width: 100%;
         height: 42px;
         border-radius: 14px;
         margin-top: 10px;
         background-color: #ffffff;
     }
     .label{
         display: inline-block;
         padding: 10px;
         color: #03A9F4;
         letter-spacing: 7px;
     }
     .text {
         display: inline-block;
         width: 70%;
         color: #3a3838;
     }
 </style>
 
</head>


<body class="root-blankBody root-chinaren">
<div style="margin: 10px auto;">
<div id="navbar">
	<div id="navbarMid">
		<div id="navbarInt">
			<div id="navbarLogo">
				<h1>
					<span>校友录</span>
					<a href="#"><img src="http://s2.bai.itc.cn/r/c/themes_v1310711076/global/cr/0001/i/head-cr.gif" style="width:130px;height:30px;" /></a>
				</h1>
			</div>
			<div id="navbarExtra">
				<ul>
                    <li><a href="register.jsp"><span>注册</span></a></li>
					
                    <li><a href="login.jsp" ><span>登录</span></a></li>
                    
                   
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="dropWrap"></div>
<div id="page" class="pageLay-fullWidthBg">
	<div id="pageMid">
		<div id="pageInt">
			<div id="pageHd">
				<div id="pageHdInt"></div>
			</div>
			<div id="pageBd">
				<div id="pageBdMid">
					<div id="pageBdInt">
						<div id="canvas" class="canvas">
							<div id="canvasInt" class="canvasInt">
								<div class="page-regIndex" id="page-regIndex">
									<div id="app-crIndex" class="app-crIndex">
										<div class="crIndexBgExt">
										<div class="crIndexBg">
										<div class="crIndexBgInt">
											<div id="indexLogo"></div>
											<div id="indexContent">
											 
												<div id="indexWel"></div>
												
												<!--新版登录begin-->
												<!-- <div id="indexLogin" style="display:none;">
													<div class="indexPs">
														<a href="javascript:void(0);" onclick="kola.Cookie.set('login_m','1','never');$('#indexLogin').css('display','none');$('#indexLoginOld').css('display','');;$('#email_old').val($('#ppEmail').val())" onmousedown="$call(function(){sohu.sa.cc('index_login_old_switchold')},'sohu.sa.*')">旧版登陆&raquo;</a>
													</div>
													<div id="indexPc">
														<div class="ppWaitMsg"></div>
													</div>
													<div id="indexPr" class="passreset"><span id="forgotPassword"><a onmousedown="$call(function(){sohu.sa.cc('index_forgotpassword')},'sohu.sa.*')" href="http://passport.sohu.com/web/recoverpwd" target="_blank">忘记密码？</a></span><span id="toOld" onmousedown="$call('sohu.sa.cc(\'cr_fp_findpassport\')', 'sohu.sa.*');">|&nbsp;<a href="javascript:void(0);" view-url="/app/alumni/public/find/first_step_1.do?provid=1&schooltype=6" view-container="_dialog" view-container-options="{theme: 'd-recoverPwd',width:'655'}" view-method="get">忘记账号？</a></span></div>
												</div> -->
												<!--新版登录end-->
												
												<!--旧版登录框 begin--> 
												<!-- <div id="indexLoginOld"  class="indexLogin-full">
														<div class="indexPs">
															<a href="javascript:void(0);" onclick="kola.Cookie.set('login_m','0','never');$('#indexLogin').css('display','');$('#indexLoginOld').css('display','none');$('#ppEmail').val($('#email_old').val());$('#oldLoginMsg').html('');" onmousedown="$call(function(){sohu.sa.cc('index_login_old_switchnew')},'sohu.sa.*')">新版登陆&raquo;</a>
														</div>
														<div class="indexPc">
															<div class="passportc" id="oldForm">
																<form name="loginformOld" onsubmit="return sohu.alumni.PassportOld.doLogin();" method="post">
																	<div id="ppcontid" class="ppcontent">
																		<ul class="card">
																			<div id="oldLoginMsg" class="error"></div>
																			<li style="z-index:2"><label for="email_old">账　号<input type="text" class="ppinput" id="email_old" value="" onfocus="if(this.value=='邮箱/用户名/手机号')this.value='';"></label>
																																					<div class="indexPa">
																								
																								
																								
																								
																									<div class="indexPaBtn" data-value="mobilephone" id="currenttype" onclick="var u_l=$('#userlist');if(u_l.width()==0)u_l.show();else u_l.hide();">手机用户</div>
																								
																								<ul class="indexPaList" id="userlist" onclick="var t=$(event.target||event.srcElement);if(t.prop('tagName')=='A'){var ct=$('#currenttype');ct.attr('data-value',t.attr('data-value'));ct.html(t.html());$(this).hide();}">
																									<li ><a href="javascript:void(0);" data-value="@chinaren.com">ChinaRen用户</a></li>
																									<li ><a href="javascript:void(0);" data-value="@sohu.com">搜狐用户</a></li>
																									<li ><a href="javascript:void(0);" data-value="mobilephone">手机用户</a></li>
																								</ul>
																							</div>
																			</li>
																			<li style="z-index:1"><label for="ppPassword">密　码<input type="password" class="ppinput" id="pass_old"></label></li>

																			<li><dl><dt>
																			<span><label for="ppLoginState"><input type="checkbox" onmousedown="$call('sohu.sa.cc(\'index_loginstate\')', 'sohu.sa.*');" value="1" checked="checked" name="persistentcookie" id="ppLoginStateOld" />记住登录状态</label></span>
																			<input type="submit" alt="登 录" src="http://www.sohu.com/passport/images/spacer.gif" onfocus="this.blur()" value="登 录" class="sign" >
																			</dt></dl>
																			</li>
																		</ul>
																	</div>
																</form>
															</div>
														</div>
													<div class="passreset indexPr" ><span id="forgotPassword"><a target="_blank" href="#">忘记密码？</a></span><span id="toOld" onmousedown="$call('sohu.sa.cc(\'cr_fp_findpassport\')', 'sohu.sa.*');">|&nbsp;<a href="javascript:void(0);" view-url="/app/alumni/public/find/first_step_1.do?provid=1&schooltype=6" view-container="_dialog" view-container-options="{theme: 'd-recoverPwd',width:'655'}" view-method="get">忘记账号？</a></span></div>
												</div> -->
												<!--旧版登录框 end-->
												
												
												<div id="indexReg">
													<p>还没有校友录账号？</p>
													<a class="button-reg" onmousedown="" href="register.jsp">立即注册</a>
												</div>
											   	
												<div class="indexDiviLine"></div>
<div class="crNews" style="background:url(http://s2.bai.itc.cn/logo/2010/08/10/16/36/8ff2be4209cabd_0.gif) 10px 10px no-repeat;padding:30px 10px;">
<ul style="list-style:none; padding:0; margin:0;color:#666">
 <li>&middot; 11.19：校友录聚会功能上线</li>
  <li>&middot; 11.15：查看邮件功能上线</li>
 <li>&middot; 11.12：生日贺卡功能上线</li>
    <li>&middot; 10.28：绑定飞信免费发短信功能上线</li>
    <li>&middot; 10.20：秀宝宝照片活动上线</li>
     <li>&middot; 11.15：查看邮件功能上线</li>
 <li>&middot; 11.12：生日贺卡功能上线</li>
    <li>&middot; 10.28：绑定飞信免费发短信功能上线</li>
    <li>&middot; 10.20：秀宝宝照片活动上线</li>

<a style="color:#ce935b; margin: 5px;" href="#">问题反馈 &raquo;</a>
</div>
<style>
#forgotPassword a{color:#ce935b;}
</style>
											</div>
											<div id="indexShow">
												<div id="indexNews"></div>
												<div id="indexSearch">
													<p><h2>&nbsp;&nbsp;&nbsp;搜索学校名称，快速找到班级...(目前只实现了巢湖学院)</h2></p>
													
				
				<form action="${pageContext.request.contextPath}/goSchool" method="post">				
	 <div class="content">
    <div class="rows">
        <div class="label">省份</div><div style="padding-left:0px;padding-right:5px;display:inline-block;color: #ccc;text-align: center;font-weight: lighter;">|</div>
        <div class="text"><select id="province" name="province"></select></div>
    </div>
       <div class="rows">
           <div class="label">城市</div><div style="padding-left:0px;padding-right:5px;display:inline-block;color: #ccc;text-align: center;font-weight: lighter;">|</div>
           <div class="text"><select id="city" name="city"></select></div>
       </div>
       <div class="rows">
           <div class="label">学校</div><div style="padding-left:0px;padding-right:5px;display:inline-block;color: #ccc;text-align: center;font-weight: lighter;">|</div>
           <div class="text"><select id="school" name="school"></select></div>
       </div>

     </div>
     
     <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<!-- <p><h1><a style="text-decoration: none;" href="Index2.jsp">走进校园</a></p></h1> -->
<input type="submit" value="走进校园">
</div>	
     </form>	
   <script src="js/jquery.min.js"></script>
   <script src="js/AllSchool.js"></script>
   <script type="text/javascript">
   $(function() {
	   var tel="${info }";
		if (tel==1){
			alert("目前只实现了  巢湖学院校友录!")
		}
   });
   
    window.onload=function(){
        var provinceArray = "";
        var provicneSelectStr = "";
        for(var i=0,len=province.length;i<len;i++){
            provinceArray = province[i];
            provicneSelectStr = provicneSelectStr + "<option value='"+provinceArray[0]+"'>"+provinceArray[1]+"</option>"
        }
        $("#province").html(provicneSelectStr);

        var selectCity = $("#province").val();
        var citylist=city[selectCity];
        var cityArray = "";
        var citySelectStr = "";
        for(var i=0,len=citylist.length;i<len;i++){
            cityArray = citylist[i];
            citySelectStr = citySelectStr + "<option value='"+cityArray[0]+"'>"+cityArray[1]+"</option>"
        }
        $("#city").html(citySelectStr);

        var selectschool = $("#city").val();
        var schoolUlStr = "";
        var schoolListStr = allschool[selectschool];
        for(var i=0,len=schoolListStr.length;i<len;i++){
            schoolUlStr = schoolUlStr + "<option >"+schoolListStr[i][2]+"</option>";
        }
        schoolUlStr = schoolUlStr + "<option value='999'>其它</option>";
        $("#school").html(schoolUlStr);
        //省切换事件
        $("#province").change(function(){
            var selectCity = $("#province").val();
            var citylist=city[selectCity];
            var cityArray = "";
            var citySelectStr = "";
            if(citylist!=null){
                for(var i=0,len=citylist.length;i<len;i++){
                    cityArray = citylist[i];
                    citySelectStr = citySelectStr + "<option value='"+cityArray[0]+"'>"+cityArray[1]+"</option>"
                }
            }

            $("#city").html(citySelectStr);
            $("#school1").show();
            $("#school2").hide();
            var selectschool = $("#city").val();
            var schoolUlStr = "";
            var schoolListStr = allschool[selectschool];
            for(var i=0,len=schoolListStr.length;i<len;i++){
                schoolUlStr = schoolUlStr + "<option >"+schoolListStr[i][2]+"</option>";
            }
            schoolUlStr = schoolUlStr + "<option value='999'>其它</option>";
            $("#school").html(schoolUlStr);
        });
        //切换城市事件
        $("#city").change(function(){
            $("#school1").show();
            $("#school2").hide();
            var selectschool = $("#city").val();
            var schoolUlStr = "";
            var schoolListStr = allschool[selectschool];
            for(var i=0,len=schoolListStr.length;i<len;i++){
                schoolUlStr = schoolUlStr + "<option >"+schoolListStr[i][2]+"</option>";
            }
            schoolUlStr = schoolUlStr + "<option value='999'>其它</option>";
            $("#school").html(schoolUlStr);
        });
        $("#school").change(function(){
            if($("#school").val()=="999"){
                $("#school1").hide();
                $("#school2").show();
            }
        });
        $("#second").show();
        $("#restart").css("backgorund","url('assets/images/chongxintijiao.jpg') no-repeat");
    }

</script>
<!-- 
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p><h1><a style="text-decoration: none;" href="Index2.jsp">走进校园</a></p></h1>
</div>	
	 -->												
													
													
													
													
													
													
													
													
													<!-- 
													<form id="searchForm"  action="/search.do">
													<select class="select" name="leveltype">
														<option value="0">学校</option>
														<option value="1">班级</option>
													</select>
													<input type="text" class="text" name="keyword" dataType="Require" require="true" remsg="该项为必填项" value=""> 
													<span class="button"><span><button type="submit">搜索</button></span></span>
													
													
													
													
													
													
													
													
													
													</form> -->
												</div>
												<div id="indexCrMap" onmousedown="$call('sohu.sa.cc(\'cr_login_map\')', 'sohu.sa.*');">
													<!-- <object width="579" height="503" align="middle" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" name="player" id="indexShow_ob">
														<param value="http://s1.bai.itc.cn/r/f/alumni/alumni0904.swf?AreaID=29&xmlFile=http://s1.bai.itc.cn/r/f/alumni/alumniSchoolData.xml" name="movie">
														<param value="true" name="allowFullScreen">
														<param value="always" name="allowScriptAccess">
														<param value="high" name="quality">
														<param value="transparent" name="wmode">
														<embed width="579" height="503" align="middle" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent" quality="high" allowscriptaccess="always" allowfullscreen="true" src="http://s1.bai.itc.cn/r/f/alumni/alumni0904.swf?AreaID=29&xmlFile=./alumniSchoolData.xml" name="player" id="indexShow_em">
													</object> -->
												
												
												
												
												
												
												
												</div>												
											</div>
										</div>
										</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			




<div id="pageFt">
	<div id="pageFtInt">
		<div class="contact"><a href="#">帮助中心</a><span class="pipe">|</span><a href="#">联系方式</a><span class="pipe">|</span><a href="#">提建议</a><span class="pipe">|</span>24小时客服热线:010-58511234(人工8:00-24:00)</div>
		<div class="copyright">Copyright <span class="char-copy">&copy;</span> 2011 地址：安徽省合肥巢湖经济开发区 邮政编码：238000 皖ICP备020533号<a href="#">版权所有</a></div>
	</div>
</div>
 
		</div>
	</div>
</div>
</div>
</body>

</html>
<!-- <script type="text/javascript">

	$call(function() {
		if (window.PassportSC) {
			var isAlumni = document.domain.indexOf("class.chinaren.com") != -1,
				loginEmail = '',
				loginName = '',
				dftWelWords = isAlumni ? '欢迎进入校友录' : '';
				loginRedirectUrl = '/home.do';
			 
			// 处理从邀请页面过来的情况，保存邀请参数，以便登录成功后能继续邀请流程
			if (location.href.indexOf('inviteParams=') > -1) {
				loginRedirectUrl = '/user/reg/infoshow.do' + decodeURIComponent(location.search.split('inviteParams=')[1].split('&')[0]);
			}
			// 从其他页面跳转过来带着loginEmail参数的时候，预填EMAIL
			if (decodeURIComponent(location.href).indexOf('loginEmail=') > -1) {
				loginEmail = decodeURIComponent(location.search).split('loginEmail=')[1].split('&')[0];
				loginName = null;
			}
			if (location.hash && location.hash.indexOf('/app/') == 1) {
				loginRedirectUrl = loginRedirectUrl + location.hash;
			}
			var opt = {
				email: loginEmail,
				name: loginName,
				welcome: dftWelWords,
				loggedTo: loginRedirectUrl
			};
			if (isAlumni) {
				PassportSC.appid = 1005;
				PassportSC.defaultEmailPostfix='chinaren.com';
				PassportSC.placeholder="邮箱/用户名/手机号";
				PassportSC.ptype="账号";
				opt.postfixSorts = ['','chinaren.com','sohu.com','sogou.com','qq.com','163.com','126.com','sina.com','hotmail.com','gmail.com'];
			}
			
			PassportSC.drawCard('#indexPc', opt);
		}
	}, 'sohu.passport.*');
	
	$call(function(){},'sohu.alumni.PassportOld');
	$call(function(){sohu.view.Local.init();},'sohu.view.Local');
	(function() {
		var el = document.getElementById('indexMap');
		if (el) el.innerHTML = document.getElementById('indexMapShadowEl').value;
		var exp = new Date(); 
		exp.setTime(exp.getTime() + 3153600000000);	//	100*365*24*60*60*1000
		document.cookie = "csSize=" + screen.width+'|'+screen.height + "; expires="+exp.toGMTString() + "; path=/";
	})();

</script> -->
<!-- <script type="text/javascript">setTimeout(function(){var a = document.createElement("script");a.type = "text/javascript";a.src = 'http://js.sohu.com/mail/pv/pv_v201.js';document.getElementsByTagName("head")[0].appendChild(a);},500);</script>
 -->

