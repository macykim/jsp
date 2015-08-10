<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.ArrayList" %>
<h2>page 지시어의 속성</h2>
<!-- ul (unordered list)  html 주석 --> 
<%-- ol (ordered list) jsp 주석 --%> 
<ol>
	<li>language : &lt;% %&gt; 영역 안에서 쓸 언어 설정</li>
	<li>contentType : 클라이언트에게 보낼 응답형태에 대한 설정</li>
	<li>pageEncoding : jsp가 임의의 파일로 변환이 되는데 그 변환시 사용되는 문자 인코딩 설정 (생략시
		contentType의 문자집합과 같게 설정됨)</li>
	<%
		// scriptlet 이라고 부르는 영역	 자바 주석도 jsp 에서 사용가능
		int a = (int) (Math.random() * 10 + 1);
		ArrayList li;
	%>
	<li>trimDirectiveWhitespaces : html 전송시 자바로직을 한 흔적이 공백으로 남게 되는데,
		그걸 없앨수가 있다</li>
	<li>import : jsp에서 클래스 임포트시 사용</li>
</ol>
