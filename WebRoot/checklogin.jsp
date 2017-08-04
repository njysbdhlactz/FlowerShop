<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录中...</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String username=(String)request.getParameter("username");
		String password=(String)request.getParameter("password");
		session.setAttribute("password",password);
		
		
		%>
		<jsp:useBean id="db" class="bean.DBean" scope="page" />
		
		<%
		request.setCharacterEncoding("UTF-8");
			String sql="select * from admin where username="+"'"+username+"'";
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){

			    if(password.equals(rs.getObject("password"))){
			    	
			    	response.sendRedirect("index.jsp");

			    }
			    else{
			    	out.print("<script language='javaScript'> alert('密码输入错误，请重新输入！');</script>");
			    	response.setHeader("refresh", "1;url=Login.jsp");
			    }
			}
			else{
			out.print("<script language='javaScript'> alert('用户名输入有误，请重新输入！');</script>");
				response.sendRedirect("Login.jsp");
			}
			rs.close();
			db.close();
		%>
</body>
</html>