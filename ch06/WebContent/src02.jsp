<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
int[] arr = new int[] {3, 3, 3, 12, 1541};
request.setAttribute("data", arr);
request.setAttribute("name", "ch06Project");
%>

<!-- ó���� �� �� �ڹٽ�ũ��Ʈ�� �̿��ؼ� dst.jsp �����̷�Ʈ ��Ű�� �� --> 
<script>
alert("REGISTER SUCCESS");
location.href="src02_dst.jsp";
</script>