<%@page import="sun.security.util.Length"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<% // �Ѿ�� p ���� ���� ...
		   // p=1 -> 1������ 10������ ����
		   // p=2 -> 11������ 20������ Ȯ�� ����...
		   // .....
		   // p=15 -> 141������ 150������ Ȯ�� ����...
		   // .....
		   // p=97 -> 961������ 970������ Ȯ�� ����...		   
		int p = Integer.parseInt(request.getParameter("p"));
		int s = 10*(p-1)+1;
		int e = p*10;
		   
		   %>
		   
		<h2>��ŷ Ȯ��!</h2>
		<hr/>
		[<%=s %> ~ <%=e %>] ���� Ȯ�� ����!<br/> 
		
		
	</body>
</html>