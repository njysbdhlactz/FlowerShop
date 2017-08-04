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
	</table>
    <br>
 	<br>
 	<h3 align="center">账户管理</h3><br>
 </table align="center">
<form action="changePer.jsp"method="post">
		<table width="580"align="center">
		<h4 align="left">账户修改</h4><br>
			<tr>
				<td align="center">输入修改账户信息的ID：</td>
				<td align="center"><input type="text" name="num"></td>
			</tr>
			<tr>
				<td align="center"><select name="selectcondition" id="selectcondition" >
							<option >-请选择修改项-</option>
							<option value="0">账户ID</option>
							<option value="1">用户名</option>
							<option value="2">登录密码</option>
							</select></td>
				<td align="center"><input type="text" name="xiugai"></td>
			</tr>
			<tr>
				<td align="center"><input type="submit" value="修改" style="color:#BC8F8F"></td>
				<form action="index.jsp">
				<td align="center"><input type="submit" value="返回" style="color:#BC8F8F"></td>
				</form>
			</tr>
			</table>
			</form>
<form action="deletePerson.jsp">
		<table width="580"align="center">
		<h4 align="left">账户删除</h4><br>
			<tr>
				<td align="center">输入删除账户信息的ID：</td>
				<td align="center"><input type="text" name="num2"></td>
			</tr>
			<tr>
				<td align="center"><input type="submit" value="删除" style="color:#BC8F8F"></td>
				<form action="index.jsp">
				<td align="center"><input type="submit" value="返回" style="color:#BC8F8F"></td>
				</form>
			</tr>
			</table>
			</form>
  </body>
</html>
