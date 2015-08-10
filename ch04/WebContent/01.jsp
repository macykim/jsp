<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>JSP Servlet</title>
	</head>
	<body>
		<p>클라이언트 측에서 보내주는 정보를 뽑아서 처리하는 것을 해 보았고, 클라이언트  
		 측에서 서버 측으로 쉽게 파라미터를 전달할 수 있게 하는 a나 form 태그 사용법에 
		 대해서도 배워보았다.<br/> 클라이언트 측에서 보내주는 값들은 request.getParameter() 
		 라는 메소드를 통해서 얻어낼 수 있는데 애초에 스크립트릿 이라는 영역안에서 request
		 객체를 선언 없이 쓸 수 있는 이유, 그리고 response 객체도 사용할 수 있는 이유에 
		 대해서 알아보려면 현재 jsp의 모태격인 servlet이란 기술에 대해  살펴볼 필요가 있다.
		 </p>
		 <h2>서블릿 (Servlet)</h2>
		 <p>서블릿이란 기술은 SUN 사에서, 자바를 이용하여 웹 어플리케이션 제작을 가능케
		 하기 위해 만들어낸 최초의 기술이다. <br/> 간단히 설명한다면, 웹 요청에 의해서 
		 클래스를 작동시킬 수 있다 라는 것!</p>
	</body>
</html>