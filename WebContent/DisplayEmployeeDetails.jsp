<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.wavelabs.dao.EmployeeDAO,com.wavelabs.dao.DBConnect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="emp" class="com.wavelabs.entity.Employee" scope="session"/>
	<%
		String message="Employee Record did not save";
		if(new EmployeeDAO().createEmployee(emp))
			message="Employee Record Saved Successfully";
	%>
	<table align=center border=1>
		<caption><%=message %></caption>
		<%-- Commented to write the same code in Expression Language as below<tr>
			<td>Employee Id</td>
			<td><jsp:getProperty name="emp" property="empid"/></td>
		</tr>
		<tr>
			<td>Employee Name</td>
			<td><jsp:getProperty name="emp" property="ename"/></td>
		</tr>
		<tr>
			<td>Employee Salary</td>
			<td><jsp:getProperty name="emp" property="salary"/></td>
		</tr>
		<tr>
			<td>Employee Deptno</td>
			<td><jsp:getProperty name="emp" property="deptno"/></td>
		</tr> --%>
		<tr>
			<td>Employee Id</td>
			<td>${emp.empid}</td>
		</tr>
		<tr>
			<td>Employee Name</td>
			<td>${emp.ename}</td>
		</tr>
		<tr>
			<td>Employee Salary</td>
			<td>${emp.salary}</td>
		</tr>
		<tr>
			<td>Employee Deptno</td>
			<td>${emp.deptno}</td>
		</tr>
		
	</table>
	
</body>
</html>