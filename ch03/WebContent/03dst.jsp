<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
	<head>	
		<title>Insert title here</title>
	</head>
	<body>
		<% 
		String z1 = request.getParameter("flag");
		String z2 = request.getParameter("txt");
		String z3 = request.getParameter("pw");		
		String z4 = request.getParameter("btn");
		
		%>
		<ol>
		<li><%=z1 %></li>
		<li><%=z2 %></li>
		<li><%=z3 %></li>
		<li><%=z4 %></li>
		</ol>
		
	</body>
</html>