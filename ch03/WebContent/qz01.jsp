<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
	<head>
		<title>Quiz</title>
	</head>
	<body>
		<%
		int p = Integer.parseInt(request.getParameter("p"));
		int s = 10*(p-1)+1;
		int e = p*10;
		%>
		<h2>랭킹 확인!</h2>
		<hr/>
		[<%=s %> ~ <%=e %>] 까지 확인 가능!<br/> 
		
		<% 
		for(int i=1; i<=15; i++){
			%>
			<a href="qz01dst.jsp?p=<%=i%>">랭킹<%=i %> </a>
			<%} %>
	</body>
</html>