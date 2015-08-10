<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>ID & PW ex.</title>
	</head>
	<body>
		<% String id = request.getParameter("id");
		String pass = request.getParameter("pass");%>
		
		당신이 로그인을 시도하는 정보값은 [<%=id %>/<%=pass%>] 입니다.
	</body>
</html>