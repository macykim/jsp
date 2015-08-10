<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>jsp에서 자바를 사용해서 처리가능한 곳</h2>
<hr />
<%
	// 스크립트릿
	int age = (int) (Math.random() * 6 + 1); // *필요한경우수 + 시작값
	// 1~6 사이의 정수가 발생함.
	String gen;
	if (Math.random() > 0.5) {
		gen = "남성";
	} else {
		gen = "여성";
	}
%>
왠지... 당신은
<%=age * 10%>대
<%=gen%>일것 같습니다.
<br />
<%
	if (age == 1 || age == 2) {
%>
<font color="red">한창 좋을 나이군요!!</font>
<%
	} else {
%>
<font color="blue">인생을 즐기실 나이군요!!</font>
<%
	}
%>
