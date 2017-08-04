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
	String num=(String)request.getParameter("num");
	String sql="delete from flower where flowerID="+num;
//	out.println(sql);
	int i = db.executeUpdate(sql);
	if(i == 1)
	{
		out.println("<script language='javaScript'> alert('删除成功');</script>");
		response.setHeader("refresh", "0;url=flower.jsp");
	}
	else
	{
		out.println("<script language='javaScript'> alert('删除失败');</script>");
		response.setHeader("refresh", "0;url=flowerDel.jsp");
	}
%>
</body>
</html>