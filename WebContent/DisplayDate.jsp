<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%!
int count=10;
int sum(int x, int y)
{
	return x+y;
}
%>

<jsp:declaration>
int power(int x, int n)
{
	int res=1;
	for(;n>0;n--)
		res = res*x;
	return res;
}
</jsp:declaration>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Display Date</title>
	</head>
<body>
	<h1>
		<%-- <% 
			out.print(sum(4,5));
			out.print("Count = "+ count);
		%> --%>
		<%=sum(786,999) %>
		<br>
		<%=count %>
		<br>
		<%="Welcome to JSP Technology" %> <br>
		<%=1+2*3/4 %><br>
		<%=count==10 %><br>
		Today's date <input type=text value="<%=new java.util.Date() %>"/>
		<br>
		<%-- XML Style Printing --%>
		<jsp:scriptlet>
		out.print("Hello");
		
		</jsp:scriptlet>
		<br>
		<jsp:expression>
			power(5,3)
		</jsp:expression>
	</h1>
</body>
</html>