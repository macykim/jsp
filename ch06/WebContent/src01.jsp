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
	
	// 다 처리 되고.. 일이 다 끝났다고 가정..
	// 응답에 접근할 수 있는 객체에 무언가 보냈구나..
	response.sendRedirect("src01_dst.jsp");
	%>
	
	<%
	int[] t = (int[])request.getAttribute("data");
	String n = (String)request.getAttribute("name");
	%>
	
	
	</body>
</html>