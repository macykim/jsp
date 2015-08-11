<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
int[] t = (int[])request.getAttribute("data");
String n = (String)request.getAttribute("name");
%>

<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
	<h2>DESTINATION</h2>
		<%=request.getParameter("word") %>
		<hr color ="black"/>
		Name of this page is <b>src01_dst.jsp</b>
		<hr color ="black"/>
		표(<i>table</i>)만&nbsp;들&nbsp;기
		<table border="1" width="400">
			<tr>
			<td>이름</td>
			<td>평균</td>
			<td>합격</td>
			</tr>
			<tr>
			<td>홍길동</td>
			<td>99.5</td>
			<td>합격</td>
			</tr>
		</table>
	</body>
</html>