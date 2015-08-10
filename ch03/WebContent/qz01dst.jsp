<%@page import="sun.security.util.Length"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<% // 넘어온 p 값에 따라서 ...
		   // p=1 -> 1위부터 10위까지 가능
		   // p=2 -> 11위부터 20위까지 확인 가능...
		   // .....
		   // p=15 -> 141위부터 150위까지 확인 가능...
		   // .....
		   // p=97 -> 961위부터 970위까지 확인 가능...		   
		int p = Integer.parseInt(request.getParameter("p"));
		int s = 10*(p-1)+1;
		int e = p*10;
		   
		   %>
		   
		<h2>랭킹 확인!</h2>
		<hr/>
		[<%=s %> ~ <%=e %>] 까지 확인 가능!<br/> 
		
		
	</body>
</html>