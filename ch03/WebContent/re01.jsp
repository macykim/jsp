<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>ID & PW ex.</title>
	</head>
	<body>
		<% String id = request.getParameter("id");
		String pass = request.getParameter("pass");%>
		
		����� �α����� �õ��ϴ� �������� [<%=id %>/<%=pass%>] �Դϴ�.
	</body>
</html>