
var hexcase=0;var chrsz=8;function hex_md5(A){return binl2hex(core_md5(str2binl(A),A.length*chrsz))}
function core_md5(K,F){K[F>>5]|=128<<((F)%32);K[(((F+64)>>>9)<<4)+14]=F;var J=1732584193;var I=-271733879;var H=-1732584194;var G=271733878;for(var C=0;C<K.length;C+=16){var E=J;var D=I;var B=H;var A=G;J=md5_ff(J,I,H,G,K[C+0],7,-680876936);G=md5_ff(G,J,I,H,K[C+1],12,-389564586);H=md5_ff(H,G,J,I,K[C+2],17,606105819);I=md5_ff(I,H,G,J,K[C+3],22,-1044525330);J=md5_ff(J,I,H,G,K[C+4],7,-176418897);G=md5_ff(G,J,I,H,K[C+5],12,1200080426);H=md5_ff(H,G,J,I,K[C+6],17,-1473231341);I=md5_ff(I,H,G,J,K[C+7],22,-45705983);J=md5_ff(J,I,H,G,K[C+8],7,1770035416);G=md5_ff(G,J,I,H,K[C+9],12,-1958414417);H=md5_ff(H,G,J,I,K[C+10],17,-42063);I=md5_ff(I,H,G,J,K[C+11],22,-1990404162);J=md5_ff(J,I,H,G,K[C+12],7,1804603682);G=md5_ff(G,J,I,H,K[C+13],12,-40341101);H=md5_ff(H,G,J,I,K[C+14],17,-1502002290);I=md5_ff(I,H,G,J,K[C+15],22,1236535329);J=md5_gg(J,I,H,G,K[C+1],5,-165796510);G=md5_gg(G,J,I,H,K[C+6],9,-1069501632);H=md5_gg(H,G,J,I,K[C+11],14,643717713);I=md5_gg(I,H,G,J,K[C+0],20,-373897302);J=md5_gg(J,I,H,G,K[C+5],5,-701558691);G=md5_gg(G,J,I,H,K[C+10],9,38016083);H=md5_gg(H,G,J,I,K[C+15],14,-660478335);I=md5_gg(I,H,G,J,K[C+4],20,-405537848);J=md5_gg(J,I,H,G,K[C+9],5,568446438);G=md5_gg(G,J,I,H,K[C+14],9,-1019803690);H=md5_gg(H,G,J,I,K[C+3],14,-187363961);I=md5_gg(I,H,G,J,K[C+8],20,1163531501);J=md5_gg(J,I,H,G,K[C+13],5,-1444681467);G=md5_gg(G,J,I,H,K[C+2],9,-51403784);H=md5_gg(H,G,J,I,K[C+7],14,1735328473);I=md5_gg(I,H,G,J,K[C+12],20,-1926607734);J=md5_hh(J,I,H,G,K[C+5],4,-378558);G=md5_hh(G,J,I,H,K[C+8],11,-2022574463);H=md5_hh(H,G,J,I,K[C+11],16,1839030562);I=md5_hh(I,H,G,J,K[C+14],23,-35309556);J=md5_hh(J,I,H,G,K[C+1],4,-1530992060);G=md5_hh(G,J,I,H,K[C+4],11,1272893353);H=md5_hh(H,G,J,I,K[C+7],16,-155497632);I=md5_hh(I,H,G,J,K[C+10],23,-1094730640);J=md5_hh(J,I,H,G,K[C+13],4,681279174);G=md5_hh(G,J,I,H,K[C+0],11,-358537222);H=md5_hh(H,G,J,I,K[C+3],16,-722521979);I=md5_hh(I,H,G,J,K[C+6],23,76029189);J=md5_hh(J,I,H,G,K[C+9],4,-640364487);G=md5_hh(G,J,I,H,K[C+12],11,-421815835);H=md5_hh(H,G,J,I,K[C+15],16,530742520);I=md5_hh(I,H,G,J,K[C+2],23,-995338651);J=md5_ii(J,I,H,G,K[C+0],6,-198630844);G=md5_ii(G,J,I,H,K[C+7],10,1126891415);H=md5_ii(H,G,J,I,K[C+14],15,-1416354905);I=md5_ii(I,H,G,J,K[C+5],21,-57434055);J=md5_ii(J,I,H,G,K[C+12],6,1700485571);G=md5_ii(G,J,I,H,K[C+3],10,-1894986606);H=md5_ii(H,G,J,I,K[C+10],15,-1051523);I=md5_ii(I,H,G,J,K[C+1],21,-2054922799);J=md5_ii(J,I,H,G,K[C+8],6,1873313359);G=md5_ii(G,J,I,H,K[C+15],10,-30611744);H=md5_ii(H,G,J,I,K[C+6],15,-1560198380);I=md5_ii(I,H,G,J,K[C+13],21,1309151649);J=md5_ii(J,I,H,G,K[C+4],6,-145523070);G=md5_ii(G,J,I,H,K[C+11],10,-1120210379);H=md5_ii(H,G,J,I,K[C+2],15,718787259);I=md5_ii(I,H,G,J,K[C+9],21,-343485551);J=safe_add(J,E);I=safe_add(I,D);H=safe_add(H,B);G=safe_add(G,A)}
return Array(J,I,H,G)}
function md5_cmn(F,C,B,A,E,D){return safe_add(bit_rol(safe_add(safe_add(C,F),safe_add(A,D)),E),B)}
function md5_ff(C,B,G,F,A,E,D){return md5_cmn((B&G)|((~B)&F),C,B,A,E,D)}
function md5_gg(C,B,G,F,A,E,D){return md5_cmn((B&F)|(G&(~F)),C,B,A,E,D)}
function md5_hh(C,B,G,F,A,E,D){return md5_cmn(B^G^F,C,B,A,E,D)}
function md5_ii(C,B,G,F,A,E,D){return md5_cmn(G^(B|(~F)),C,B,A,E,D)}
function safe_add(A,D){var C=(A&65535)+(D&65535);var B=(A>>16)+(D>>16)+(C>>16);return(B<<16)|(C&65535)}
function bit_rol(A,B){return(A<<B)|(A>>>(32-B))}
function binl2hex(C){var B=hexcase?"0123456789ABCDEF":"0123456789abcdef";var D="";for(var A=0;A<C.length*4;A++){D+=B.charAt((C[A>>2]>>((A%4)*8+4))&15)+B.charAt((C[A>>2]>>((A%4)*8))&15)}
return D}
function str2binl(D){var C=Array();var A=(1<<chrsz)-1;for(var B=0;B<D.length*chrsz;B+=chrsz){C[B>>5]|=(D.charCodeAt(B/chrsz)&A)<<(B%32)}
return C}
function b64_423(E){var D=new Array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","-","_");var F=new String();for(var C=0;C<E.length;C++){for(var A=0;A<64;A++){if(E.charAt(C)==D[A]){var B=A.toString(2);F+=("000000"+B).substr(B.length);break}}
if(A==64){if(C==2){return F.substr(0,8)}
else{return F.substr(0,16)}}}
return F}
function b2i(D){var A=0;var B=128;for(var C=0;C<8;C++,B=B/2){if(D.charAt(C)=="1"){A+=B}}
return String.fromCharCode(A)}
function b64_decodex(D){var B=new Array();var C;var A="";for(C=0;C<D.length;C+=4){A+=b64_423(D.substr(C,4))}
for(C=0;C<A.length;C+=8){B+=b2i(A.substr(C,8))}
return B}
function utf8to16(I){var D,F,E,G,H,C,B,A,J;D=[];G=I.length;F=E=0;while(F<G){H=I.charCodeAt(F++);switch(H>>4){case 0:case 1:case 2:case 3:case 4:case 5:case 6:case 7:D[E++]=I.charAt(F-1);break;case 12:case 13:C=I.charCodeAt(F++);D[E++]=String.fromCharCode(((H&31)<<6)|(C&63));break;case 14:C=I.charCodeAt(F++);B=I.charCodeAt(F++);D[E++]=String.fromCharCode(((H&15)<<12)|((C&63)<<6)|(B&63));break;case 15:switch(H&15){case 0:case 1:case 2:case 3:case 4:case 5:case 6:case 7:C=I.charCodeAt(F++);B=I.charCodeAt(F++);A=I.charCodeAt(F++);J=((H&7)<<18)|((C&63)<<12)|((B&63)<<6)|(A&63)-65536;if(0<=J&&J<=1048575){D[E]=String.fromCharCode(((J>>>10)&1023)|55296,(J&1023)|56320)}
else{D[E]="?"}
break;case 8:case 9:case 10:case 11:F+=4;D[E]="?";break;case 12:case 13:F+=5;D[E]="?";break}}
E++}
return D.join("")}
function getStringLen(B){var A=B.match(/[^\x00-\xff]/ig);return B.length+(A==null?0:A.length)}
function getBrowserType(){var btype=0;var ag=navigator.userAgent.toLowerCase();var isMSIE=(ag.indexOf('msie')!=-1)&&(ag.indexOf('opera')==-1);if(isMSIE){var ie_version=(eval("/*@cc_on''+@_jscript_version@*/")).substr(2);if(ie_version=="6"){btype=1}
else{if(ie_version=="7"){btype=5}
else{if(ie_version=="8"){btype=6}}}}
else{if(typeof(Components)=="object"){btype=2}
else{if(typeof(window.opera)=="object"){btype=3}
else{if(navigator.appVersion.indexOf("Safari")>=0){btype=4}}}}
return btype}
function checkCookieEnabled(){try{if(navigator.cookieEnabled==false){return false}}
catch(A){}
return true}
Function.prototype.bindFunc=function(B){if(typeof(B)!="object"){return false}
var A=this;return function(){return A.apply(B,arguments)}};var login_status="";var logout_status="";var renew_status="";var iscr=document.domain.indexOf("bai")===-1;var PassportCardList=[];var PassportSC={cvsid:"$Id: pp18030.js,v 1.105 2009/02/10 10:14:58 jiangyan Exp $",appid:1062,max_line_length:30,domain:"",cookie:false,email:"",bindDomainSelector:true,autopad:"",autoRedirectUrl:"",loginRedirectUrl:"",logoutRedirectUrl:"",selectorTitle:"",registerUrl:"http://passport.sohu.com/web/signup.jsp",recoverUrl:"http://passport.sohu.com/web/recover.jsp",postru:"",defaultEmailPostfix:"",placeholder:'',ptype:'閭',emailPostfix:false,curDSindex:-1,usePost:0,successCalledFunc:false,curCardIndex:0,rootElement:false,dsElement:false,sElement:false,cElement:false,dsAnchor:false,emailInput:false,passwdInput:false,pcInput:false,loginMsg:false,iElement:false,isSetFocus:true,eInterval:false,maxIntervalCount:100,intervalCount:0,defualtRemPwd:"",isShowRemPwdMsg:0,campImg:"http://www.sohu.com/passport/images/pic007.gif",campImgAlt:"澶ф湰钀�",campUrl:"http://blog.sohu.com/camp?from=",cardTitle:"涓婃悳鐙愶紝鐭ュぉ涓�",firstDomain:"",defaultApp:"",domainPool:["chinaren.com","sogou.com"],domainList:["sohu.com","chinaren.com","sogou.com","vip.sohu.com","17173.com","focus.cn","game.sohu.com"],appList:{"1000":"mail","1005":"alumni","10050":"chinaren","1019":"blog","1017":"pp","1001":"club","1038":"crclub","1039":"group","1021":"music","1010":"say","1042":"cbbs","1028":"focus","1029":"17173","1013":"vip","1035":"rpggame","1044":"pinyin","1022":"relaxgame"},appName:{mail:"閭欢",alumni:"鏍″弸褰�",chinaren:"ChinaRen",blog:"鍗氬",pp:"鐩稿唽",club:"鎼滅嫄绀惧尯",crclub:"CR绀惧尯",group:"缇ょ粍",music:"闊充箰鐩�",say:"璇村惂",cbbs:"鏍″弸璁哄潧",focus:"鐒︾偣鎴夸骇","17173":"娓告垙璁哄潧",vip:"vip閭",rpggame:"RPG娓告垙",pinyin:"杈撳叆娉�",relaxgame:"浼戦棽娓告垙"},appUrl:{mail:"",alumni:"http://class.chinaren.com",chinaren:"",blog:"http://blog.sohu.com/",pp:"http://pp.sohu.com/",club:"http://club.sohu.com",crclub:"http://club.chinaren.com",group:"http://i.chinaren.com/group",say:"http://s.sogou.com",music:"http://mbox.sogou.com/",cbbs:"http://cbbs.chinaren.com",focus:"http://www.focus.cn","17173":"http://bbs.17173.com",vip:"http://vip.sohu.com",rpggame:"http://game.sohu.com",pinyin:"http://pinyin.sogou.com",relaxgame:"http://game.sohu.com/index2.htm"},appPool:false,bottomRow:[],recomServ:[],getDomain:function(){var B=document.domain.split(".");var A=B.length;if(A<=2){return document.domain}
return B[A-2]+"."+B[A-1]},addCookie:function(B,D,E){if(this.domain==""){this.domain=this.getDomain()}
var C=B+"="+escape(D)+"; path=/; domain=."+this.domain+";";if(E>0){var A=new Date();A.setTime(A.getTime()+E*3600*1000);C=C+"expires="+A.toGMTString()+";"}
document.cookie=C},getCookie:function(A){var E=document.cookie;var C=document.cookie.split("; ");var D=A+"=";for(var B=0;B<C.length;B++){if(C[B].indexOf(D)==0){return C[B].substr(D.length)}}
return""},deleteCookie:function(A){if(this.domain==""){this.domain=this.getDomain()}
var C=new Date();C.setTime(C.getTime()-100000);var B=this.getCookie(A);document.cookie=A+"="+B+"; expires="+C.toGMTString()+"; path=/; domain=."+this.domain+";"},preventEvent:function(A){A.cancelBubble=true;A.returnValue=false;if(A.preventDefault){A.preventDefault()}
if(A.stopPropagation){A.stopPropagation()}},getPosition:function(B,A){var C=0;while(B){C+=B[A];B=B.offsetParent}
return C},getTime:function(){var A=new Date();return A.getTime()},strip:function(A){return A.replace(/^\s+/,"").replace(/\s+$/,"")},reportMsg:function(A){var B="";var key=null;switch(A){case"1":B+="璇疯緭鍏ョ櫥褰曢偖绠�";break;case"2":B+="閭鏍煎紡閿欒";break;case"3":B+="閭鍚庣紑蹇呴』涓�"+arguments[1];break;case"4":B+="璇疯緭鍏ョ櫥褰曞瘑鐮�";break;case"5":var EM=this.emailInput.value,M=EM.toLowerCase();if(M.indexOf('@17173.com')==-1&&M.indexOf('@game.sohu.com')==-1){if(login_status=="error2"){if(M.indexOf('@sohu.com')!=-1||M.indexOf('@sogou.com')!=-1){if(/^\d+@/.test(M)){var E='q'+EM;B+='閭涓嶅瓨鍦紝鏄惁涓� <a href="javascript:PassportSC.resetEmail(\''+E+'\');">'+E+'</a>';key='wrongemail_onlynumber';}else{var R=M.match(/^(a|qq)((\d+)@[^@]+)$/);if(R){var E='q'+R[2];B+='閭涓嶅瓨鍦紝鏄惁涓�<a href="javascript:PassportSC.resetEmail(\''+E+'\');">'+E+'</a>';key='wrongemail_aorqq2q';}else{if(M.indexOf('@sohu.com')!=-1){B+="閭涓嶅瓨鍦紝鍚庣紑鎹�<a href='javascript:PassportSC.setEmailPosfix(\"@sogou.com\");'>@sogou.com</a>璇曚竴娆�";key='wrongemail_sohu';}else{B+="閭涓嶅瓨鍦紝鍚庣紑鎹�<a href='javascript:PassportSC.setEmailPosfix(\"@sohu.com\");'>@sohu.com</a>璇曚竴娆�";key='wrongemail_sogou';}}}}else{if(M.indexOf('@')!=-1){B+='閭涓嶅瓨鍦�'+(iscr?'锛�<a view-method="get" view-container-options="{theme: \'d-recoverPwd\',width:\'655\'}" view-container="_dialog" view-url="/app/alumni/public/find/first_step_1.do?provid=1&amp;schooltype=6" href="javascript:void(0);" onmousedown="$call(\'sohu.sa.cc(\\\'login_passport_error_find\\\')\', \'sohu.sa.*\');">鐐硅繖閲屾壘鍥炶处鍙�</a>':'');}else if(/^((\(\d{3}\))|(\d{3}\-))?1(3|5|8)\d{9}$/.test(M)){B+='璇ユ墜鏈哄彿涓嶅瓨鍦�'+(iscr?'锛�<a view-method="get" view-container-options="{theme: \'d-recoverPwd\',width:\'655\'}" view-container="_dialog" view-url="/app/alumni/public/find/first_step_1.do?provid=1&amp;schooltype=6" href="javascript:void(0);" onmousedown="$call(\'sohu.sa.cc(\\\'login_passport_error_find\\\')\', \'sohu.sa.*\');">鐐硅繖閲屾壘鍥炶处鍙�</a>':'');}else if(M.indexOf('@')==-1){B+='璇ヨ处鍙蜂笉瀛樺湪'+(iscr?'锛�<a view-method="get" view-container-options="{theme: \'d-recoverPwd\',width:\'655\'}" view-container="_dialog" view-url="/app/alumni/public/find/first_step_1.do?provid=1&amp;schooltype=6" href="javascript:void(0);" onmousedown="$call(\'sohu.sa.cc(\\\'login_passport_error_find\\\')\', \'sohu.sa.*\');">鐐硅繖閲屾壘鍥炶处鍙�</a>':'');}
key=M.indexOf('@chinaren.com')==-1?'wrongemail_notsohu':'wrongemail_chinaren';}}else{B+='瀵嗙爜閿欒锛岃娉ㄦ剰瀵嗙爜澶у皬鍐�'+(iscr?'<br/>濡傚繕璁板瘑鐮侊紝<a href="http://passport.sohu.com/web/recoverpwd" target="_blank" onmousedown="$call(\'sohu.sa.cc(\\\'login_password_error_find\\\')\', \'sohu.sa.*\');">鐐硅繖閲屾壘鍥炲瘑鐮�</a>':'');key='wrongpwd';}}else{B+="閭鎴栧瘑鐮侀敊璇�";}
break;case"6":B+="鐧诲綍瓒呮椂锛岃绋嶅悗閲嶈瘯";break;case"7":B+="鐧诲綍澶辫触锛岃閲嶈瘯";break;case"8":B+="缃戠粶鏁呴殰锛岄€€鍑哄け璐ワ紝璇烽噸鏂伴€€鍑�";break;case"9":B+="鐧诲綍澶辫触锛岃绋嶅悗閲嶈瘯";break;case"10":B+="鏆傛椂涓嶅彲鐧诲綍锛岃绋嶅悗閲嶈瘯";break;case"11":B+="娴忚鍣ㄨ缃湁璇紝璇锋煡鐪嬪府鍔╀慨姝�";break;case"12":var E='q'+PassportSC.getEmailPrefix()+'@sohu.com';B+='閭鏍煎紡閿欒锛岄偖绠卞悕涓渶鍖呭惈瀛楁瘝锛屼緥濡傦細 <a href="javascript:PassportSC.resetEmail(\''+E+'\');">'+E+'</a>';key='onlynumber';break;default:B+="鐧诲綍閿欒锛岃绋嶅悗閲嶈瘯"}
this.showMsg(B);if(!key)key=A;$call(function(){sohu.sa.cc("index_login_error_"+key,{input:PassportSC.emailInput?PassportSC.emailInput.value:'',ld_sohu:PassportSC.getCookie('lastdomain'),ld_bai:PassportSC.getCookie('bai_ld'),cookie:PassportSC._initEmail||''});},'sohu.sa.*');},showMsg:function(A){if(!this.loginMsg){return}
this.loginMsg.innerHTML=A},cookieHandle:function(){if(!this.cookie){this.parsePassportCookie()}
if(this.cookie&&this.cookie.userid!=""){return this.cookie.userid}
else{return""}},parsePassportCookie:function(){var E=document.cookie.split("; ");for(var D=0;D<E.length;D++){if(E[D].indexOf("ppinf=")==0){var C=E[D].substr(6);break}
if(E[D].indexOf("passport=")==0){var C=E[D].substr(9);break}}
if(D==E.length){this.cookie=false;return}
try{var A=unescape(C).split("|");if(A[0]=="1"||A[0]=="2"){var B=utf8to16(b64_decodex(A[3]));this._parsePassportCookie(B);return}}
catch(F){}},_parsePassportCookie:function(F){var J;var C;var D;this.cookie=new Object;J=0;C=F.indexOf(":",J);while(C!=-1){var B;var A;var I;B=F.substring(J,C);lenEnd_offset=F.indexOf(":",C+1);if(lenEnd_offset==-1){break}
A=parseInt(F.substring(C+1,lenEnd_offset));I=F.substr(lenEnd_offset+1,A);if(F.charAt(lenEnd_offset+1+A)!="|"){break}
this.cookie[B]=I;J=lenEnd_offset+2+A;C=F.indexOf(":",J)}
try{this.cookie.service=new Object;var H=this.cookie.service;H.mail=0;H.alumni=0;H.chinaren=0;H.blog=0;H.pp=0;H.club=0;H.crclub=0;H.group=0;H.say=0;H.music=0;H.focus=0;H["17173"]=0;H.vip=0;H.rpggame=0;H.pinyin=0;H.relaxgame=0;var G=this.cookie.serviceuse;if(G.charAt(0)==1){H.mail="sohu"}
else{if(G.charAt(2)==1){H.mail="sogou"}
else{if(G.charAt(6)==1){H.mail="chinaren"}}}
if(G.charAt(1)==1){H.alumni=1}
if(G.charAt(3)==1){H.blog=1}
if(G.charAt(4)==1){H.pp=1}
if(G.charAt(5)==1){H.club=1}
if(G.charAt(7)==1){H.crclub=1}
if(G.charAt(8)==1){H.group=1}
if(G.charAt(9)==1){H.say=1}
if(G.charAt(10)==1){H.music=1}
if(G.charAt(11)==1||this.cookie.userid.indexOf("@focus.cn")>0){H.focus=1}
if(G.charAt(12)==1||this.cookie.userid.indexOf("@17173.com")>0){H["17173"]=1}
if(G.charAt(13)==1){H.vip=1}
if(G.charAt(14)==1){H.rpggame=1}
if(G.charAt(15)==1){H.pinyin=1}
if(G.charAt(16)==1){H.relaxgame=1}}
catch(E){}},parseAppid:function(){var D=this.appid.toString();var C=0;this.appPool=new Array();for(var B in this.appList){var A=this.appList[B];if(typeof(A)!="string"){continue}
if(B==D){this.defaultApp=this.appName[A]}
else{if(B=="1028"){this.appPool[C]={app:"focus",name:"涓氫富璁哄潧",url:"http://blog.focus.cn/myforum.php"};C++;this.appPool[C]={app:"focus",name:"瑁呬慨璁哄潧",url:"http://home.focus.cn/group/group_forum.php"}}
else{this.appPool[C]={app:A,name:this.appName[A],url:this.appUrl[A]}}
C++}}},getBottomRow:function(){var A=0;var B=this.max_line_length-getStringLen(this.defaultApp);this.bottomRow[0]=new Array();this.bottomRow[1]=new Array();if(!this.cookie){return}
A=this._getBottomRow(this.bottomRow[0],B,0);B=this.max_line_length;A=this._getBottomRow(this.bottomRow[1],B,A)},_getBottomRow:function(J,F,C){var A,D;var H=this.cookie.service;var G=this.appPool;var E=C;var I;for(D=0;E<G.length;E++){A=G[E]["app"];if(typeof(A)!="string"){continue}
if(typeof(H[A])=="undefined"){continue}
if(H[A]!=0){I=getStringLen(G[E]["name"]);if(F-I<0){break}
F-=(I+2);J[D]=G[E];if(A=="mail"){if(H.mail=="sohu"){J[D]["url"]="http://mail.sohu.com?appid=0001"}
else{if(H.mail=="sogou"){J[D]["url"]="http://mail.sogou.com"}
else{J[D]["url"]="http://mail.chinaren.com"}}}
D++}
else{if(G[E]["name"]=="ChinaRen"){continue}
var B=this.recomServ.length;this.recomServ[B]=G[E];if(A=="mail"){this.recomServ[B]["url"]="http://mail.chinaren.com"}}}
return E},parseLastDomain:function(H){this.emailPostfix=new Array();this.candidate=[];var B="",K="";var A="",L="",F=[];var J=document.cookie.split("; ");for(var D=0;D<J.length;D++){if(J[D].indexOf("lastdomain=")==0){try{F=unescape(J[D].substr(11)).split("|")}
catch(G){}
break}}
var C=0;if(F.length>=3){var I=utf8to16(b64_decodex(F[1]));var E=I.split("|");for(var D=0;D<E.length;D++){if(E[D]!=""){this.emailPostfix[C]=E[D];this.candidate.push(E[D]);this.candidate[E[D]]=true;C++}}}
if(this.firstDomain!=""){for(var D in H){if(this.firstDomain==H[D]){K=H[D];break}}
if(K!=""){this.emailPostfix[C]=K;C++}}
if(document.domain.indexOf("game.sohu.com")>=0){B="game.sohu.com";this.emailPostfix[C]=B;C++}
this.emailPostfix[C]=this.domain;C++;for(var D in H){if(typeof(H[D])!="string"){continue}
if(H[D]!=this.domain&&H[D]!=B&&H[D]!=K){this.emailPostfix[C]=H[D];C++}}},doPost:function(){for(var C=0;C<document.forms.length;C++){if(document.forms[C].name=="loginform"){break}}
if(C==document.forms.length){document.location.href="http://passport.sohu.com";return false}
var A=getBrowserType();var B=screen.width;document.forms[C].action="http://passport.sohu.com/sso/login_js.jsp?appid="+this.appid+"&ru="+this.postru+"&b="+A+"&w="+B;document.forms[C].submit();return false},doLogin:function(){var inputEmail=PassportSC.emailInput.value;$call(function(){sohu.sa.cc("index_login",{input:inputEmail,cookie:PassportSC._initEmail});},'sohu.sa.*');inputEmail=inputEmail.replace(/\s/gi,'');PassportSC.emailInput.value=inputEmail;if(this.eInterval){return}
if(arguments[0]){PassportCardList[index].doLogin()}
login_status="";this.intervalCount=0;this.sElement.innerHTML="";this.email=this.strip(this.emailInput.value);var C=this.email;var B=this.strip(this.passwdInput.value);var A=0;if(this.pcInput.checked==true){A=1}
if(C==""){this.reportMsg("1");this.emailInput.focus();return false}
var isMobile=/^((\(\d{3}\))|(\d{3}\-))?1(3|5|8)\d{9}$/.test(C);if(!isMobile){if(this.defaultEmailPostfix&&C.indexOf("@")==-1){C=C+"@"+this.defaultEmailPostfix}
if(C.indexOf("@")==-1){if(this.autopad!=""){C=C+"@"+this.autopad}
else{this.reportMsg("2");this.emailInput.focus();return false}}
if(!/^\w+([-+.]\w*)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(C)){this.reportMsg("2");this.emailInput.focus();return false;}
if(this.autopad!=""){var D=C.substr(C.indexOf("@")+1);if(this.autopad!=D){this.reportMsg("3",this.autopad);this.emailInput.focus();this.passwdInput.value="";return false}}}
if(B==""){this.reportMsg("4");this.passwdInput.value="";this.passwdInput.focus();return false}
if(this.usePost==1){return this.doPost()}
this.drawPassportWait("姝ｅ湪鐧诲綍鎼滅嫄閫氳璇侊紝璇风◢鍊�...");return this.loginHandle(C,B,A,this.sElement,this.loginFailCall.bindFunc(this),this.loginSuccessCall.bindFunc(this))},loginHandle:function(L,F,H,N,G,C){if(typeof(N)!="object"){return false}
if(checkCookieEnabled()==false){G();return false}
login_status="";var I=getBrowserType();var J=screen.width;if(this.domain==""){this.domain=this.getDomain()}
var B=this.getTime();var D=hex_md5(F);try{var A="http://passport.sohu.com/sso/login.jsp?userid="+encodeURIComponent(L)+"&password="+D+"&appid="+this.appid+"&persistentcookie="+H+"&s="+B+"&b="+I+"&w="+J+"&pwdtype=1"}
catch(E){var A="http://passport.sohu.com/sso/login.jsp?userid="+L+"&password="+D+"&appid="+this.appid+"&persistentcookie="+H+"&s="+B+"&b="+I+"&w="+J+"&pwdtype=1"}
if(this.domain!="sohu.com"){A+="&domain="+this.domain}
var K=document.createElement("script");K.src=A;N.appendChild(K);var M=this;this.eInterval=setInterval(function(){M.loginIntervalProc(G,C,N)},100);return false},loginIntervalProc:function(A,B,C){if(login_status==""&&this.intervalCount<this.maxIntervalCount){this.intervalCount++;return}
clearInterval(this.eInterval);this.eInterval=false;if(login_status!="success"||this.intervalCount>=this.maxIntervalCount){A();return}
if(this.loginRedirectUrl==""){this.autoProcAllDomain("login",C)}
else{this.addCookie("crossdomain",this.getTime(),336)}
B()},loginFailCall:function(){var pwd=PassportSC.passwdInput.value;this.sElement.innerHTML="";this.drawLoginForm();if(this.intervalCount>=this.maxIntervalCount){this.reportMsg("6");this.emailInput.focus()}
else{if(login_status=="error3"||login_status=="error2"){this.reportMsg("5");this.passwdInput.focus();}
else{if(login_status=="error5"){this.reportMsg("10");this.passwdInput.focus()}
else{if(login_status=="error13"){window.location="http://passport.sohu.com/web/remind_activate.jsp";return}
else{if(checkCookieEnabled()==false){this.reportMsg("11");this.emailInput.focus()}
else{this.reportMsg("9");this.passwdInput.focus()}}}}}},loginSuccessCall:function(){this.parsePassportCookie();if(this.cookie&&this.cookie.userid!=""){this.email="";if(this.loginRedirectUrl!=""){if(this.cookie.service["mail"]!="0"&&(this.appid=="1000"||this.appid=="1014"||this.appid=="1037")){if(this.domain.indexOf(this.cookie.service["mail"])==-1){this.drawLoginForm()}
else{document.location.href=this.loginRedirectUrl}}
else{if(document.location.href==this.loginRedirectUrl){document.location.reload()}
else{document.location.href=this.loginRedirectUrl}}}
else{this.getBottomRow();this.drawPassportCard();for(i=0;i<PassportCardList.length;i++){if(i==this.curCardIndex){continue}
PassportCardList[i].parsePassportCookie();PassportCardList[i].getBottomRow();PassportCardList[i].drawPassportCard()}}
$call(function(){sohu.sa.cc("index_login_success",{input:PassportSC.emailInput.value,cookie:PassportSC._initEmail});},'sohu.sa.*');}
else{this.drawLoginForm();this.reportMsg("7")}},doLogout:function(){if(this.eInterval){return}
this.intervalCount=0;this.sElement.innerHTML="";if(this.usePost==1){window.location="http://passport.sohu.com/sso/logout_js.jsp?s="+this.getTime()+"&ru="+this.postru}
else{this.logoutHandle(this.sElement,this.logoutFailCall.bindFunc(this),this.logoutSuccessCall.bindFunc(this,"dd"))}},logoutHandle:function(F,B,E){if(typeof(F)!="object"){return false}
logout_status="";if(this.domain==""){this.domain=this.getDomain()}
var G=this.getTime();var D="http://passport.sohu.com/sso/logout.jsp?s="+G+"&appid="+this.appid;if(this.domain!="sohu.com"){D+="&domain="+this.domain}
var C=document.createElement("script");C.src=D;F.appendChild(C);var A=this;this.eInterval=setInterval(function(){A.logoutIntervalProc(B,E,F)},100)},logoutIntervalProc:function(A,B,C){if(logout_status==""&&this.intervalCount<this.maxIntervalCount){this.intervalCount++;return}
clearInterval(this.eInterval);this.eInterval=false;if(logout_status!="success"||this.intervalCount>=this.maxIntervalCount){A();return}
if(this.logoutRedirectUrl==""){this.autoProcAllDomain("logout",C)}
else{this.addCookie("crossdomain_logout",this.getTime(),336)}
B()},logoutFailCall:function(){this.sElement.innerHTML="";this.reportMsg("8")},logoutSuccessCall:function(B){this.parseLastDomain(this.domainList);this.cookie=false;this.drawLoginForm();for(i=0;i<PassportCardList.length;i++){if(i==this.curCardIndex){continue}
PassportCardList[i].drawLoginForm()}
try{logoutApp()}
catch(A){}},renewCookie:function(F,B,E){if(typeof(F)!="object"){return false}
if(this.domain==""){this.domain=this.getDomain()}
var G=this.getTime();var D="http://passport.sohu.com/sso/renew.jsp?s="+G;if(this.domain!="sohu.com"){D+="&domain="+this.domain}
var C=document.createElement("script");C.src=D;F.appendChild(C);var A=this;this.eInterval=setInterval(function(){A.renewIntervalProc(B,E,F)},100);return false},renewIntervalProc:function(A,B,C){if(renew_status==""&&this.intervalCount<this.maxIntervalCount){this.intervalCount++;return}
clearInterval(this.eInterval);this.eInterval=false;if(renew_status!="success"||this.intervalCount>=this.maxIntervalCount){try{A()}
catch(D){}
return}
this.autoProcAllDomain("renew",C);try{B()}
catch(D){}},autoProcAllDomain:function(D,C){var A=this.crossDomainIframeUrl(D);if(A){var B=document.createElement("iframe");B.src=A;B.style.width="0";B.style.height="0";C.appendChild(B)}},doCrossDomainCookie:function(F,E){if(typeof(F)!="object"){return}
var B="crossdomain";if(E=="logout"){B="crossdomain_logout"}
var C=this.getCookie(B);if(C==""||C=="0"){return}
if(this.domain==""){this.domain=this.getDomain()}
var A=this.crossDomainIframeUrl(E);if(A){var D=document.createElement("iframe");D.src=A;D.style.width="0";D.style.height="0";F.appendChild(D);this.deleteCookie(B)}},crossDomainUrl:function(C,B){var D=this.getTime();var A="http://passport.sohu.com/sso/crossdomain.jsp?s="+D+"&action="+C+"&domain="+B;return A},crossDomainIframeUrl:function(B){var A="";if(this.domain=="sohu.com"||this.domain=="sogou.com"||this.domain=="chinaren.com"||this.domain=="changyou.com"){A="http://passport."+this.domain+"/sso/crossdomain_all.jsp?action="+B}
else{A="http://pass."+this.domain+"/sso/crossdomain_all.jsp?action="+B}
return A},setDomainCookie:function(F,E,D,B){login_status="";crossdomain_status="";var C=this.crossDomainUrl("login",E);if(C){newScript=document.createElement("script");newScript.src=C;F.appendChild(newScript)}
var A=this;this.eInterval=setInterval(function(){A.setCookieIntervalProc(F,D,B)},100)},setCookieIntervalProc:function(C,B,A){if(crossdomain_status!=""){clearInterval(this.eInterval);this.eInterval=false;A();return}
if(login_status==""&&this.intervalCount<this.maxIntervalCount){this.intervalCount++;return}
clearInterval(this.eInterval);this.eInterval=false;if(login_status!="success"||this.intervalCount>=this.maxIntervalCount){A();return}
B()},downDSindex:function(){if(this.dsAnchor.firstChild==null){return}
var A=this.dsAnchor.firstChild.rows;var B=0;for(;B<A.length;B++){if(A[B].firstChild.idx==this.curDSindex){break}}
if(B>=A.length-1){this.curDSindex=A[0].firstChild.idx}
else{this.curDSindex=A[B+1].firstChild.idx}},upDSindex:function(){if(this.dsAnchor.firstChild==null){return}
var A=this.dsAnchor.firstChild.rows;var C=-1;var B=0;for(;B<A.length;B++){if(A[B].firstChild.idx==this.curDSindex){break}
C=A[B].firstChild.idx}
if(B==A.length){this.curDSindex=A[0].firstChild.idx}
else{if(C==-1){this.curDSindex=A[A.length-1].firstChild.idx}
else{this.curDSindex=C}}},findDSindex:function(B){var A,D;if((A=this.dsAnchor)&&(A=A.firstChild)&&(A=A.rows)){for(var C=0;C<A.length;C++){if((D=A[C])&&(D=D.firstChild)&&(D.idx==B)){return D;}}}
return false},clearFocus:function(B){if(typeof(B)!="number"){B=this.curDSindex}
try{var A=this.findDSindex(B);A.className="";A.style.fontWeight="normal"}
catch(C){}},setFocus:function(B){if(typeof(B)!="number"){B=this.curDSindex}
try{var A=this.findDSindex(B);A.className="active"}
catch(C){}},fillEmailSelect:function(){var P=this.emailInput.value;var isShowRmd=false;if(P==""){var PC=this.candidate;if(!PC||PC.length<1){this.dsElement.style.display="none";return}
isShowRmd=true;}
var I=this.getPosition(this.emailInput,"offsetLeft")-this.getPosition(this.cElement,"offsetLeft");if(document.all&&!document.addEventListener){I+=1}
this.dsElement.style.marginLeft=I+"px";this.dsElement.style.marginTop=(this.getPosition(this.emailInput,"offsetTop")-this.getPosition(this.cElement,"offsetTop")+this.emailInput.offsetHeight)+"px";this.dsElement.style.zIndex="2000";this.dsElement.style.paddingRight="0";this.dsElement.style.paddingLeft="0";this.dsElement.style.paddingTop="0";this.dsElement.style.paddingBottom="0";this.dsElement.style.backgroundColor="white";var isResetFocus=this.dsElement.style.display=='none';this.dsElement.style.display="block";var H=document.createElement("TABLE");H.width="100%";H.cellSpacing=0;H.cellPadding=3;var B=document.createElement("TBODY");H.appendChild(B);var N=0;var R=-1;if(isShowRmd){for(var i=0,l=PC.length;i<l;i++){this.add2Suggestion(PC[i],i,B);N++;}
R=0;}else{var Q="";var A="";var M=P.indexOf("@");if(M<0){A=P}
else{if(M==P.length-1){A=P.substr(0,M)}
else{A=P.substr(0,M);Q=P.substr(M+1)}}
var D=false;var J=false;var K="",E="";for(var O=0;O<this.emailPostfix.length;O++){var F=this.emailPostfix[O];if(typeof(F)!="string"){continue}
if(Q!=""){if(F.indexOf(Q)!=0){continue}}
if(F.indexOf("@")>0){if(this.autopad!=""&&this.autopad!=F.substring(F.indexOf("@")+1)){continue}
E=F.substring(0,F.indexOf("@"));if(E.indexOf(A)==-1){continue;}
if(E==A){K=F.substring(F.indexOf("@")+1)}
J=true}
else{if(this.autopad!=""&&this.autopad!=F){continue}}
if(F!=''&&F==K){continue}
N++;if(R==-1){R=O}
if(this.curDSindex==O){D=true}
this.add2Suggestion(J==false?(A+(F!=''?'@':'')+F):F,O,B);J=false}}
if(N>0){this.dsAnchor.innerHTML="";this.dsAnchor.appendChild(H);if(isResetFocus){this.curDSindex=0;}else if(D==false){this.curDSindex=R}
this.setFocus()}
else{this.dsElement.style.display="none";this.curDSindex=-1}},add2Suggestion:function(email,index,parent){var C=document.createElement("TR");var G=document.createElement("TD");G.nowrap="true";G.align="left";G.innerHTML=email;G.id="email_postfix_"+index;G.idx=index;var L=this;G.onmouseover=function(){L.clearFocus();L.curDSindex=this.idx;L.setFocus();this.style.cursor="hand"};G.onclick=function(){L.doSelect()};C.appendChild(G);parent.appendChild(C);C=null;G=null;},doSelect:function(){this.dsElement.style.display="none";if(this.emailInput.value==""){this.emailInput.value=this.placeholder;return}
var A=this.findDSindex(this.curDSindex);if(A){this.emailInput.value=A.innerHTML}
if(this.emailInput.value!=""){this.passwdInput.focus()}},checkKeyDown:function(A){var B=A.keyCode;if(B==38||B==40){this.clearFocus();if(B==38){this.upDSindex()}
else{if(B==40){this.downDSindex()}}
this.setFocus()}},checkKeyPress:function(B){var C=B.keyCode;if(C==13){this.preventEvent(B)}
else{if(C==38||C==40){this.preventEvent(B);this.clearFocus();if(C==38){this.upDSindex()}
else{if(C==40){this.downDSindex()}}
this.setFocus()}
else{if(C==108||C==110||C==111||C==115){var A=this;setTimeout(function(){A.fillEmailSelect()},10)}}}},checkKeyUp:function(A){var B=A.keyCode;this.fillEmailSelect();if(B==13){this.doSelect()}},init:function(A){if(this.selectorTitle==""){var B="璇烽€夋嫨鎮ㄧ殑鐢ㄦ埛甯愬彿绫诲瀷"}
else{var B=this.selectorTitle}
this.rootElement=A;this.rootElement.innerHTML='<div class="ppselecter" style="position: absolute; display: none;"><table width="100%" cellspacing="0" cellpadding="0"><tbody><tr><td style="" class="ppseltit">'+B+'</td></tr><tr><td height="2" /></tr><tr><td /></tr></tbody></table></div><div style="display: none;"></div><div class="passportc"></div>';this.dsElement=this.rootElement.childNodes[0];this.sElement=this.rootElement.childNodes[1];this.cElement=this.rootElement.childNodes[2];try{this.dsAnchor=this.dsElement.firstChild.rows[2].firstChild;}catch(e){this.dsAnchor=this.dsElement.firstChild.firstChild.firstChild.nextSibling.firstChild;}
this.domain=this.getDomain();this.parseLastDomain(this.domainList);this.parseAppid();this.parsePassportCookie();this.getBottomRow();if(this.postru==""){this.postru=document.location.href}},_drawPassportCard:function(){},drawPassportCard:function(){this._drawPassportCard();var B=document.getElementById("ppcontid");B.onclick=this.doClickLink.bindFunc(this);this.$iElement();try{this.successCalledFunc(this.iElement)}
catch(A){this.drawPassportInfo()}},doClickLink:function(A){var H=window.event?window.event:A;var G=H.srcElement||H.target;var D=G.tagName.toLowerCase();var B=this.cookie.userid;var F=document.location.href;var E="";if(D=="img"){D=G.parentNode.tagName.toLowerCase();G=G.parentNode}
if(D=="a"){var C=document.createElement("script");C.src="http://passport.sohu.com/web/golog.jsp?userid="+B+"&fappid="+this.appid+"&furl="+F+"&turl="+G;this.iElement.appendChild(C)}},$iElement:function(){this.iElement=this.$getElementByClassName("listContA")},$getElementByClassName:function(B){var A=this.cElement.getElementsByTagName("div");for(var C=0;C<A.length;C++){if(A[C].className.indexOf(B)==0){return A[C]}}},drawPassportWait:function(A){},drawPassportInfo:function(){},getRanServ:function(){var D=this.recomServ.length;if(D==0){return""}
var B=Math.floor(D*(Math.random()));var C='<a href="'+this.recomServ[B]["url"]+'" target="_blank">'+this.recomServ[B]["name"]+"</a>";if(D==1){return C}
var A=Math.floor(D*(Math.random()));while(B==A){A=Math.floor(D*(Math.random()))}
C+=' | <a href="'+this.recomServ[A]["url"]+'" target="_blank">'+this.recomServ[A]["name"]+"</a>";return C},_drawLoginForm:function(){},drawLoginForm:function(){this._drawLoginForm();var A=this.cElement.getElementsByTagName("input");for(var C=0;C<A.length;C++){if(A[C].name=="email"){this.emailInput=A[C]}
if(A[C].name=="password"){this.passwdInput=A[C]}
if(A[C].name=="persistentcookie"){this.pcInput=A[C]}}
this.loginMsg=this.$getElementByClassName("error");if(this.isShowRemPwdMsg==1){var B=this;this.pcInput.onclick=function(){if(B.pcInput.checked==false){return}
var D=window.confirm("娴忚鍣ㄥ皢鍦ㄤ袱鍛ㄥ唴淇濇寔閫氳璇佺殑鐧诲綍鐘舵€侊紝缃戝惂鎴栧叕鍏辨満鎴夸笂缃戣€呰鎱庣敤銆傛偍鑳界‘璁ゆ湰娆℃搷浣滃悧锛�");if(D==false){B.pcInput.checked=false}}}
this.bindSelector();this.autoFillUserId();var B=this;if(this.emailInput.value==""){if(this.isSetFocus){setTimeout(function(){try{B.emailInput.focus()}catch(e){}},50)}}
else{if(this.isSetFocus){setTimeout(function(){try{B.passwdInput.focus()}catch(e){}},50)}}},autoFillUserId:function(){var B=this.getCookie("pptmpuserid");if(this.email.length>0){this.emailInput.value=this.email}
else{if(B.length>0)
this.emailInput.value=B}
if(B.length>0){var A=this;setTimeout(function(){A.deleteCookie("pptmpuserid")},1000)}},bindSelector:function(){if(this.bindDomainSelector){this.curDSindex=-1;try{var eventKey="keypress";try{if(navigator.userAgent.toLowerCase().indexOf('webkit')!=-1)
eventKey="keydown";}catch(e){}
this.emailInput.addEventListener(eventKey,this.checkKeyPress.bindFunc(this),false);this.emailInput.addEventListener("keyup",this.checkKeyUp.bindFunc(this),false);this.emailInput.addEventListener("blur",this.doSelect.bindFunc(this),false);if(this.placeholder)this.emailInput.addEventListener("focus",this.doFocus.bindFunc(this),false);}
catch(A){try{this.emailInput.attachEvent("onkeydown",this.checkKeyDown.bindFunc(this));this.emailInput.attachEvent("onkeypress",this.checkKeyPress.bindFunc(this));this.emailInput.attachEvent("onkeyup",this.checkKeyUp.bindFunc(this));this.emailInput.attachEvent("onblur",this.doSelect.bindFunc(this));if(this.placeholder)this.emailInput.attachEvent("onfocus",this.doFocus.bindFunc(this),false);}
catch(A){}}}},doFocus:function(){if(this.emailInput.value==this.placeholder)
this.emailInput.value="";},drawPassport:function(element){if(typeof(element)!="object"){return}
if(PassportCardList.length==0){PassportCardList[0]=this}
if(!this.successCalledFunc){this.successCalledFunc=typeof(window.drawAppInfo)=='function'?drawAppInfo:this.drawPassportInfo;}
this.init(element);if(this.cookie&&this.cookie.userid!=""){if(this.autopad!=""){var at=this.cookie.userid.indexOf("@");if(at>0){if(this.autopad!=this.cookie.userid.substr(at+1)){this.drawLoginForm();return}}}
if(this.autoRedirectUrl!=""){document.location.href=this.autoRedirectUrl}
else{this.drawPassportCard()}}
else{this.drawLoginForm()}},drawPassportNew:function(A,C,E){if(typeof(A)!="object"){return}
var B=new Function();B.prototype=this;var F=PassportCardList.length;var D=new B();D.successCalledFunc=E;D.appid=C;D.curCardIndex=F;D.isSetFocus=false;PassportCardList[F]=D;drawPassportNewInit(F,A);return}};var ele=document.getElementsByTagName("head")[0];PassportSC.doCrossDomainCookie(ele,"login");PassportSC.doCrossDomainCookie(ele,"logout");if(typeof encodeURIComponent=="undefined"){PassportSC.usePost=1}
if(getBrowserType()==3&&(screen.height==5000||window.navigator.userAgent.indexOf("Mini")>=0)){PassportSC.usePost=1};PassportSC._drawLoginForm=function(){this.cElement.innerHTML='<form method="post" onsubmit="return PassportSC.doLogin();" name="loginform">'+'<div class="pptitle">鎼滅嫄<b>閫氳璇�</b><div class="ppthree">涓婃悳鐙愶紝鐭ュぉ涓�</div></div>'+'<div class="ppcontent" id="ppcontid"><ul class="card"><div class="error" id="pperrmsg"></div>'+'<li><label for="ppEmail">'+this.ptype+'<input id="ppEmail" value="'+this.placeholder+'" name="email" type="text" class="ppinput" style="ime-mode:disabled" autocomplete="off" disableautocomplete /></label></li>'+'<li><label for="ppPassword">瀵嗙爜<input id="ppPassword" name="password" type="password" class="ppinput" autocomplete="off" disableautocomplete /></label></li>'+'<dt><span><label for="ppLoginState"><input id="ppLoginState" name="persistentcookie" type="checkbox" checked="checked" value="1" onmousedown="$call(\'sohu.sa.cc(\\\'index_loginstate\\\')\', \'sohu.sa.*\');"/>璁颁綇鐧诲綍鐘舵€�</label></span>'+'<input type="submit" class="sign" value="鐧� 褰�" onfocus="this.blur()" src="http://www.sohu.com/passport/images/spacer.gif" alt="鐧� 褰�" /></dt>'+'<dd><a href="'+this.registerUrl+'" target="_blank">娉ㄥ唽鏂扮敤鎴�</a>'+'<a onmousedown="$call(function(){sohu.sa.cc(\'index_forgotpassword\')},\'sohu.sa.*\')" href="'+this.recoverUrl+'" target="_blank">蹇樿瀵嗙爜</a>'+'<a href="http://bai.sohu.com/help.do?p=index#1" target="_blank">甯姪涓績</a></dd>'+'</ul></div></form>';};PassportSC.initInfo=function(mail,name,opt){var welWordsEl=document.getElementById('indexWel'),opt=opt||{},dftWelWords=opt.dftWelWords||'娆㈣繋杩涘叆鎼滅嫄鐧界ぞ浼�';PassportSC._initEmail='';if(typeof(mail)=='string'&&mail.length>0){PassportSC._initEmail=mail;if(document.loginform&&document.loginform.email){document.loginform.email.value=mail;setTimeout(function(){document.loginform.password.select();document.loginform.password.focus();},50);if(welWordsEl){document.loginform.email.onkeydown=function(){welWordsEl.innerHTML=dftWelWords;}}}
PassportSC.addCandidate([mail]);}else{if(document.loginform&&document.loginform.email&&document.loginform.email.value==''){setTimeout(function(){PassportSC.fillEmailSelect();},0);PassportSC.getAEmailByUV();}}
if(welWordsEl){if(name&&name.length>0){welWordsEl.innerHTML='Hello!&nbsp;&nbsp;<strong>'+name+'</strong>&nbsp;&nbsp;娆㈣繋鍥炴潵';}else{welWordsEl.innerHTML=dftWelWords;}}};PassportSC.setEmailPosfix=function(posfix){var email=document.loginform.email.value;if(email&&email.length>0){try{var emailPrefix=email.split('@')[0];document.loginform.email.value=emailPrefix+posfix;document.loginform.password.focus();}catch(e){}}
$call(function(){sohu.sa.cc("index_login_setsogouemal",{input:PassportSC.emailInput.value,cookie:PassportSC._initEmail});},'sohu.sa.*');};PassportSC.resetEmail=function(email){var src=document.loginform.email.value;try{document.loginform.email.value=email;document.loginform.password.focus();}catch(e){}
$call(function(){sohu.sa.cc("index_login_resetemail",{input:email,src:src,cookie:PassportSC._initEmail});},'sohu.sa.*');};PassportSC.getEmailPrefix=function(){var email=document.loginform.email.value;if(email&&email.length>0){var arr=email.split('@');return arr.length>0?arr[0]:'';}
return'';};PassportSC.notSupportNumber=function(email){var m=email.toLowerCase(),type=m.substr(m.indexOf('@')+1);return PassportSC.notSupportNumber.dont[type];};PassportSC.notSupportNumber.dont={'sohu.com':true,'sogou.com':true};PassportSC.getAEmailByUV=function(){var cbName='cb_rdm_'+(new Date()).getTime();window[cbName]=function(email){PassportSC.gotAEmailByUV(email);n=null;window[cbName]=null;};var url='http://bai.sohu.com/a/callback/suggest.do?cb='+cbName;var n=document.createElement('script');n.type='text/javascript';n.src=url;document.getElementsByTagName('head')[0].appendChild(n);};PassportSC.gotAEmailByUV=function(emails){if(typeof(emails)!='object'||emails==null||!emails.length)return;if(this.emailInput.value==""&&this.dsElement.style.display=="none"){this.emailInput.value=emails[0];}
PassportSC.addCandidate(emails);PassportSC.fillEmailSelect();};PassportSC.addCandidate=function(emails){if(emails.length<1)return;var A=PassportSC.candidate||(PassportSC.candidate=[]);for(var i=emails.length-1;i>=0;i--){var t=emails[i];if(A[t])continue;A[t]=true;A.unshift(t);PassportSC.emailPostfix.unshift(t);}};PassportSC.sortPostfixOn=function(list){var A=PassportSC.emailPostfix;if(A&&A.length){for(var i=0,l=A.length;i<l;i++){var it=A[i];if(it.indexOf('@')==-1){if(i==0){A=list;}else{A=A.slice(0,i).concat(list);}
PassportSC.emailPostfix=A;break;}}}};PassportSC.drawPassportWait=function(str){this.cElement.innerHTML=''+'<div class="pptitle">鎼滅嫄<b>閫氳璇�</b><div class="ppthree">涓婃悳鐙愶紝鐭ュぉ涓�</div></div>'+'<div class="ppcontent" id="ppcontid">'+'<div class="ppWaitMsg">'+str+'</div></div>';};PassportSC._drawPassportCard=function(){};PassportSC.drawPassportInfo=function(){html='<ul><li><p>'+this.cookie['userid']+'<div class="candle" id="ppdefaultim"></div></p></li><li><p>娆㈣繋鎮紝鎮ㄥ凡缁忔垚鍔熺櫥褰曟悳鐙愰€氳璇侊紒 </p></li><li><p>鐜板湪鍗冲彲鐣呮父鎼滅嫄鎵€鏈夋湇鍔°€�</p></li></ul>';this.iElement.innerHTML=html;var isIE=window.ActiveXObject?true:false;if(isIE){var flashmenu=document.getElementById("ppdefaultim");var uid=this.cookie['userid'];flashmenu.innerHTML='<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://images.chinaren.com/product/webim/mood/mood.swf?UserID='+uid+'" width="220" height="90"><param name="movie" value="http://images.chinaren.com/product/webim/mood/mood.swf?UserID='+uid+'"><param name="wmode" value="transparent"><param name="allowscriptaccess" value="always"><embed src="http://images.chinaren.com/product/webim/mood/mood.swf?UserID='+uid+'" wmode="transparent" quality="high" allowscriptaccess="always" bgcolor="#ffffff" width="220" height="90" type="application/x-shockwave-flash"></embed></object>'}};PassportSC.appid=1062;PassportSC.isShowRemPwdMsg=0;PassportSC.bindDomainSelector=true;PassportSC.cardTitle='涓婃悳鐙愶紝鐭ュぉ涓�';PassportSC.selectorTitle='璇烽€夋嫨浣犵殑璐﹀彿绫诲瀷',PassportSC.registerUrl='/user/reg/invite.do';PassportSC.autoRedirectUrl='/user/login.do';PassportSC.recoverUrl='http://passport.sohu.com/web/recoverpwd';PassportSC.emailPostfix=['sohu.com','sogou.com','qq.com','163.com','126.com','sina.com','hotmail.com','gmail.com'];PassportSC.drawCard=function(element,options){var el,opt=options||{};if(opt.successLogin){PassportSC.successLogin=opt.successLogin;}
if(opt.loggedTo){PassportSC.loggedTo=opt.loggedTo;}
if(opt.registerUrl){PassportSC.registerUrl=opt.registerUrl;}
if(!(el=element)||!(el=$(el)))return;PassportSC.drawPassport(el.elements()[0]);if(!opt.email){var email=PassportSC.getCookie('bai_ld');if(typeof(email)=='string'&&email.length>0){opt.email=b64_decodex(email);}}
if(opt.email){PassportSC.initInfo(opt.email,opt.name,{dftWelWords:opt.welcome});}
var sorts;if(sorts=opt.postfixSorts){PassportSC.sortPostfixOn(sorts);}};PassportSC.drawPassportInfo=function(el){if(document.domain.indexOf('chinaren.com')==-1){PassportSC.setDomainCookie(document.body,'chinaren.com',PassportSC._succLogin,PassportSC._succLogin);}else{PassportSC._succLogin();}};PassportSC._succLogin=function(){var func;if(typeof(func=PassportSC.successLogin)=='function'){func();}else{if(PassportSC.loggedTo){location.href=PassportSC.loggedTo;}}};PassportSC.syncLogin=function(options){var f=kola.emptyFunction,succ=f,fail=f;if(options){succ=typeof(options.success)=='function'?options.success:f;fail=typeof(options.failure)=='function'?options.failure:f;}
if(!PassportSC.cookieHandle())f();succ=(function(succ2){return function(){$call(function(){sohu.core.Model.action({url:'/a/user/taskAfterLogin.do',format:'json',method:'get',domain:'bai.sohu.com'},null,{success:succ2,failure:fail});},'sohu.core.*');}})(succ);var domain=document.domain.indexOf('sohu.com')==-1?'sohu.com':'chinaren.com';if(domain=='sohu.com'){$call(function(){sohu.core.Model.action({url:'/setcookie.jsp',format:'json',method:'get'},null,{success:function(data){if(!data.toUrl){fail();return;}
var funcId=sohu.IDCreater.id();window[funcId]=succ;var script=document.createElement('script');script.type='text/javascript';script.src=data.toUrl+"&ru=http%3A%2F%2Fclass.chinaren.com%2Fsupport%2Fjsfromparam.jsp%3Fs%3Dif%2520(window%255B'"+funcId+"'%255D)%2520window%255B'"+funcId+"'%255D()%253B";document.getElementsByTagName('head')[0].appendChild(script);},failure:fail});},'sohu.core.*');}else{PassportSC.setDomainCookie(document.body,domain,succ,fail);}};if(window.$register)$register('sohu.passport.*',null,'kola.core.*');
$register('sohu.passport.Card',function(){sohu.passport.Card={};sohu.passport.Card.preInit=function(els){for(var i=0,l=els.length,el;i<l;i++){if(!(el=els[i])||!(el=$(el)))continue;var obj={};var succ;if(typeof(succ=el.attr('card-loggedcall'))=='string'&&succ.length>0){obj.successLogin=(function(script){return function(){eval(script);};})(succ);}
var toUrl;if(typeof(toUrl=el.attr('card-logtourl'))=='string'&&toUrl.length>0){obj.loggedTo=toUrl;}
PassportSC.drawCard(el,obj);}};},'sohu.passport.*');