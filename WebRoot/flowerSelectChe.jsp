<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
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
 	
	<table width="1280" align="center" >
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
<table border="1">
	<tr>
			<th>花品编号</th>
			<th>花品名称</th>
			<th>花品价格</th>
			<th>花品颜色</th>
			<th>花品描述</th>
			<th>上市时间</th>
			<th>花品状态</th>
		</tr>

<%
request.setCharacterEncoding("UTF-8");
	String selectcondition = request.getParameter("selectcondition");
	String name;
//	out.println(selectcondition);
	String chaxun=(String)request.getParameter("chaxun");
	if(selectcondition.equals("0"))
	{
		String s0="select * from flower where flowerID='"+chaxun+"'";
		ResultSet rs0 = db.executeQuery(s0);
		while(rs0.next())
		{
			out.println("<tr><td>" + rs0.getString(1) +
					"</td><td>" + rs0.getString(2) + 
					"</td><td>" + rs0.getString(3) + 
					"</td><td>" + rs0.getString(4) + 
					"</td><td>" + rs0.getString(5) +
					"</td><td>" + rs0.getString(6) +
					"</td><td>" + rs0.getString(7) +
					"</td></tr>");
		}
	}
	if(selectcondition.equals("1"))
	{
		String s1="select * from flower where fname='"+chaxun+"'";
		ResultSet rs1 = db.executeQuery(s1);
		while(rs1.next())
		{
			out.println("<tr><td>" + rs1.getString(1) +
					"</td><td>" + rs1.getString(2) + 
					"</td><td>" + rs1.getString(3) + 
					"</td><td>" + rs1.getString(4) + 
					"</td><td>" + rs1.getString(5) +
					"</td><td>" + rs1.getString(6) +
					"</td><td>" + rs1.getString(7) +
					"</td></tr>");
		}
	}
	if(selectcondition.equals("2"))
	{
		String s2="select * from flower where price='"+chaxun+"'";
		ResultSet rs2 = db.executeQuery(s2);
		while(rs2.next())
		{
			out.println("<tr><td>" + rs2.getString(1) +
					"</td><td>" + rs2.getString(2) + 
					"</td><td>" + rs2.getString(3) + 
					"</td><td>" + rs2.getString(4) + 
					"</td><td>" + rs2.getString(5) +
					"</td><td>" + rs2.getString(6) +
					"</td><td>" + rs2.getString(7) +
					"</td></tr>");
		}
	}
	if(selectcondition.equals("3"))
	{
		String s3="select * from flower where color='"+chaxun+"'";
		ResultSet rs3 = db.executeQuery(s3);
		while(rs3.next())
		{
			out.println("<tr><td>" + rs3.getString(1) +
					"</td><td>" + rs3.getString(2) + 
					"</td><td>" + rs3.getString(3) + 
					"</td><td>" + rs3.getString(4) + 
					"</td><td>" + rs3.getString(5) +
					"</td><td>" + rs3.getString(6) +
					"</td><td>" + rs3.getString(7) +
					"</td></tr>");
		}
	}if(selectcondition.equals("4"))
	{
		String s3="select * from flower where describe='"+chaxun+"'";
		ResultSet rs3 = db.executeQuery(s3);
		while(rs3.next())
		{
			out.println("<tr><td>" + rs3.getString(1) +
					"</td><td>" + rs3.getString(2) + 
					"</td><td>" + rs3.getString(3) + 
					"</td><td>" + rs3.getString(4) + 
					"</td><td>" + rs3.getString(5) +
					"</td><td>" + rs3.getString(6) +
					"</td><td>" + rs3.getString(7) +
					"</td></tr>");
		}
	}if(selectcondition.equals("5"))
	{
		String s3="select * from flower where listedDate='"+chaxun+"'";
		ResultSet rs3 = db.executeQuery(s3);
		while(rs3.next())
		{
			out.println("<tr><td>" + rs3.getString(1) +
					"</td><td>" + rs3.getString(2) + 
					"</td><td>" + rs3.getString(3) + 
					"</td><td>" + rs3.getString(4) + 
					"</td><td>" + rs3.getString(5) +
					"</td><td>" + rs3.getString(6) +
					"</td><td>" + rs3.getString(7) +
					"</td></tr>");
		}
	}if(selectcondition.equals("6"))
	{
		String s3="select * from flower where state='"+chaxun+"'";
		ResultSet rs3 = db.executeQuery(s3);
		while(rs3.next())
		{
			out.println("<tr><td>" + rs3.getString(1) +
					"</td><td>" + rs3.getString(2) + 
					"</td><td>" + rs3.getString(3) + 
					"</td><td>" + rs3.getString(4) + 
					"</td><td>" + rs3.getString(5) +
					"</td><td>" + rs3.getString(6) +
					"</td><td>" + rs3.getString(7) +
					"</td></tr>");
		}
	}
	
	
%>
</table>
<a href="flowerSelect.jsp" >返回</a>

  </body>
</html>
