<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生注册</title>
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>

<script type="text/javascript">
window.onload=function(){
	var tel="${info }";
	if (tel==1){
		alert("用户名或密码错误")
	}
};
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
<form action="${pageContext.request.contextPath}/login" method="post">
	<fieldset>
		<legend>学生登录</legend>
		
		<label for="">
			学号<input type="text" name="num" required autofocus placeholder="请输入学号">
		</label>
		<label for="">
			姓名<input type="text" name="name" required autofocus placeholder="请输入姓名">
		</label>
		
		<label for="" class="btn">
			<input type="submit" value="提交">
		</label><span style="font-size: 14px;"><a style="text-decoration:none;" href="register.jsp">点击注册</a></span>
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