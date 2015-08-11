<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
int[] arr = new int[] {3, 3, 3, 12, 1541};
request.setAttribute("data", arr);
request.setAttribute("name", "ch06Project");
%>

<!-- 처리가 된 후 자바스크립트를 이용해서 dst.jsp 리다이렉트 시키는 법 --> 
<script>
alert("REGISTER SUCCESS");
location.href="src02_dst.jsp";
</script>