<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="emp" class="com.wavelabs.entity.Employee" scope="session"/>
<%-- 	<jsp:setProperty name="emp" property="empid" value='<%=Integer.parseInt(request.getParameter("empid")) %>'/>
	<jsp:setProperty name="emp" property="ename" value='<%=request.getParameter("ename")%>'/>
	<jsp:setProperty name="emp" property="salary" value='<%=Double.parseDouble(request.getParameter("salary")) %>'/>
	<jsp:setProperty name="emp" property="deptno" value='<%=Integer.parseInt(request.getParameter("deptno")) %>'/>
 --%>	
 <%-- The above 4 steps can be done with the following single statement --%>
 	<jsp:setProperty name="emp" property="*"/>
	<%-- Empid :- <jsp:getProperty name="emp" property="empid"/><br>
	Ename :- <jsp:getProperty name="emp" property="ename"/><br>
	Salary :-<jsp:getProperty name="emp" property="salary"/><br>
	Deptno :-<jsp:getProperty name="emp" property="deptno"/><br> --%>
	<jsp:forward page="DisplayEmployeeDetails.jsp"/>
</body>
</html>