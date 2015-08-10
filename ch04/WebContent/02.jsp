<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%
String m = request.getParameter("mode");
String addr = request.getRemoteAddr();
// response.getWriter(); => jsp에선 자동이기 때문에 써줄 필요가 없다.
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

<h2>당신의 ip:  <%=addr %></h2>
<hr/>
mode란 이름으로 넘겨준 값: <%=m%>
<hr/>
요청 발생 시간: <%=d.toString()%>