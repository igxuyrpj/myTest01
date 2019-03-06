<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生注册</title>
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
/* ajax验证用户名是否重复 */
$(function(){
	$('#num').bind('input',function(){
	/*  console.log( $('form').serialize()); */
		//ajax实现验证;
		var val = $(this).val();
		
		$.ajax({
			/* type:'GET',  */
			/* type:'GET', */
			url:'${pageContext.request.contextPath }/check',
			dataType : 'text',
			data:{"name":val},
			success:function(data){
				if(data==1){
					/* alert("该用户名已被注册!") */
					 $('#checkResult').html('该用户名已被注册!').css('color','red'); 
					/* $('#zphone').attr({"disabled":"disabled"});
					//$('#verify').attr({"disabled":"disabled"});
					$('#create').attr({"disabled":"disabled"}); */
					 $('#register').attr({"disabled":"disabled"});
				}
				if(data==0){
					 $('#checkResult').html(' ');
					/*  $("#zphone").removeAttr("disabled").css('color','green'); 
					//$("#verify").removeAttr("disabled") */
					$("#register").removeAttr("disabled"); 
				}
			}
		}); 

		
		
	});
	
})
</script>
<style>
	body {
		margin: 0;
		padding: 0;
		background-color: #F7F7F7;
		font-family: '汉仪大隶书繁';
	}

	form {
		max-width: 640px;
		width: 450px;
		margin: 24px auto;
		font-size: 28px;
	}

	label {
		display: block;
		margin: 5px 5px 10px;
		font-size: 20px;
	}

	input {
		display: block;
		width: 300px;
		height: 35px;
		font-size: 15px;
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
</head>
<body>
<form action="${pageContext.request.contextPath}/register" method="post">
	<fieldset>
		<legend>学生注册信息</legend>
		<label for="">
			<input type="text" name="school" required autofocus placeholder="请输入学校">
		</label>
		<label for="">
			<input type="text" id="num" value="" name="num" required autofocus placeholder="请输入学号"> <span id="checkResult"></span>
		</label>
		<label for="">
			<input type="text" name="name" required autofocus placeholder="请输入姓名">
		</label>
		<label for="">
			 <input type="text" name="class" required autofocus placeholder="请输入班级">
		</label>
		<label for="">
			 <input type="text" name="college" list="course" placeholder="请选择系别">
			<datalist id="course">
				<option value="信息工程学院"></option>
				<option value="数学系"></option>
				<option value="体育系"></option>
				<option value="外语系"></option>
				<option value="艺术系"></option>
				<option value="建筑系"></option>
				<option value="中文系"></option>
				<option value="金融系"></option>
				<option value="工商管理系"></option>
				<option value="化学系"></option>
				<option value="历史系"></option>
				<option value="工业设计系"></option>
				<option value="法律系"></option>
			</datalist>
		</label>
		<label for="">
			 <input type="text" name="major" required autofocus placeholder="请输入专业">
		</label>
		
		<label for="">
			 入学时间:<input type="date" name="date" id="date" value="">
		</label>
		<label for="">
			 <input type="tel" name="phone" required pattern="1\d{10}" placeholder="请输入手机号码">
		</label>
		   <label for="">
			性别: <select name="sex">
			   <option selected="selected">男</option>
			    <option>女</option>
			
			</select>
		</label>
		<label for="">
			<input type="text" name="age" required autofocus placeholder="请输入年龄">
		</label>
		<label for="" class="btn">
			<input type="submit" id="register" value="注册">
		</label><span style="font-size: 14px;"><a style="text-decoration:none;" href="chinaren.jsp">点击返回</a></span>
	</fieldset>
</form>
<script>
	var score = document.getElementById('score');
	var level = document.getElementById('level');

	score.oninput = function () {
		level.value = this.value;
	}
	
	
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>
</body>
</html>