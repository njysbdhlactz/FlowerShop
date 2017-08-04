<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>账户管理</title> 

  </head>
   <body background="images/index.jpg">
<jsp:useBean id="db" class="bean.DBean" scope="page" />
<%
	request.setCharacterEncoding("UTF-8");
	String num=(String)request.getParameter("num");
	String selectcondition =request.getParameter("selectcondition");
	String xiugai=(String)request.getParameter("xiugai");
	if(selectcondition.equals("0"))
	{
		String s1="update admin set userID ="+xiugai+" where userID="+num+"";
		System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.sendRedirect("personal.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.sendRedirect("personal.jsp");
		}
	}
	if(selectcondition.equals("1"))
	{
		String s2="update admin set username ='"+xiugai+"' where userID="+num+"";
		int i = db.executeUpdate(s2);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.sendRedirect("personal.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.sendRedirect("personal.jsp");
		}
	}
	if(selectcondition.equals("2"))
	{
		String s3="update admin set password ='"+xiugai+"' where userID="+num+"";
		int i = db.executeUpdate(s3);
		if(i == 1)
		{
		
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.sendRedirect("personal.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.sendRedirect("personal.jsp");
		}
	}
%>
  </body>
</html>
