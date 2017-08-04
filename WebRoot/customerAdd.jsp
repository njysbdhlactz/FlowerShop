<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <title>客户管理</title>
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
 	<h3 align="center">客户管理</h3><br>
 <center>
 	<table border="1" width="520" >
	<tr>
		<td><p style="color:#F00;font-family:黑体;font-size:16px;">全部信息 </p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "customerSelect.jsp" style="text-decoration:none">查询客户信息
		</a></p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "customerAdd.jsp" style="text-decoration:none">添加客户信息
		</a></p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "customerChange.jsp" style="text-decoration:none">修改客户信息
		</a></p></td>
	
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "customerDel.jsp" style="text-decoration:none">删除客户信息
		</a></p></td>
	</tr>
</table>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
<br>
<br>
<br>
<br>
	<form action="customerAddChe.jsp" method="post">
		<table border="0">
			<tr>
				<td>客户编号</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>客户姓名</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>客户性别</td>
				<td><input type="text" name="sex"></td>
			</tr>
			<tr>
				<td>客户年龄</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>E-Mail</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>住址</td>
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
