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
		String s1="update customer set cID='"+xiugai+"' where cID='"+num+"'";
		System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
	if(selectcondition.equals("1"))
	{
		String s2="update customer set name ='"+xiugai+"' where cID='"+num+"'";
		int i = db.executeUpdate(s2);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
	if(selectcondition.equals("2"))
	{
		String s3="update customer set sex ='"+xiugai+"' where cID='"+num+"'";
		int i = db.executeUpdate(s3);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
	if(selectcondition.equals("3"))
	{
		String s4="update customer set age ='"+xiugai+"' where cID='"+num+"'";
		int i = db.executeUpdate(s4);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
	if(selectcondition.equals("4"))
	{
		String s5="update customer set phone ='"+xiugai+"' where cID='"+num+"'";
		int i = db.executeUpdate(s5);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
	if(selectcondition.equals("5"))
	{
		String s5="update customer set email ='"+xiugai+"' where cID='"+num+"'";
		int i = db.executeUpdate(s5);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
	if(selectcondition.equals("6"))
	{
		String s5="update customer set address ='"+xiugai+"' where cID='"+num+"'";
		int i = db.executeUpdate(s5);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=customer.jsp?num="+num+"");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=customerChange.jsp");
		}
	}
%>
</body>
</html>