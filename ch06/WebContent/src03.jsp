<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- 처리되고, 다 끝났다고 가정하고 -->
<%
int[] arr = new int[] {3, 3, 3, 12, 1541};
request.setAttribute("data", arr);
request.setAttribute("name", "ch06Project");

RequestDispatcher rd = request.getRequestDispatcher("src03_dst.jsp");
// 요청을 접근할 수 있는 객체에서 뭔가를 뽑아낸 다음에 
 
rd.forward(request, response);
%>
<!-- 작동을 시키면서 매개변수로 이 페이지가 작동할 때 발생했던 request, response를 넘겨주는것 -->