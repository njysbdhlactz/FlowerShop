<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
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
 	<h3 align="center">客户管理</h3><br>
 	<center>
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
<form action="customerChangeChe.jsp" method="post">
		<table>
			<tr>
				<td align="center">输入修改信息的客户编号：</td>
				<td align="center"><input type="text" name="num"></td>
			</tr>
			<tr>
				<td align="center"><select name="selectcondition" id="selectcondition" >
							<option >-请选择修改项-</option>
							<option value="0">客户编号</option>
							<option value="1">客户姓名</option>
							<option value="2">客户性别</option>
							<option value="3">客户年龄</option>
							<option value="4">联系电话</option>
							<option value="5">E-Mail</option>
							<option value="6">住址</option>
							</select></td>
				<td align="center"><input type="text" name="xiugai"></td>
			</tr>
			<tr>
				<td align="center"><input type="submit" value="修改" style="color:#BC8F8F"></td>
				<form action="customer.jsp">
				<td align="center"><input type="submit" value="返回" style="color:#BC8F8F"></td>
				</form>
			</tr>
	</table>
	</form>
</center>
  </body>
</html>
