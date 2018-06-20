<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List,java.util.ArrayList,com.wavelabs.entity.Employee" %>
<%
	List<Employee> elist = (List<Employee>)request.getAttribute("empList");


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align=center width=50% bgcolor=orange>
		<tr>
			<td>Employee Id</td>
			<td>Employee Name</td>
			<td>Employee Salary</td>
			<td>Employee DeptNo</td>
		</tr>
		<%
			for(Employee e : elist)
			{
		%>
		<tr>
			<td><%=e.getEmpid()%></td>
			<td><%=e.getEname()%></td>
			<td><%=e.getSalary()%></td>
			<td><%=e.getDeptno()%></td>
		</tr>
		<%
			}
		%>	
		
	</table>
</body>
</html>