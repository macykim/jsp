<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%
String m = request.getParameter("mode");
String addr = request.getRemoteAddr();
// response.getWriter(); => jsp���� �ڵ��̱� ������ ���� �ʿ䰡 ����.
Date d = new Date();

//==================
session.toString();
page.toString();
pageContext.toString();
out.toString();
request.toString();
response.toString();
application.toString();
config.toString();
//==================
%>

<h2>����� ip:  <%=addr %></h2>
<hr/>
mode�� �̸����� �Ѱ��� ��: <%=m%>
<hr/>
��û �߻� �ð�: <%=d.toString()%>