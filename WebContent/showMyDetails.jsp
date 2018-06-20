<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.wavelabs.entity.Employee,com.wavelabs.dao.EmployeeDAO" errorPage="error.jsp"%>
<%
	String userName = (String)session.getAttribute("user");
	Employee e = new EmployeeDAO().getEmployeeDetails(userName);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>Employee Id</td>
			<td><%=e.getEmpid()%>
		</tr>
		<tr>
			<td>Employee name</td>
			<td><%=e.getEname()%>
		</tr>
		<tr>
			<td>Employee Salary</td>
			<td><%=e.getSalary()%>
		</tr>
		<tr>
			<td>Employee Deptno</td>
			<td><%=e.getDeptno()%>
		</tr>
	</table>
</body>
</html>