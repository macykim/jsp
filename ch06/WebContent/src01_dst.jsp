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
		ǥ(<i>table</i>)��&nbsp;��&nbsp;��
		<table border="1" width="400">
			<tr>
			<td>�̸�</td>
			<td>���</td>
			<td>�հ�</td>
			</tr>
			<tr>
			<td>ȫ�浿</td>
			<td>99.5</td>
			<td>�հ�</td>
			</tr>
		</table>
	</body>
</html>