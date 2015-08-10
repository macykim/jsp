<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//클라이언트측에서 05.jsp?mode=read&no=5 이런형태로 올거라고 가정하고
	// 뽑아서 확보해보자.
	int a;
	//	double a;
	//	int request;
	// 그전에 request 와 response 에 대해서 살펴보자.
	// 스크립트릿 안에서 굳이 선언을 하지 않더라도 잡혀있는 변수(객체)가 있다.
	
	request.toString(); // request : 클라이언트측의 요청정보에 대한 접근시 사용되는 객체
	response.toString(); // response : 클라이언측으로 응답정보에 대한 접근시 사용되는 객체

	String addr = request.getRemoteAddr(); // 요청지 ip얻어내는..
%>
request.getRemoteAddr() =
<%=addr%>
<%
	//	response.sendError(404);
	// 05.jsp 올때 먼가 전달값을 같이 보냈다면, 
	// 그값은 request? response? 중 무엇을 통해서 얻어낼수 있을까..?
	// request 객체를 통해서 확보할수 있다.
	// 05.jsp?mode=read&no=5
	String p1 = request.getParameter("mode");
	// 확보되는 값은 String 이다.
	String p2 = request.getParameter("no");
%>
<hr />
당신이 mode 라는 이름으로 넘겨준 값은 :
<%=p1%>이고요,
<br />
당신이 no 라는 이름으로 넘겨준 값은 :
<%=p2%>입니다.






