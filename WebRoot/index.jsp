<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=GBK" %>


<html>
  <head>
   
    <title>首页</title>

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
		
		<br>
		<tr>
			
			<td align="center">
				<h3>欢迎进入鲜花销售管理系统！</h3><br>
				<h4>晓家花店感谢您的辛勤工作！</h4><br>
				<p>扈江离与辟芷兮,纫秋兰以为佩，愿您整天好心情~~~</p>
				<p>本系统的主要功能：</p>
				<ol>
					<li>进行系统管理员账户管理</li>
					<li>进行客户信息的管理</li>
					<li>进行鲜花商品信息的管理</li>
					<li>进行订单信息的管理</li>
				</ol>
			</td>
			
		</tr>
	</table>
    
  </body>
</html>
