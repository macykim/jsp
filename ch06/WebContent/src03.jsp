<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- ó���ǰ�, �� �����ٰ� �����ϰ� -->
<%
int[] arr = new int[] {3, 3, 3, 12, 1541};
request.setAttribute("data", arr);
request.setAttribute("name", "ch06Project");

RequestDispatcher rd = request.getRequestDispatcher("src03_dst.jsp");
// ��û�� ������ �� �ִ� ��ü���� ������ �̾Ƴ� ������ 
 
rd.forward(request, response);
%>
<!-- �۵��� ��Ű�鼭 �Ű������� �� �������� �۵��� �� �߻��ߴ� request, response�� �Ѱ��ִ°� -->