<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>服务管理平台</title>
         <link rel="icon" href="../favicon.ico" type="image/x-icon" />
            <link rel="shortcut icon" href="../favicon.png" type="image/x-icon" />
                <link href="../static/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
                <link href="../static/css/font-awesome.min.css" rel="stylesheet" />
                <!--[if IE 7]>
                <link href="static/css/font-awesome-ie7.min.css" rel="stylesheet">
                <![endif]-->
                <link href="../static/css/main.css" rel="stylesheet" media="screen"/>
                <script type="text/javascript" src="../static/js/ie6.js"></script>
                <script type="text/javascript" src="../static/jsthird/respond.js"></script>
                
    <script type="text/javascript" src="../index2_files/ie6.js.下载"></script>
    <script type="text/javascript" src="../index2_files/respond.js.下载"></script>
    <style>body {
        min-height: 1000px
    } </style>

    <script type="text/javascript">
        var d=new Date();d.setDate(d.getDate()-7);function setLink(path){document.getElementById("linkMore").setAttribute("href",path)}function GetDateDiff(endTime,diffType){endTime=endTime.replace(/\-/g,"/");diffType=diffType.toLowerCase();var sTime=new Date();var eTime=new Date(endTime);var divNum=1;switch(diffType){case"second":divNum=1000;break;case"minute":divNum=1000*60;break;case"hour":divNum=1000*3600;break;case"day":divNum=1000*3600*24;break;default:break}return parseInt((sTime.getTime()-eTime.getTime())/parseInt(divNum))};
    </script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="base" src="../index2_files/base.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery" src="../index2_files/jquery-1.10.2.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/tpls" src="../index2_files/tpls.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/urls" src="../index2_files/urls.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/dpSyscode" src="../index2_files/dpSyscode.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/dpIp" src="../index2_files/dpIp.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/dpLogin" src="../index2_files/dpLogin.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funCodeRequester" src="../index2_files/funCodeRequester.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/tj" src="../index2_files/tj.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/notify" src="../index2_files/notify.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funcDistrict" src="../index2_files/funcDistrict.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/aes/token" src="../index2_files/token.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/base64/base64" src="../index2_files/base64.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funPlaceholder" src="../index2_files/funPlaceholder.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/nc" src="../index2_files/nc.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ia300" src="../index2_files/IA300ClientJavascript.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funPagination" src="../index2_files/funPagination.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funFormUtils" src="../index2_files/funFormUtils.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funMsgUtils" src="../index2_files/funMsgUtils.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/jquery.tmpl.min" src="../index2_files/jquery.tmpl.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/bootstrap.min" src="../index2_files/bootstrap.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="btval" src="../index2_files/bootstrap-validation.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/cookie/jquery.cookie" src="../index2_files/jquery.cookie.js.下载"></script><style>@charset "utf-8";
@font-face{font-family:'nc_iconfont';src:url("//at.alicdn.com/t/font_1465353706_4784257.eot");src:url("//at.alicdn.com/t/font_1465353706_4784257.eot?#iefix") format('embedded-opentype'),url("//at.alicdn.com/t/font_1465353706_4784257.woff") format('woff'),url("//at.alicdn.com/t/font_1465353706_4784257.ttf") format('truetype'),url("//at.alicdn.com/t/font_1465353706_4784257.svg#iconfont") format('svg')}@font-face{font-family:'ncpc_iconfont';src:url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot");src:url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot?#iefix") format('embedded-opentype'),url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.woff") format('woff'),url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.ttf") format('truetype'),url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.svg#ncpc_iconfont") format('svg')}.nc-container div#nc-loading-circle{background:transparent;width:20px;height:20px;display:inline-block;position:relative;vertical-align:middle}.nc-container div#nc-loading-circle .sk-circle{background:transparent;width:100%;height:100%;position:absolute;left:0;top:0}.nc-container #nc-loading-circle .sk-circle:before{content:'';display:block;margin:0 auto;width:15%;height:15%;background-color:#818181;border-radius:100%;-webkit-animation:sk-circleFadeDelay 1.2s infinite ease-in-out both;animation:sk-circleFadeDelay 1.2s infinite ease-in-out both}.nc-container #nc-loading-circle .sk-circle2{-webkit-transform:rotate(30deg);-ms-transform:rotate(30deg);transform:rotate(30deg)}.nc-container #nc-loading-circle .sk-circle3{-webkit-transform:rotate(60deg);-ms-transform:rotate(60deg);transform:rotate(60deg)}.nc-container #nc-loading-circle .sk-circle4{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.nc-container #nc-loading-circle .sk-circle5{-webkit-transform:rotate(120deg);-ms-transform:rotate(120deg);transform:rotate(120deg)}.nc-container #nc-loading-circle .sk-circle6{-webkit-transform:rotate(150deg);-ms-transform:rotate(150deg);transform:rotate(150deg)}.nc-container #nc-loading-circle .sk-circle7{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.nc-container #nc-loading-circle .sk-circle8{-webkit-transform:rotate(210deg);-ms-transform:rotate(210deg);transform:rotate(210deg)}.nc-container #nc-loading-circle .sk-circle9{-webkit-transform:rotate(240deg);-ms-transform:rotate(240deg);transform:rotate(240deg)}.nc-container #nc-loading-circle .sk-circle10{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.nc-container #nc-loading-circle .sk-circle11{-webkit-transform:rotate(300deg);-ms-transform:rotate(300deg);transform:rotate(300deg)}.nc-container #nc-loading-circle .sk-circle12{-webkit-transform:rotate(330deg);-ms-transform:rotate(330deg);transform:rotate(330deg)}.nc-container #nc-loading-circle .sk-circle2:before{-webkit-animation-delay:-1.1s;animation-delay:-1.1s}.nc-container #nc-loading-circle .sk-circle3:before{-webkit-animation-delay:-1s;animation-delay:-1s}.nc-container #nc-loading-circle .sk-circle4:before{-webkit-animation-delay:-.9s;animation-delay:-.9s}.nc-container #nc-loading-circle .sk-circle5:before{-webkit-animation-delay:-.8s;animation-delay:-.8s}.nc-container #nc-loading-circle .sk-circle6:before{-webkit-animation-delay:-.7s;animation-delay:-.7s}.nc-container #nc-loading-circle .sk-circle7:before{-webkit-animation-delay:-.6s;animation-delay:-.6s}.nc-container #nc-loading-circle .sk-circle8:before{-webkit-animation-delay:-.5s;animation-delay:-.5s}.nc-container #nc-loading-circle .sk-circle9:before{-webkit-animation-delay:-.4s;animation-delay:-.4s}.nc-container #nc-loading-circle .sk-circle10:before{-webkit-animation-delay:-.3s;animation-delay:-.3s}.nc-container #nc-loading-circle .sk-circle11:before{-webkit-animation-delay:-.2s;animation-delay:-.2s}.nc-container #nc-loading-circle .sk-circle12:before{-webkit-animation-delay:-.1s;animation-delay:-.1s}@-webkit-keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}@-webkit-keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}@keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}.nc-container .scale_text2 #nc-loading-circle .sk-circle:before{background-color:#fff}.nc_iconfont{font-family:"nc_iconfont";color:#ff3f08;font-size:16px;font-style:normal}.ncpc_iconfont{font-family:"ncpc_iconfont";color:#ff3f08;font-size:16px;font-style:normal}.captcha-error .icon_ban{float:left;font-size:16px;padding-right:5px;line-height:14px}.clickCaptcha_text .btn_refresh{font-style:normal;cursor:pointer;background:#fff;color:#737383}.imgCaptcha .btn_refresh{font-size:20px;cursor:pointer;background:#fff;color:#737383}.nc_voice{display:none;position:relative;margin-top:-34px;z-index:99;width:auto;height:34px;background:#fff}.omeo-code-img,.omeo-code-audio{font-size:0;text-align:left}.omeo-code-audiobox,.omeo-code-img a,.omeo-code-audio a,.omeo-code-state{display:inline-block;*display:inline;zoom:1;height:32px;vertical-align:top;font-size:12px}.omeo-code .omeo-code-refresh{background:transparent;width:32px;height:32px;font-size:20px;color:#888;text-align:center;text-decoration:none;padding-left:4px;line-height:32px}.omeo-code .omeo-switch{display:none;width:32px;height:32px;border-left:1px solid #e1e1e1;background-image:url("//g.alicdn.com/sd/ncpc/images/checkcode.png");background-repeat:no-repeat}.omeo-img-active .omeo-code-img{display:block}.omeo-img-active .omeo-code-audio{display:none}.omeo-code-img img{border:1px solid #cdcdcd;cursor:pointer}.omeo-code-img .omeo-switch{background-position:9px -41px}.omeo-audio-active .omeo-code-audio{display:block}.omeo-audio-active .omeo-code-img{display:none}.omeo-code-refresh{position:relative;left:95px}.omeo-code-audiobox{position:relative;height:30px;line-height:32px;border:1px solid #e1e1e1;text-align:center;overflow:hidden;left:100px;top:1px;width:45%;min-width:80px;background-color:#eee}.omeo-code-audiobox a{display:block;text-decoration:none;color:#06c}.omeo-code-audiobox-playing a{visibility:hidden}.omeo-code-audiobox span,.omeo-code-audiobox b{visibility:hidden;position:absolute;top:0;left:0;height:30px;font-weight:100;overflow:hidden}.omeo-code-audiobox-playing span,.omeo-code-audiobox-playing b{visibility:visible}.omeo-code-audiobox span{z-index:0;width:0;background:#186bca}.omeo-code-audiobox b{width:100%;z-index:1;text-align:left;text-indent:30px;color:#999;background:url("//g.alicdn.com/sd/ncpc/images/checkcode.png") no-repeat 14px -89px}.omeo-code-audio .omeo-switch{background-position:5px 10px}input[type=text]::-ms-clear{display:none}.omeo-box{position:relative;background-color:#fff}.omeo-code-echo{position:absolute;top:2px;left:2px}.omeo-code-echo input{padding:5px;height:18px;line-height:18px;border:1px solid #ddd;width:80px;outline:0}.omeo-code-state{height:30px;line-height:30px;text-indent:25px;white-space:nowrap;background-image:url("//g.alicdn.com/sd/ncpc/images/checkcode.png");background-repeat:no-repeat;background-position:100px 100px}.omeo-code-echo .omeo-code-state-error{width:auto;background-position:7px -193px}.omeo-code-echo .omeo-code-state-success{position:absolute;width:30px;background-position:7px -243px}.omeo-code-state{position:absolute;left:0;top:28px}.nc_voice_close{display:inline-block;position:relative;cursor:pointer;left:95px;top:0;border-left:#ddd 2px solid;padding:0 0 0 7px;background-color:#fff;font-size:20px;color:#888;line-height:32px}.nc_help{position:absolute;width:100%;height:100%;left:0;top:0;z-index:99999}.nc_help .mask{background-color:#000;opacity:.5;filter:alpha(opacity=50);width:100%;height:100%;top:0;left:0}.nc_btn_close{position:absolute;height:20px;left:500px;border-radius:20px;padding:10px 30px;background-color:#aaa;color:#fff;cursor:pointer;z-index:10}.nc_btn_close:hover{background-color:#afafaf}.nc_hand{position:absolute;width:68px;height:53px;background-image:url("//g.alicdn.com/sd/ncpc/images/hand.png");z-index:3}.nc_slide_bg{z-index:3;font-size:12px;text-align:center;color:#fff;line-height:34px}.nc_voicebtn{position:absolute;padding:0;right:-25px;font-size:23px;color:#888;cursor:pointer;line-height:34px}.nc_helpbtn{position:absolute;cursor:pointer;right:-95px;top:4px;font-size:12px;background-color:#ffb668;color:#fff;padding:4px;border-radius:2px;line-height:18px;display:none}.nc_helpbtn:before{width:0;height:0;content:"";position:absolute;left:-2px;top:6px;border-top:4px solid transparent;border-bottom:4px solid transparent;border-right:4px solid #ffb668}.nc-container .errloading{border:#faf1d5 1px solid;text-indent:3px;background-image:none;font-size:12px;width:290px;line-height:20px;padding:7px 5px 8px 5px;color:#ef9f06;}.nc-container .errloading a{color:#30a7fc}.nc_captcha_text .nc_err{float:left;text-indent:0}.button_move{transition:left .5s;-moz-transition:left .5s;-webkit-transition:left .5s;-o-transition:left .5s}.bg_move{transition:width .5s;-moz-transition:width .5s;-webkit-transition:width .5s;-o-transition:width .5s}.nc_slide_box{position:absolute}.nc_captcha_text{height:auto;line-height:20px;visibility:hidden;font-size:12px;color:#999;font-weight:normal}.nc-container .nc_captcha_img_text{width:auto;height:auto;line-height:20px;visibility:hidden;font-size:12px;color:#999;font-weight:normal;display:none;padding:0 0 10px 0;background-position:0 0;}.nc-container .nc_captcha_img_text span.nc-lang-cnt{line-height:inherit}.nc-container .imgCaptcha .nc_captcha_img_text{width:auto}.nc_captcha_img_text{height:auto;line-height:20px;visibility:hidden;font-size:12px;color:#999;font-weight:normal;display:none;padding:0 0 10px 3px;background-position:0 0}.nc-container .nc_wrapper{width:auto}.nc_scale{width:auto;height:34px;background:#e8e8e8;position:relative;margin:0;padding:0}.nc_scale.is_audio{margin-right:25px}.nc-container .nc_scale div{height:auto}.nc-container .nc_scale ul{list-style:none}.nc-container .nc_scale .btn_slide{color:#737383;background-image:none;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.nc-container .nc_scale span{text-align:center;width:40px;height:32px;line-height:32px;border:1px solid #ccc;position:absolute;left:0;cursor:move;background:#fff;z-index:2}.nc-container .nc_scale span.nc-lang-cnt{*line-height:34px;float:none;width:auto;height:auto;*height:34px;border:none;position:static;cursor:inherit;background:none;z-index:0;display:inline}.nc_slide_button{width:40px;height:32px;border:1px solid #ccc;position:absolute;left:0;cursor:move;background:#fff url("//g.alicdn.com/sd/ncpc/images/rt.png") no-repeat center;z-index:2}@media screen and (-ms-high-contrast:active),(-ms-high-contrast:none){.nc_scale span{height:32px}}.nc-container .nc_scale .btnok{cursor:default;background:#fff url("//g.alicdn.com/sd/ncpc/images/yes.png") no-repeat center;z-index:3}.nc-container .nc_scale .btnok2{cursor:default;font-size:20px;background:#fff url("//g.alicdn.com/sd/ncpc/images/no.png") no-repeat center;z-index:3}.nc-container .nc_scale .btn_warn{cursor:default;color:#ff3f08;line-height:34px;text-align:center;font-size:20px;background:#fff;z-index:3}.nc-container .clickCaptcha_text .btn_refresh{font-size:20px}.nc-container .clickCaptcha_text .icon_close{line-height:30px;margin-left:8px;cursor:default;color:#ff3f08;font-size:16px;float:left;margin-right:2px;background:transparent;z-index:3}.nc-container .nc_captcha_img_text .icon_close{cursor:default;color:#ff3f08;font-size:16px;float:left;margin-right:4px;background:transparent;z-index:3;line-height:18px}.nc-container .errloading .icon_warn{cursor:default;color:#ff3f08;font-size:18px;float:left;background:transparent;z-index:3}.nc-container .nc_scale .btn_ok{cursor:default;line-height:34px;text-align:center;font-size:20px;background:#fff;z-index:3;color:#76c61d}.nc-container .nc_scale .nc_ok,.nc-container .nc_scale .nc_bg{background:#7ac23c}.nc-container .nc_scale .nc_bg{position:absolute;height:100%;_height:34px;left:0;width:10px}.nc-container .nc_scale div.redbar{background:#fc461e;opacity:.5;filter:alpha(opacity=50)}.nc-container .nc_scale div.orange{background:#f00}.nc-container .nc_scale .scale_text{width:100%;height:100%;text-align:center;position:absolute;z-index:1;background:transparent;color:#9c9c9c;line-height:34px;font-size:12px;cursor:pointer}.nc-container .nc_scale .scale_text2{text-align:left;color:#fff;font-size:12px;text-indent:10px}.nc-container .nc_scale .scale_text2 b{padding-left:0;font-weight:normal}.nc-container .nc_scale .scale_text.scale_loading_text{text-align:center}.nc-container .nc_scale .imgCaptcha,.nc-container .nc_scale .clickCaptcha{display:none;overflow:hidden;border:1px solid #ccc;background:#fff;z-index:20000;}.nc-container .nc_scale .imgCaptcha p.error span,.nc-container .nc_scale .clickCaptcha p.error span{line-height:normal}.nc-container .nc_scale .imgCaptcha{height:auto}.nc-container .nc_scale .clickCaptcha{position:absolute;left:0;top:35px;height:270px;background:#fff;display:none;}.nc-container .nc_scale .clickCaptcha p.error i{color:#ff3f08;font-style:normal}.nc-container .nc_scale .clickCaptcha div{position:static;clear:both;width:100%;background:#fff;height:auto}.nc-container .nc_scale .clickCaptcha .clickCaptcha_text{height:30px;line-height:30px;font-size:12px;color:#999;}.nc-container .nc_scale .clickCaptcha .clickCaptcha_text b{font-weight:normal}.nc_btn_2{position:absolute;right:0;top:0;cursor:pointer;margin:2px 9px 0 0}.nc_iconfont.nc_btn_2{position:absolute;right:0;top:0;cursor:pointer}.nc_iconfont.nc_btn_1{position:absolute;top:10px;right:5px}.nc_btn_1{top:10px;right:10px}.scale_text i{font-style:normal;border:none;position:static;cursor:default;color:#fffc00;background:none;display:inline;width:100%}.nc-container .clickCaptcha .clickCaptcha_img{margin:0 auto;clear:both;position:relative;}.nc-container .clickCaptcha .clickCaptcha_img img{width:230px;height:230px;margin-left:10px;margin-top:5px}.nc-container .clickCaptcha .clickCaptcha_btn{margin:10px 0 0 15px;position:relative;text-align:left;}.nc-container .clickCaptcha .clickCaptcha_btn img{cursor:pointer}.nc-container .imgCaptcha{position:absolute;left:0;top:35px;height:auto;padding-bottom:15px;border:1px solid #ccc;background:#fff;}.nc-container .imgCaptcha div{position:static;width:90%;background-color:#fff}.nc-container .imgCaptcha,.nc-container .clickCaptcha{text-align:left;}.nc-container .imgCaptcha a,.nc-container .clickCaptcha a{color:#ff3f08}.nc-container .imgCaptcha .imgCaptcha_text{height:42px;line-height:42px;width:120px;background:#fff;font-size:14px;text-align:left;color:#747474;float:left;margin-left:10px;}.nc-container .imgCaptcha .imgCaptcha_text input{margin-top:5px;height:30px;line-height:30px;font-size:14px;width:90px;background:#fff}.nc-container .imgCaptcha .imgCaptcha_text input:focus{outline:none;color:#bbb}.nc-container .imgCaptcha .imgCaptcha_btn{margin:0 0 0 12px;*margin-left:0;clear:both;padding-top:5px;width:90%;}.nc-container .imgCaptcha .imgCaptcha_btn img{cursor:pointer}.nc-container .imgCaptcha .nc_scale_submit{margin:0 auto;cursor:pointer;background-color:#fc461e;width:120px;height:32px;line-height:32px;color:#fff;text-align:center}.nc-container .imgCaptcha .imgCaptcha_img{margin:4px 0 0 100px;height:40px;width:130px;overflow:hidden;cursor:pointer;}.nc-container .imgCaptcha .imgCaptcha_img img{width:130px}.nc-container .imgCaptcha .imgCaptcha_img input{border:solid 1px #ccc}.nc-lang-ar_MA,.nc-lang-ar_SA,.nc-lang-iw_HE,.nc-lang-iw_IL{text-align:right;*text-align:left;}.nc-lang-ar_MA .nc_scale .scale_text2,.nc-lang-ar_SA .nc_scale .scale_text2,.nc-lang-iw_HE .nc_scale .scale_text2,.nc-lang-iw_IL .nc_scale .scale_text2{text-align:right;}.nc-lang-ar_MA .nc_scale .scale_text2 span,.nc-lang-ar_SA .nc_scale .scale_text2 span,.nc-lang-iw_HE .nc_scale .scale_text2 span,.nc-lang-iw_IL .nc_scale .scale_text2 span{*display:inline-block;padding:0 56px 0 0}.nc-lang-ar_MA .nc_captcha_img_text,.nc-lang-ar_SA .nc_captcha_img_text,.nc-lang-iw_HE .nc_captcha_img_text,.nc-lang-iw_IL .nc_captcha_img_text{*text-align:right}.nc-lang-ar_MA span.nc-lang-cnt,.nc-lang-ar_SA span.nc-lang-cnt,.nc-lang-iw_HE span.nc-lang-cnt,.nc-lang-iw_IL span.nc-lang-cnt{text-align:right;direction:rtl}.nocaptcha span.nc-lang-cnt{float:none;height:auto;line-height:30px}.nc-container{font-size:12px;-ms-touch-action:none;touch-action:none;}.nc-container p{margin:0;padding:0;display:inline}.nc-container .scale_text.scale_text span[data-nc-lang="_startTEXT"]{display:inline-block;width:100%}.nc-container .scale_text.scale_text.slidetounlock span[data-nc-lang="_startTEXT"]{background:-webkit-gradient(linear,left top,right top,color-stop(0,#4d4d4d),color-stop(.4,#4d4d4d),color-stop(.5,#fff),color-stop(.6,#4d4d4d),color-stop(1,#4d4d4d));-webkit-background-clip:text;-webkit-text-fill-color:transparent;-webkit-animation:slidetounlock 3s infinite;-webkit-text-size-adjust:none}.nc-container .nc_scale .nc-align-center.scale_text2{text-align:center;text-indent:-42px}@-webkit-keyframes slidetounlock{0%{background-position:-200px 0}100%{background-position:200px 0}}.nc-container.tb-login .clickCaptcha_text .icon_close{line-height:30px;margin-left:0;cursor:default;color:#ff3f08;font-size:16px;float:left;margin-right:0;background:transparent;z-index:3}.nc-container.tb-login{position:relative;margin-top:20px;display:none;}.nc-container.tb-login .nc_scale{width:auto;}.nc-container.tb-login .nc_scale .scale_text2{text-indent:-42px;text-align:center;}.nc-container.tb-login .nc_scale .scale_text2 b{padding:0}.nc-container.tb-login .nc_scale.nc_err div.scale_text{background:#f79977}.nc-container.tb-login .errloading{width:auto}.nc-container.tb-login .imgCaptcha,.nc-container.tb-login .clickCaptcha{width:252px;*width:256px;border:0;*height:300px;min-height:300px;max-height:inherit !important;}.nc-container.tb-login .imgCaptcha div.login-msg.error,.nc-container.tb-login .clickCaptcha div.login-msg.error{background:#fff2f2}.nc-container.tb-login .imgCaptcha .captcha-error,.nc-container.tb-login .clickCaptcha .captcha-error{position:absolute;top:0;width:244px;height:auto;margin-bottom:15px;padding:3px;border:solid 1px #ff8e8e;line-height:18px}.nc-container.tb-login .imgCaptcha .captcha-inform,.nc-container.tb-login .clickCaptcha .captcha-inform{font-size:110%;margin-left:20px}.nc-container.tb-login .imgCaptcha{padding-top:66px;}.nc-container.tb-login .imgCaptcha .imgCaptcha_text{width:100px;margin-left:0;}.nc-container.tb-login .imgCaptcha .imgCaptcha_text input:focus{color:#000}.nc-container.tb-login .imgCaptcha .imgCaptcha_img{width:120px;_width:100px}.nc-container.tb-login .imgCaptcha .imgCaptcha_btn{width:100%;margin-left:0}.nc-container.tb-login .imgCaptcha .nc_scale_submit{width:100%;height:36px;line-height:36px;margin-top:20px;margin-left:0;border-radius:3px;font-size:16px;font-family:Tahoma,Helvetica,Arial,sans-serif;background:#ff3f08}.nc-container.tb-login .clickCaptcha{padding-top:40px;}.nc-container.tb-login .clickCaptcha .clickCaptcha_text{text-indent:4px}.nc-container.tb-login .clickCaptcha .clickCaptcha_img img{margin-left:10px}.nc-container.tb-login .nc_btn_1{top:77px;_top:57px}.nc-container.tb-login .nc_btn_2{top:36px}.login .nc-container.tb-login .login-msg p,.login-box .nc-container.tb-login .login-msg p{width:auto;float:left}.nc-container.tb-login.nc-old-login{margin:20px 0 10px 0;width:250px;}.nc-container.tb-login.nc-old-login .nc_wrapper{width:250px}.nc-container.tb-login.nc-old-login .imgCaptcha,.nc-container.tb-login.nc-old-login .clickCaptcha{width:250px;min-height:auto;}.nc-container.tb-login.nc-old-login .imgCaptcha .captcha-error,.nc-container.tb-login.nc-old-login .clickCaptcha .captcha-error{line-height:16px}.nc-container.tb-login.nc-old-login .clickCaptcha{padding-top:28px;}.nc-container.tb-login.nc-old-login .clickCaptcha .clickCaptcha_img img{width:200px;height:200px}.nc-container.nc-old-login.show-click-captcha{padding-bottom:60px}.nc-container.nc-old-login.show-click-captcha.nc-tm-min-fix{padding-bottom:40px}.nc-container.tb-login.nc-tm-min-fix .clickCaptcha{max-height:340px !important}#content .login-box .bd .nc-container.tb-login .login-msg{margin:10px auto 15px auto}#content .login-box .bd .nc-container.tb-login.nc-old-login.show-click-captcha .login-msg{margin:2px 0 0 0}.nc-container .nc_scale .nc-cc{display:none;position:absolute;left:0;top:35px;z-index:20000;width:360px;height:570px;border:1px solid #5eaef1;border-radius:4px;background:#fff;font-size:14px;line-height:18px;color:#333;}.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn{background-color:#90c1eb}.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn,.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh{cursor:default}.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh{color:#999}.nc-container .nc_scale .nc-cc a{color:#3199f4;text-decoration:none}.nc-container .nc_scale .nc-cc .nc_iconfont{vertical-align:top;margin-right:8px}.nc-container .nc_scale .nc-cc-btn{display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;width:100px;line-height:30px;text-align:center;background-color:#3199f4;color:#fff;border-radius:4px;cursor:pointer;}.nc-container .nc_scale .nc-cc-btn.nc-cc-disabled{background-color:#90c1eb;cursor:default}.nc-container .nc_scale .nc-cc-btn .nc-lang-cnt{line-height:18px}.nc-container .nc_scale .nc-cc-header{padding:20px 20px 19px 20px;height:100px;background:#f4f8fa;border-bottom:1px solid #ccc}.nc-container .nc_scale .nc-cc-img1-box{float:left;width:100px;height:100px;margin-right:16px}.nc-container .nc_scale .nc-cc-txt{overflow:hidden;*zoom:1;line-height:30px;padding-top:11px}.nc-container .nc_scale .nc-cc-img2-box{position:relative;padding:0 20px;margin-top:20px}.nc-container .nc_scale .nc-cc-items{position:absolute;left:20px;_left:0;top:0;width:320px;overflow:hidden}.nc-container .nc_scale .nc-cc-items-inner{margin-right:-20px}.nc-container .nc_scale .nc-cc-item{position:relative;display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;margin-right:10px;margin-bottom:10px;border:1px solid #ccc;width:98px;height:98px;background:url("//gtms02.alicdn.com/tps/i2/T1ty2QFNNXXXc6Yc2r-1-1.gif");}.nc-container .nc_scale .nc-cc-item:hover{border-color:#3199f4}.nc-container .nc_scale .nc-cc-item .nc_iconfont{display:none;position:absolute;right:0;bottom:0;color:#3199f4;font-size:22px;margin-right:0}.nc-container .nc_scale .nc-cc-item.nc-cc-selected .nc_iconfont{display:block}.nc-container .nc_scale .nc-cc-tip{display:none;position:absolute;left:0;bottom:60px;width:360px;line-height:18px;text-align:center;color:#eb4f38;}.nc-container .nc_scale .nc-cc-tip span{line-height:normal}.nc-container .nc_scale .nc-cc-footer{position:absolute;left:0;bottom:20px;width:360px;height:30px;line-height:30px;text-align:center;}.nc-container .nc_scale .nc-cc-footer .nc_iconfont{color:#c4cbd0}.nc-container .nc_scale .nc-cc-refresh,.nc-container .nc_scale .nc-cc-wait{position:absolute;left:20px;top:0;color:#3199f4;cursor:pointer}.nc-container .nc_scale .nc-cc-wait{display:none}.nc-container .nc_scale .nc-cc-cancel{position:absolute;right:20px;top:0;color:#3199f4;cursor:pointer;}.nc-container .nc_scale .nc-cc-cancel .nc_iconfont{position:relative;top:-1px}.nc-container .nc_scale .nc-cc-loading{margin-top:247px;text-align:center;line-height:14px}.nc-container .nc_scale .nc-cc-loading-img{display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;vertical-align:middle;background:url("//img.alicdn.com/tps/TB1OdxsKpXXXXcgXFXXXXXXXXXX-14-14.gif") no-repeat;width:14px;height:14px;position:relative;top:-1px;margin-right:9px}.nc-container .nc_scale .nc-cc-fail{position:absolute;left:50%;top:50%;width:320px;height:180px;margin-left:-160px;margin-top:-90px;background:#fff;border-radius:4px}.nc-container .nc_scale .nc-cc-fail-inner{text-align:center;padding:55px 10px 10px}.nc-container .nc_scale .nc-cc-fail-action{margin:28px 0 18px;}.nc-container .nc_scale .nc-cc-fail-action a{display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;line-height:30px;margin-left:16px}.nc-container .nc_scale .nc-cc-contact{text-align:right;color:#666;padding-right:9px}.nc-container .nc_scale .nc-cc-mask{display:none;position:absolute;left:0;top:0;width:360px;height:570px;background:rgba(0,0,0,0.3);filter:progid:DXImageTransform.Microsoft.gradient(enabled='true',startColorstr='#4C000000', endColorstr='#4C000000');}:root .nc-container .nc_scale .nc-cc-mask{-webkit-filter:none;filter:none}.nc-container .nc_scale .nc-cc-arrow-1,.nc-container .nc_scale .nc-cc-arrow-2{display:none;position:absolute;top:340px;border:solid transparent;height:0;width:0}.nc-container .nc_scale .nc-cc-arrow-1{border-width:16px;margin-top:-1px}.nc-container .nc_scale .nc-cc-arrow-2{border-width:15px}.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1,.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1,.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2,.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2{display:block;_display:none}.nc-container .nc_scale .nc-cc-right{left:180px;top:-339px;}.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1{border-right-color:#5eaef1;left:-32px}.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2{border-right-color:#fff;left:-30px}.nc-container .nc_scale .nc-cc-left{left:-335px;top:-339px;}.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1{border-left-color:#5eaef1;right:-32px}.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2{border-left-color:#fff;right:-30px}</style><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="aes" src="./index2_files/aes.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/bootstrap-select.min" src="../index2_files/bootstrap-select.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/mdlIndex" src="../index2_files/mdlIndex.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funQuickSearch" src="../index2_files/funQuickSearch.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/jquery.lrinfo" src="./index2_files/jquery.lrinfo.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/dpPubQuery" src="../index2_files/dpPubQuery.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="js/funValidateMethods" src="../index2_files/funValidateMethods.js.下载"></script>
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
			
			
		</div>
		<div class="login-pane">
			<button class="btn btn-mini pane" onclick="window.location.href='../index.jsp'">&nbsp;&nbsp;个人登录</button>
			
		</div>
		<div class="login-pane">
            <button class="btn btn-mini pane" data-type="register" onclick="window.location.href='../register1.jsp'">&nbsp;&nbsp;用户注册</button>
            
        </div> 
        <div class="login-pane">
            <button class="btn btn-mini pane" data-type="register" onclick="window.location.href='${pageContext.request.contextPath}/logOut'">&nbsp;&nbsp;退出</button>
            
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
                <a href="${pageContext.request.contextPath}/driver/index">管理员界面</a>
				</div>
		</div>
	</div>
</div>




                </div>
                

<style>
    .footer{
        margin-top:100px;
    }
    .control-group{
        z-index: inherit!important;
    }
</style>
<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
<div class="container main mt20">
    
    <!--span9 end-->
    <!--row end-->
</div>

<script type="text/javascript" src="../static/jsthird/require.js" data-main="../static/js/base.js"
        data-page="js/mdlLoginSlide"></script>

         </div>

<div class="container">
<div class="row">
<div class="span12 focusBanner dpN"><!--这里即将放置广告图片--></div>
<div class="span9">



<div class="row">
    <div class="image-news span3">
        <div id="myCarousel" class="carousel slide">
            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="">1</li>
                <li data-target="#myCarousel" data-slide-to="1" class="">2</li>
                <li data-target="#myCarousel" data-slide-to="2" class="">3</li>
                <li data-target="#myCarousel" data-slide-to="3" class="">4</li>
                <li data-target="#myCarousel" data-slide-to="4" class="">5</li>
            </ol>
            <!-- Carousel items -->
            <div class="carousel-inner">
                <div class="item">
                    <a href="#">
                        <img src="../index2_files/wKUmeVqWERiAMTMrAAJmKXSujFw560.png" alt="">
                        <div class="carousel-caption">
                                <h4>秦淮灯会 注意事项</h4>
                        </div>
                    </a>
                </div>

                    <div class="item">
                        <a href="#">
                            <img src="../index2_files/wKUmeFpxJSyANYzvAAKEcgkW2VA163.jpg" alt="">
                            <div class="carousel-caption">
                                <h4>一夜飞雪，南京再现最美雪“警”</h4>
                            </div>
                        </a>
                    </div>

                    <div class="item active left">
                        <a href="#">
                            <img src="../index2_files/wKUmeFoyKEeAAySyAAhT2VyPmjo155.png" alt="">
                            <div class="carousel-caption">
                                <h4>国家公祭仪式期间临时交通管控 ...</h4>
                            </div>
                        </a>
                    </div>

                    <div class="item next left">
                        <a href="#">
                            <img src="../index2_files/wKUmeFnMrUOAIJbMAAVT-3kvqc8092.png" alt="">
                            <div class="carousel-caption">
                                <h4>国庆长假期间各景区出行提醒</h4>
                            </div>
                        </a>
                    </div>

                    <div class="item">
                        <a href="#">
                            <img src="../index2_files/wKUmeVl4Df-Abb2AAAC8RjHJ5YM146.jpg" alt="">
                            <div class="carousel-caption">
                                <h4>长江隧道6处监控抓拍违法变道</h4>
                            </div>
                        </a>
                    </div>


            </div>

        </div>
        <div class="slider"></div>
    </div>
   <div class="span3">
       <div class="title-bar blue" style="color: #333">
         <a class="pull-right gg-more" href="#">更多&gt;&gt;</a> <span class="ico ico-news" style="margin-top:10px;"></span>
                                交管资讯
      </div>
       <ul class="news-list">
                    <li class="active">
                        <span class="dots">·</span>
                        <a href="#" title="秦淮灯会 注意事项">秦淮灯会 注意事项</a>
                    <span class="news-time">02-28</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href=#" title="2018夫子庙秦淮灯会出行提醒" >2018夫子庙秦淮灯会出行提醒</a>
                    <span class="news-time">02-13</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#" title="南京六合新增16处电子警察" >南京六合新增16处电子警察</a>
                    <span class="news-time">02-13</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#">“年堵”已到 市民出行需注意</a>
                    <span class="news-time">02-06</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#">一夜飞雪，南京再现最美雪“警”</a>
                    <span class="news-time">01-25</span>

                    </li>
        </ul> 

 </div>                   
 <div class="span3">
       <div class="title-bar blue" style="color: #333">
         <a class="pull-right gg-more" href="#">更多&gt;&gt;</a> <span class="ico ico-attention" style="margin-top:10px;"></span>
         警示教育
       </div>
       <ul class="news-list">
                    <li class="active">
                        <span class="dots">·</span>
                        <a href="#">夏季开车跑高速牢记这4点 让你轻松</a>
                  <span class="news-time">08-10</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#">开车容易倒车难 倒车技巧详细解</a>
                  <span class="news-time">06-08</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#">使用车灯有学问 雨天这样用车灯才对</a>
                  <span class="news-time">04-21</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#">防风防沙防春困 春季安全行车10大</a>
                  <span class="news-time">03-31</span>

                    </li>
                    <li class="">
                        <span class="dots">·</span>
                        <a href="#">发生车祸如何自救</a>
                  <span class="news-time">03-08</span>

                    </li>
        </ul> 

 </div>                   
 
</div>





    

<div class="row">
    <div class="span9 top-business">
        <ul class="">
            <li>
                <a class="red" href="#">
                    <div class="icoBox">
                        <i class="ico ico-cam"></i>
                    </div>
                    <p>电子监控违法处理</p>
                </a>
            </li>
            <li>
                                <a class="yello" href="#">
                        <div class="icoBox">
                            <i class="ico ico-lpn"></i>
                        </div>
                        <p>预选机动车号牌</p>
                    </a>
                
            </li>
            <li>
                <a class="green" href="${pageContext.request.contextPath}/driver/reserve">
                        <div class="icoBox">
                            <i class="ico ico-exam"></i>
                        </div>
                        <p>考试预约</p>
                    </a>
            </li>
        </ul>
    </div>
</div>

<div class="">
    <div class="row">
        <div class="span9 home-business-list">
            <div class="title-bar blue">
               
                机动车业务
            </div>

            <ul class="">
                <li class="">
                    <span class="ico icon-server16 ico-color"></span>
                    <p class="business-title">
                        <a href="#">新车注册登记预选号牌</a>
                    </p>
                    <p class="business-info ">
                        <a href="#">在线办理</a>
                        <a href="#">模拟选号</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>

                <li class="">
                    <span class="ico ico-color icon-server16"></span>
                    <p class="business-title">
                        <a href="#">二手车转移登记预选号牌</a>
                    </p>
                    <p class="business-info ">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#" style="color:#a2030d">模拟选号</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>

                <li class="">
                    <span class="ico ico-color icon-server16"></span>
                    <p class="business-title">
                        <a href="#">二手车转入业务预选号牌</a>
                    </p>
                    <p class="business-info ">
                       
                        <a href="#" style="color:#a2030d">模拟选号</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>

                <li class="">
                    <span class="ico ico-vehxnyxh ico-color"></span>
                    <p class="business-title">
                        <a href="#">新能源汽车换发号牌预选号牌</a>
                    </p>
                    <p class="business-info ">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#" style="color:#a2030d">模拟选号</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>

                <li class="">
                    <span class="ico ico-color ico-vehxnyyy"></span>
                    <p class="business-title">
                        <a href="#">新能源汽车换发号牌预约</a>
                    </p>
                    <p class="business-info">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>


                <li class="">
                    <span class="ico icon-server17 ico-color"></span>
                    <p class="business-title">
                        <a href="#">补换领机动车号牌</a>
                    </p>
                    <p class="business-info">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>

                <li class="" style="border-bottom:none;">
                    <span class="ico ico-color ico-jdcxsz"></span>
                    <p class="business-title">
                        <a href="#">补换领机动车行驶证</a>
                    </p>
                    <p class="business-info">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>


                <li class="" style="border-bottom:none;">
                    <span class="ico ico-color ico-test"></span>
                    <p class="business-title">
                        <a href="#">补换领检验合格标志</a>
                    </p>
                    <p class="business-info">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>

                <!--<li class="" style="border-bottom:none;">
                    <span class="ico ico-color ico-test"></span>
                    <p class="business-title">
                        <a href="/veh/bhl/initBhlQuery/qmjchgbz">免检车核发检验合格标志</a>
                    </p>
                    <p class="business-info">
                        <a href="/veh/bhl/initBhlQuery/qmjchgbz" style="color:#a2030d">在线办理</a>

                        <a href="/views/help/help-netqmjchgbz.html" target="zgzn">操作指南</a>
                        <a href="/views/help-qa-fun.html?open=jdcdj" target="xgzc">相关政策</a>
                    </p>
                </li>-->
                <!--<li class="" style="">-->
                <!---->
                <!--<span class="ico  ico-test"></span>-->
                <!--<p class="business-title">-->
                <!--<a href="/m/notReady/1018">免检车核发合格标志</a>-->
                <!--</p>-->
                <!--<p class="business-info">-->


                <!--<a href="/views/help/help-netqhgbz.html" target="zgzn">操作指南</a>-->
                <!--<a href="/views/helpMain.html?type=/views/help-qa-fun" target="xgzc">相关政策</a>-->
                <!--</p>-->
                <!---->
                <!--</li>-->
                <li class="" style="border-bottom:none;">
                    <span class="ico ico-color ico-exam3"></span>
                    <p class="business-title">
                        <a href="#">机动车检验预约</a>
                    </p>
                    <p class="business-info">
                        <a href="#" style="color:#a2030d">在线办理</a>
                        <a href="#">操作指南</a>
                        <a href="#">相关政策</a>
                    </p>
                </li>
                <!--<li class="" style="border-bottom:none;">-->
                <!---->
                <!--<span class="ico ico-color ico-lic"></span>-->
                <!--<p class="business-title">-->
                <!--<a href="/views/member/vehiclemodify.html">变更联系方式</a>-->
                <!--</p>-->
                <!--<p class="business-info">-->
                <!--<a href="/views/member/vehiclemodify.html" style="color:#a2030d">在线办理</a>-->
                <!--<a href="/views/help/help-netmod.html" target="zgzn">操作指南</a>-->
                <!--<a href="/views/helpMain.html?type=/views/help-qa-fun" target="xgzc">相关政策</a>-->
                <!--</p>-->
                <!---->
                <!--</li>-->
            </ul>
        </div>
    </div>
    <div class="row">
        
    </div>
    <div class="row">
       
    </div>
</div>



</div>
<!--span9 end-->
<!-- sidebar -->
<div class="span3">
    

<div id="info-search">
    <!-- 页面右侧快速搜索栏 -->
    <!-- <div id="info-search">
    -->
    <div class="title-bar blue" style="border-color:#114ec9;color: #000">
        <i class="ico ico-search"></i>信息查询
    </div>
    <ul class="nav nav-tabs">
        <li class="">
            <a data-toggle="tab" href="#">违法</a>
        </li>
        <li class="">
            <a data-toggle="tab" href="#">记分</a>
        </li>
        <li class="">
            <a data-toggle="tab" href="#">报废</a>
        </li>
        <li class="active">
            <a data-toggle="tab" href="#">号牌邮寄</a>
        </li>
        <!--<li>-->
        <!--<a data-toggle="tab" href="#searchtab4">公告</a>-->
        <!--</li>-->
    </ul>
    <div class="tab-content sideTool" style="z-index: 3">
        <!-- 违法查询 -->
        <input type="hidden" id="hpt" value="苏">

        <div class="tab-pane" id="searchtab1">
            <form method="post"  action="#">
                <h4>机动车违法查询</h4>

                <div class="select">
                    <select name="hpzl" id="WFhpzl" data-valid="required" data-valid-ytjs="::请选择号牌种类">
                        <option value="01">大型汽车</option>
                        <option value="02" selected="selected">小型汽车</option>
                        <option value="03">使馆汽车</option>
                        <option value="04">领馆汽车</option>
                        <option value="05">境外汽车</option>
                        <option value="06">外籍汽车</option>
                        <option value="07">普通摩托车</option>
                        <option value="08">轻便摩托车</option>
                        <option value="09">使馆摩托车</option>
                        <option value="10">领馆摩托车</option>
                        <option value="11">境外摩托车</option>
                        <option value="12">外籍摩托车</option>
                        <option value="13">低速车</option>
                        <option value="14">拖拉机</option>
                        <option value="15">挂车</option>
                        <option value="16">教练汽车</option>
                        <option value="17">教练摩托车</option>
                        <option value="18">试验汽车</option>
                        <option value="19">试验摩托车</option>
                        <option value="20">临时入境汽车</option>
                        <option value="21">临时入境摩托车</option>
                        <option value="22">临时行驶车</option>
                        <option value="23">警用汽车</option>
                        <option value="24">警用摩托</option>
                        <option value="25">原农机号牌</option>
                        <option value="26">香港入出境车</option>
                        <option value="27">澳门入出境车</option>
                    </select>

                </div>

                <div class="controls controls-row cb tipBox">
                    <div class="select fL" style="width:28%;">
                        <select id="hphm1-a">
                            <option value="苏">苏</option>
                        </select>


                    </div>
                    <input id="hphm1-b" class="ml10 input_s" type="text" maxlength="7" placeholder="请输入号牌号码" style="text-transform:uppercase">
                    <input id="hphm1" name="hphm" type="hidden" value="" data-valid="required minlen:5" data-valid-delegate="#hphm1-b" data-valid-required="" data-valid-minlen="::号牌号码长度错误">
                </div>
                <div class="controls-row tipBox">
                    <input class="input_l ml-10" name="fdjh" id="WFfdjh" maxlength="6" type="text" placeholder="请输入发动机号后六位" data-valid="required">
                </div>
                <div class="controls controls-row tipBox">
                    <input class="ml-10 yzminput" name="captcha" type="text" placeholder="验证码" data-valid="required len:4" data-valid-required="" data-valid-len="::请输入4位验证码" maxlength="4">
                    <input type="hidden" name="qm" value="wf">
                </div>
                <button class="btn btn-large btn-primary btn-block" type="submit"><i class="icon-search"></i> 查询
                </button>
            </form>
        </div>
        <!-- 记分查询 -->
        <div class="tab-pane" id="searchtab2">
            <form method="post"  action="#">
                <h4>驾驶证记分查询</h4>

                <div class="controls-row tipBox">
                    <input name="jszh" type="text" maxlength="18" class="input_l ml-10" placeholder="请输入驾驶证号码" data-valid="required" data-valid-required="">
                </div>
                <div class="controls-row tipBox">
                    <input name="dabh" type="text" maxlength="12" class="input_l ml-10" placeholder="请输入驾驶证档案编号" data-valid="required" data-valid-required="">
                </div>
                <div class="controls controls-row tipBox">
                    <input class="ml-10 yzminput" type="text" name="captcha" placeholder="验证码" maxlength="4" data-valid="required len:4" data-valid-required="" data-valid-len="::请输入4位验证码">
                    <input type="hidden" name="qm" value="jf">
                </div>
                <button class="btn btn-large btn-primary btn-block" type="submit"><i class="icon-search"></i> 查询
                </button>
            </form>
        </div>
        <!-- 报废车 -->
        <div class="tab-pane" id="searchtab3">
            <form method="GET" action="#">
                <h4>报废车辆查询</h4>

                <div class="select">
                    <select name="hpzl" id="BFhpzl" data-valid="required" data-valid-ytjs="::请选择号牌种类">
                        <option value="01" selected="selected">大型汽车</option>
                        <option value="02">小型汽车</option>
                        <option value="03">使馆汽车</option>
                        <option value="04">领馆汽车</option>
                        <option value="05">境外汽车</option>
                        <option value="06">外籍汽车</option>
                        <option value="07">普通摩托车</option>
                        <option value="08">轻便摩托车</option>
                        <option value="09">使馆摩托车</option>
                        <option value="10">领馆摩托车</option>
                        <option value="11">境外摩托车</option>
                        <option value="12">外籍摩托车</option>
                        <option value="13">低速车</option>
                        <option value="14">拖拉机</option>
                        <option value="15">挂车</option>
                        <option value="16">教练汽车</option>
                        <option value="17">教练摩托车</option>
                        <option value="18">试验汽车</option>
                        <option value="19">试验摩托车</option>
                        <option value="20">临时入境汽车</option>
                        <option value="21">临时入境摩托车</option>
                        <option value="22">临时行驶车</option>
                        <option value="23">警用汽车</option>
                        <option value="24">警用摩托</option>
                        <option value="25">原农机号牌</option>
                        <option value="26">香港入出境车</option>
                        <option value="27">澳门入出境车</option>
                    </select>


                </div>
                <div class="controls controls-row cb tipBox">
                    <div class="select fL" style="width:28%;">
                        <select id="hphm2-a">
                            <option value="苏">苏</option>
                        </select>


                    </div>
                    <input class="ml10 input_s" id="hphm2-b" type="text" maxlength="7" placeholder="请输入号牌号码" value="" style="text-transform:uppercase">
                    <input id="hphm2" name="hphm" type="hidden" value="" data-valid="required minlen:5" data-valid-delegate="#hphm2-b" data-valid-required="" data-valid-minlen="::号牌号码长度错误">
                </div>
                <div class="controls-row tipBox">
                    <input class="input_l ml-10" id="BFfdjh" name="fdjh" maxlength="6" type="text" placeholder="请输入发动机号后六位" data-valid="required">
                </div>
                <div class="controls controls-row tipBox">
                    <input class="ml-10 yzminput" name="captcha" type="text" placeholder="验证码" value="" maxlength="4" data-valid="required len:4" data-valid-required="" data-valid-len="::请输入4位验证码">
                    <input type="hidden" name="qm" value="bf">
                </div>
                <button class="btn btn-large btn-primary btn-block" type="submit"><i class="icon-search"></i> 查询
                </button>
            </form>
        </div>
        <!-- 号牌寄递运单查询 -->
        <div class="tab-pane active" id="searchtab4">
            <form method="GET" action="#">
                <h4>号牌邮寄运单查询</h4>

                <div class="select">
                    <select name="hpzl" data-valid="required" data-valid-ytjs="::请选择号牌种类">
                        <option value="01">大型汽车</option>
                        <option value="02" selected="selected">小型汽车</option>
                        <option value="03">使馆汽车</option>
                        <option value="04">领馆汽车</option>
                        <option value="05">境外汽车</option>
                        <option value="06">外籍汽车</option>
                        <option value="07">普通摩托车</option>
                        <option value="08">轻便摩托车</option>
                        <option value="09">使馆摩托车</option>
                        <option value="10">领馆摩托车</option>
                        <option value="11">境外摩托车</option>
                        <option value="12">外籍摩托车</option>
                        <option value="13">低速车</option>
                        <option value="14">拖拉机</option>
                        <option value="15">挂车</option>
                        <option value="16">教练汽车</option>
                        <option value="17">教练摩托车</option>
                        <option value="18">试验汽车</option>
                        <option value="19">试验摩托车</option>
                        <option value="20">临时入境汽车</option>
                        <option value="21">临时入境摩托车</option>
                        <option value="22">临时行驶车</option>
                        <option value="23">警用汽车</option>
                        <option value="24">警用摩托</option>
                        <option value="25">原农机号牌</option>
                        <option value="26">香港入出境车</option>
                        <option value="27">澳门入出境车</option>
                    </select>


                </div>
                <div class="controls controls-row cb tipBox">
                    <div class="select fL" style="width:28%;">
                        <select id="hphm3-a">
                            <option value="苏">苏</option>
                        </select>

                    </div>
                    <input class="ml10 input_s" id="hphm3-b" type="text" maxlength="7" placeholder="请输入号牌号码" value="" style="text-transform:uppercase">
                    <input id="hphm3" name="hphm" type="hidden" value="" data-valid="required minlen:6" data-valid-delegate="#hphm3-b" data-valid-required="" data-valid-minlen="::号牌号码长度错误">
                </div>
                <div class="controls-row tipBox">
                    <input class="input_l ml-10" name="sjhm" maxlength="11" type="text" placeholder="请输入手机号码" data-valid="required">
                </div>
                <div class="controls controls-row tipBox">
                    <input class="ml-10 yzminput" name="captcha" type="text" placeholder="验证码" value="" maxlength="4" data-valid="required len:4" data-valid-required="" data-valid-len="::请输入4位验证码">
                    <input type="hidden" name="qm" value="hpjd">
                </div>
                <button class="btn btn-large btn-primary btn-block" type="submit"> 查询
                </button>
            </form>
        </div>
        <!--&lt;!&ndash; 公告 &ndash;&gt;-->
        <!--<div class="tab-pane" id="searchtab4">-->
        <!--<form method="GET" target="_self" action="/views/inquiry.html">-->
        <!--<h4>机动车公告参数查询</h4>-->

        <!--<div class="controls-row">-->
        <!--<input name="clpp" type="text" class="input_l ml-10" placeholder="请输入车辆品牌">-->
        <!--</div>-->
        <!--<div class="controls-row tipBox">-->
        <!--<input name="clxh" type="text" class="input_l ml-10" placeholder="请输入车辆型号"-->
        <!--data-valid="required:clpp"-->
        <!--data-valid-required="">-->
        <!--</div>-->
        <!--<div class="controls controls-row tipBox">-->
        <!--<input class="ml-10 yzminput" name="captcha" type="text" placeholder="验证码"-->
        <!--maxlength="4"-->
        <!--data-valid="required len:4" data-valid-required=""-->
        <!--data-valid-len="::请输入4位验证码"/>-->
        <!--<input type="hidden" name="qm" value="gg"/>-->
        <!--</div>-->
        <!--<button class="btn btn-large btn-success btn-block" type="submit"><i-->
        <!--class="icon-search"></i> 查询-->
        <!--</button>-->
        <!--</form>-->
        <!--</div>-->
    </div>
    <!--tab-box end-->
</div>
<div class="feature" id="meta-feathre">
    <div class="title-bar">便民工具</div>
    <ul>
            <li>
                <a href="#">车检计算器</a>
            </li>
            <li>
                <a href="#">交通违法罚缴(使用ie浏览器) </a>
            </li>
    </ul>
</div>


<script type="text/javascript" src="../index2_files/jquery-1.10.2.min.js(1).下载"></script>
<script type="text/javascript">
    $(window).on('load', function () {
        $("#BFhpzl").change(function () {
            if ($(this).val() == '15') {
                $('#BFfdjh').val('无').attr('readonly', true)
            } else {
                $('#BFfdjh').val('').removeAttr('readonly')
            }
        });
        $("#WFhpzl").change(function () {
            if ($(this).val() == '15') {
                $('#WFfdjh').val('无').attr('readonly', true)
            } else {
                $('#WFfdjh').val('').removeAttr('readonly')
            }
        });
        $("#hphm3-b").change(function () {
            $("#hphm3").val($("#hphm3-a").val()+$(this).val())
        })
    });
</script>



</div>
<!--span3 end-->
</div>
</div>
<div id="forNoticeZone"></div>

<!--row end-->
<div id="left"></div>
<div id="center"></div>
<div id="right"></div>
<!-- Modal -->
<div id="remoteModal" style="width:50%;left:60%;top:20%" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">通知</h3>
    </div>
    <div class="modal-body">
        <p></p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    </div>
</div>
                

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
                    <a href="#">苏ICP备06012607号-2</a>
                    <a href="#" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;margin-left: 10px;"><img src="../static/img/batb.png" style="float:left;margin-right: 5px"/>苏公网安备 32021102000598号</a>
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
