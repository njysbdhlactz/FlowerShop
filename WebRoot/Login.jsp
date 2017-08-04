<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
</head>
<body bgcolor="#E0FFFF">
	<center>
	<h1 style="color:red">晓家花店鲜花销售管理系统</h1>	
		<h1 style="color:red">用户登录</h1>	
			<form id="indexform" name="indexForm" action="checklogin.jsp" method="post">
				<table border="0">
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="password" name="password">
						</td>
					</tr>
				</table>
			<br>
				<input type="submit" value="登录" style="color:#BC8F8F">
			</form>
			<form action="register.jsp">
				<input type="submit" value="注册" style="color:#BC8F8F">
			</form>
	</center>
</body>
</html>