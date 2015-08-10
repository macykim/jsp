<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// qz.jsp 이페이지로 요청을 보낼때..
	// gen 이란 이름으로  m or w를 물려서 보내고
	// bitrh 이란 이름으로 생년을 물려서 보냈다고 가정하고
	// 이걸 추출해서.. 당신은 남성 or 여성 몇살(몇년생)
	// 미성년자 or 성인이라는 응답을 보낼수 있게 해보자.
	String g = request.getParameter("gen");
	String b = request.getParameter("birth");
%>
당신이 gen 이라고 보낸 값 :
<%=g%>
<br />
당신이 birth 이라고 보낸 값 :
<%=b%><br />
<hr />
<%
	String v;
	if (g.equals("m")) {
		v = "남성";
	} else {
		v = "여성";
	}
	int age = 2015 - Integer.parseInt(b) + 1;
%>
그래서 결국, 당신은 [<%=v%>] 이고, <%=age%>세(<%=b%>년생)!!
<br />
<%
	if (age > 19) {
%>
<b>성인입니다!!</b>
<%
	} else {
%>
<b>미성년자입니다..!</b>
<%
	}
%>
