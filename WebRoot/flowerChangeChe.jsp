<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
<%
	request.setCharacterEncoding("UTF-8");
	String num=(String)request.getParameter("num");
	String selectcondition =request.getParameter("selectcondition");
	String xiugai=(String)request.getParameter("xiugai");
	if(selectcondition.equals("0"))
	{
		String s1="update flower set flowerID='"+xiugai+"' where flowerID='"+num+"'";
		System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
	if(selectcondition.equals("1"))
	{
		String s2="update flower set fname ='"+xiugai+"' where flowerID='"+num+"'";
		int i = db.executeUpdate(s2);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
	if(selectcondition.equals("2"))
	{
		String s3="update flower set price ='"+xiugai+"' where flowerID='"+num+"'";
		int i = db.executeUpdate(s3);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
	if(selectcondition.equals("3"))
	{
		String s4="update flower set color ='"+xiugai+"' where flowerID='"+num+"'";
		int i = db.executeUpdate(s4);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
	if(selectcondition.equals("4"))
	{
		String s5="update flower set describe ='"+xiugai+"' where flowerID='"+num+"'";
		int i = db.executeUpdate(s5);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
	if(selectcondition.equals("5"))
	{
		String s5="update flower set listedDate ='"+xiugai+"' where flowerID='"+num+"'";
		int i = db.executeUpdate(s5);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
	if(selectcondition.equals("6"))
	{
		String s5="update flower set state ='"+xiugai+"' where flowerID='"+num+"'";
		int i = db.executeUpdate(s5);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=flower.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=flowerChange.jsp");
		}
	}
%>
</body>
</html>