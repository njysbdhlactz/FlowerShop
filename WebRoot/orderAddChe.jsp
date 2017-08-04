<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
<%

request.setCharacterEncoding("utf-8");

%>
<%
request.setCharacterEncoding("UTF-8");
	String id=(String)request.getParameter("id");
	String cname=(String)request.getParameter("cname");
	String rname=(String)request.getParameter("rname");
	String phone=(String)request.getParameter("phone");
	String date=(String)request.getParameter("date");
	String price=(String)request.getParameter("price");
	String state=(String)request.getParameter("state");
	String describe=(String)request.getParameter("describe");
	
	String sql="insert into orders values('" + id + "','" + cname +"','"+rname+"','"+phone+"','"+date+"','"+price+ "','" + state +"','"+describe+ "')";
	ResultSet rs = db.executeQuery(sql);
//	String num = rs.getString(7);
//	if(rs.next())
//	{
		out.println("<script language='javaScript'> alert('添加成功');</script>");
//	}
	response.setHeader("refresh", "1;url=order.jsp");
%>
</body>
</html>