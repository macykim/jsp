<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
	<%
	int[] arr = new int[] {3,3,3,12,1541};
	request.setAttribute("data", arr);
	request.setAttribute("name", "ch06Project");
	
	// �� ó�� �ǰ�.. ���� �� �����ٰ� ����..
	// ���信 ������ �� �ִ� ��ü�� ���� ���±���..
	response.sendRedirect("src01_dst.jsp");
	%>
	
	<%
	int[] t = (int[])request.getAttribute("data");
	String n = (String)request.getAttribute("name");
	%>
	
	
	</body>
</html>