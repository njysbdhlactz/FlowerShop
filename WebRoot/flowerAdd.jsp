<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>花品管理</title>
  </head>
  
<body background="images/index.jpg">

    <h1 align="center">晓家花店鲜花销售管理系统</h1>
 	<form action="Login.jsp">
 	<input type="submit" name="logout" value="注销" >
 	</form>
 	
 	<table width="1280"align="center" style="background-image:url(images/table.jpg)">
 		<tr>
 			<td>
 				<a href="index.jsp" style="text-decoration:none">首页</a>
 			</td>
 			<td>
 				<a href="personal.jsp" style="text-decoration:none">账户管理</a>
 			</td> 
 			<td>
 				<a href="customer.jsp" style="text-decoration:none">客户管理</a>
 			</td>
 			<td>
 				<a href="flower.jsp" style="text-decoration:none">花品管理</a>
 			</td>
 			<td>
 				<a href="order.jsp" style="text-decoration:none">订单管理</a>
 			</td>
 		</tr>		
 	</table>
 	
	<br>
 	<br>
 	<h3 align="center">花品管理</h3><br>
 <center>
 	<table border="1" width="520" >
	<tr>
		<td><p style="color:#F00;font-family:黑体;font-size:16px;">全部花品信息 </p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "flowerSelect.jsp" style="text-decoration:none">查询花品信息
		</a></p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "flowerAdd.jsp" style="text-decoration:none">添加花品信息
		</a></p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "flowerChange.jsp" style="text-decoration:none">修改花品信息
		</a></p></td>
	
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "flowerDel.jsp" style="text-decoration:none">删除花品信息
		</a></p></td>
	</tr>
</table>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
<br>
<br>
<br>
<%

request.setCharacterEncoding("utf-8");

%>
<br>
	<form action="flowerAddChe.jsp"method="post">
		<table border="0">
			<tr>
				<td>花品编号</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>花品名称</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>花品价格</td>
				<td><input type="text" name="sex"></td>
			</tr>
			<tr>
				<td>花品颜色</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>花品描述</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>上市时间</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>花品状态</td>
				<td><input type="text" name="Address"></td>
			</tr>
			<tr align="center">
			<td><input type="submit" value="添加" style="color:#BC8F8F"></td>
			<td><input type="reset" value="重置" style="color:#BC8F8F"></td>
			</tr>
		</table>
		<br>		
	</form>
</center>
  </body>
</html>
