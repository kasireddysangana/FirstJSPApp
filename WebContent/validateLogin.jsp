<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.wavelabs.entity.User,com.wavelabs.dao.UsersDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Validate Login</title>
</head>
<body>
	<h1 style="text-align:center">
	<%-- Commented to include code for forward and include tags 
	<%
		String userName = request.getParameter("uid");
		String password = request.getParameter("pwd");
		session.setAttribute("user",userName);
		User u = new User(userName,password);
		
		if(new UsersDAO().checkUser(u))
		{
			out.print("Welcome to Wavelabs");
	%>
	<br>
	<hr width=100% size=10 color=blue>
	<a href="showMyDetails.jsp">ShowMyDetails</a><br>
	<a href="GetAllEmployeesServlet">GetAllEmployees</a>
	<%
		}
		else
			out.print("Invalid Username or Password");
		
	%> --%>
	<%-- Code for forward and include tags --%>
	<% 
		String userName = request.getParameter("uid");
		String password = request.getParameter("pwd");
		session.setAttribute("user",userName);
		User u = new User(userName,password);
		System.out.println("In JSP : " + userName);
		System.out.println("In JSP : " + password);
		if(new UsersDAO().checkUser(u))
		{
	%>
		<jsp:forward page="welcome.jsp">
			<jsp:param name="user" value="<%=userName%>"/>
		</jsp:forward>
	<%
		}
		else
		{
			out.print("Invlaid username or password");
	%>
		<hr width=100% size=5 color=green>
		<jsp:include page="login.html"/>
	<%
		}
	%>
	
	
	
	
	</h1>
</body>
</html>