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
	request.setCharacterEncoding("UTF-8");
	String id=(String)request.getParameter("id");
	String name=(String)request.getParameter("name");
	String sex=(String)request.getParameter("sex");
	String age=(String)request.getParameter("age");
	String phone=(String)request.getParameter("email");
	String email=(String)request.getParameter("phone");
	String address=(String)request.getParameter("Address");
	
	String sql="insert into customer values('" + id + "','" + name +"','"+sex+"','"+age+"','"+email+"','"+phone+ "','" + address +"')";
	ResultSet rs = db.executeQuery(sql);
//	String num = rs.getString(7);
//	if(rs.next())
//	{
		out.println("<script language='javaScript'> alert('添加成功');</script>");
//	}
	response.setHeader("refresh", "1;url=customer.jsp");
%>
</body>
</html>