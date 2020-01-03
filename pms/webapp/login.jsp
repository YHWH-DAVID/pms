<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商品管理系统->用户登录</title>
<link rel="stylesheet" href="/css/core.css" type="text/css" />
	<link rel="stylesheet" href="/js/plugins/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="/css/core.css" type="text/css" />
	<script src="/js/plugins/jquery/jquery-2.1.4.min.js"></script>
	<script src="/js/plugins/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
body{
	background-color:  #FFFFFF;
}
.cm-container{
	margin-top: 160px;
}
.login {
	width: 360px;
	height: 300px;
	margin: 0px auto;
}
</style>
</head>
<body>
	<div class="container cm-container">
		<h3 class="text-center"><font style="color: #337ab7;">商品管理系统(系统管理平台)</font></h3>
		<hr />
		<div class="login">
		<span style="color: red;">${errormsg}</span>
			<form id="loginForm" action="login" method="post">
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon">用户名</div>
						<input class="form-control" name="username"  value="${cookie.username.value}"/>
					</div>
				</div>
				<div class="form-group form-group-lg">
					<div class="input-group">
						<div class="input-group-addon">密&emsp;码</div>
						<input class="form-control" name="password" type="password" value="${cookie.password.value }"/>
					</div>
				</div>
				记住我<input type="checkbox" name="remenberMe">
				<div class="form-group">
					<button type="submit" class="btn btn-lg btn-primary btn-block" id="btn_submit">登录</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>