<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
/* filter */
#filter{width:620px;height:auto;margin:0 auto;font-size:12px;}
#filter dl{clear:both;padding:4px 0;}
#filter dt,dd{display:block;float:left;width:auto;padding:0;margin:3px 0;}
#filter dt{height:14px;padding-bottom:4px;font-weight:bold;color:#333333;}
#filter dd{color:#005AA0;margin-right:8px;}
#filter a{cursor:pointer;}
.seling{background-color:#005AA0;color:#FFFFFF;}
.seled{background-color:#005AA0;color:#FFFFFF;}
</style>

<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
</head>
<body>
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

            alert(RetSelecteds()); //返回选中结果
            var res=RetSelecteds();
            $.ajax({
            	        url : "${pageContext.request.contextPath }/chinaren/select", //后台查询验证的方法
            	         data : {
            	                "data" : res
            	            }, //携带的参数
            	            type : "post",
                        success : function(msg) {
            	                 //根据后台返回前台的msg给提示信息加HTML
            	               /*   if ("1" != msg) {
            	                  alert("true");
            	               } else {
            	            	   alert("false");
                              
                           } */
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