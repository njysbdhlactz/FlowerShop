<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
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
 	
	<table width="1280" align="center" >
	</table>
    <br>
 	<br>
 	<h3 align="center">订单管理</h3><br>
 <center>
 	<table border="1" width="520" >
	<tr>
		<td><p style="color:#F00;font-family:黑体;font-size:16px;">全部订单信息 </p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "orderSelect.jsp" style="text-decoration:none">查询订单信息
		</a></p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "orderAdd.jsp" style="text-decoration:none">添加订单信息
		</a></p></td>
		
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "orderChange.jsp" style="text-decoration:none">修改订单信息
		</a></p></td>
	
		<td>
		<p style="color:#F00;font-family:黑体;font-size:16px;">
		<a href = "orderDel.jsp" style="text-decoration:none">删除订单信息
		</a></p></td>
	</tr>
</table>	
 	<jsp:useBean id="db" class="bean.DBean" scope="page" />
<br>
<%

request.setCharacterEncoding("utf-8");

%>
<br>
	<form action="orderAddChe.jsp" method="post">
		<table border="0">
			<tr>
				<td>订单编号</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>客户姓名</td>
				<td><input type="text" name="cname"></td>
			</tr>
			<tr>
				<td>收件人姓名</td>
				<td><input type="text" name="rname"></td>
			</tr>
			<tr>
				<td>收件人联系方式</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>订单日期</td>
				<td><input type="text" name="date"></td>
			</tr>
			<tr>
				<td>订单金额（元）</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>订单状态</td>
				<td><input type="text" name="state"></td>
			</tr>
			<tr>
				<td>备注信息</td>
				<td><input type="text" name="describe"></td>
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
