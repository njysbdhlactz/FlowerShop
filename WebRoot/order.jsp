<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>订单管理 </title>
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
<br>
<br>
<table border="1">
		<tr>
			<th>订单编号</th>
			<th>客户姓名</th>
			<th>收件人姓名</th>
			<th>收件人联系方式</th>
			<th>订单日期</th>
			<th>订单金额</th>
			<th>订单状态</th>
			<th>备注信息</th>
		</tr>
	<%
		String sql="select * from orders";
		ResultSet rs0 = db.executeQuery(sql);
		while(rs0.next())
		{
			out.println("<tr><td>" + rs0.getString(1) +
					"</td><td>" + rs0.getString(2) + 
					"</td><td>" + rs0.getString(3) + 
					"</td><td>" + rs0.getString(4) + 
					"</td><td>" + rs0.getString(5) +
					"</td><td>" + rs0.getString(6) +
					"</td><td>" + rs0.getString(7) +
					"</td><td>" + rs0.getString(8) +
					"</td></tr>");
		}
	%>
</table>
</center>
  </body>
</html>
