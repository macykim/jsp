<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<h2>DataBase</h2>
<hr />
로컬프로그램이 되었던, 웹 프로그램이 되었던, 발생되어진 데이터를 계속 두고 사용해야된다면
<br />
DataBase와 연동은 필수다.
<br />
자바에서는 DB연동을 할수 있게 클래스(java.sql패키지)들을 제공해주는데,
<br />
이런 클래스들을 이용해서DB연동을 하는걸
<br /> 
<b>JDBC</b>
<i>(java data base connectivity)</i>
라고 부른다.
<br />
DataBase 작업을 하기위해선 디비 접속이 필수인데, 접속부터 확인을 해보자
<%
	// 디비와 접속을 하기 위해선 3가지 정보가 필요하다.
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// url은 DBMS 마다 패턴이 정해져있다.
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "jsp"; // 접속하고자 하는 서버의 디비 사용자명
		String password = "1111"; // 해당 계정의 비밀번호
		DriverManager.getConnection(url, user, password);
		System.out.println("connect!!");
	} catch (Exception e) {
		System.out.println("fail");
		e.printStackTrace(); // 에러 콘솔에 찍겠다.
	}
%>








