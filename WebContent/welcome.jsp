<%-- <%
	String userName = request.getParameter("user");
%>
<html>
<body>
<h1 style="text-align:center;color:red">
		Welcome to Wave labs, <%=userName %>!.... You have successfully logged in.
	</h1>
</body>
</html> --%>

<html>
<body>
<h1 style="text-align:center;color:red">
		<!-- Welcome to Wave labs, ${param.user}!.... You have successfully logged in. -->
		Welcome to Wave labs, ${sessionScope.user}!.... You have successfully logged in.
	</h1>
</body>
</html>