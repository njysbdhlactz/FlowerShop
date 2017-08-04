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
	String num2=(String)request.getParameter("num2");
	String sql="delete from admin where userID="+num2;
//	out.println(sql);
	int i = db.executeUpdate(sql);
	if(i == 1)
	{
		out.println("<script language='javaScript'> alert('删除成功');</script>");
		response.sendRedirect("personal.jsp");
	}
	else
	{
		out.println("<script language='javaScript'> alert('删除失败');</script>");
		response.sendRedirect("personal.jsp");
	}
%>
	</body>
</html>
