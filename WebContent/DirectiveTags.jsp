<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page  import="java.util.Date,java.sql.*,java.io.IOException"%>
<%@include file="DisplayDate.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DirectiveTags</title>
</head>
<body>
	<center>
		<h1>
			<% out.print(new Date()); %>
		</h1>
		<h2>
			This is DisplayDate.jsp to demonstrate @include directive
		</h2>
		<hr color=red width=100% size=5>
	</center>

</body>
</html>