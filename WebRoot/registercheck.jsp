<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册中....</title>
</head>
<body>

	<jsp:useBean id="db" class="bean.DBean" scope="page" />
	<%
	request.setCharacterEncoding("UTF-8");
		String id=(String)request.getParameter("id");
		String name=(String)request.getParameter("name");
		String password=(String)request.getParameter("password");
		String password02=(String)request.getParameter("password02");
//		System.out.println("username:"+username);
//		System.out.println("password:"+password);

//		String sql="insert into s values("+"'"+username+"'"+","+"'"+password+"'"+")";
//		db.executeQuery(sql);
//		System.out.println(sql);

		String s ="Select * From admin";
		ResultSet rs = db.executeQuery(s);
		boolean exist = true;
		while(rs.next())
		{
			if(name.equals(rs.getString(1)))
			{
				exist = false;
				out.println("<script language='javaScript'> alert('用户名已存在，点击确定回到注册页面。');</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
		}
		if(exist)
		{
			if(password.equals(""))
			{
				out.println("<script language='javaScript'> alert('密码为空，请重新填写。');</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
			else
			{
				if(password.equals(password02))
				{
					String InsertSQL = "Insert Into admin Values('" + id + "','" + name +"','"+password+ "')";
					int i = db.executeUpdate(InsertSQL);
					if (i == 1)
					{
						out.println("<script language='javaScript'> alert('注册成功，点击确定回到登陆页面。');</script>");
						response.setHeader("refresh", "1;url=Login.jsp");
					}
				}
				else
				{
					out.println("<script language='javaScript'> alert('密码不一致，请重新填写。');</script>");
					response.setHeader("refresh", "1;url=register.jsp");
				}
				
				
			}
		}
		db.close();
		
	%>	
		
</body>
</html>