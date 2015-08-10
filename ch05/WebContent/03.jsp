<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<h2>!! READ ALL !!</h2>
<%
	try {
		// 1. 드라이버 검색
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. 연결
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.56:1521:xe", "jsp", "1111");
		out.println("<h3>연결성공</h3>");
		// 3. 명령문 준비
		String sql = "select * from simple where name like ? or gender like ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		String word= "지";
		ps.setString(1, "%"+word+"%");
		ps.setString(2, "%"+word+"%");
		// 인덱스에서 누락된 IN 또는 OUT 매개변수::  ? 바인딩 해둔 부분에 값 설정 안했단 소리
		// 부적합한 열 인덱스 :: 바인딩 안해둔 부분을 채우려고 한다는 소리
		
		// 4. 명령문 수행 -> cud : executeUpdate  / r : executeQuery 
		ResultSet rs = ps.executeQuery();
		// next() ..  로우를 내리면서 데이터가 있었다면 true , 아니면 false를 발생
		while (rs.next()) {
			String n = rs.getString("name");
			int a = rs.getInt("birth"); // 열이름이 틀리면 "부적합한 열 이름"
			String g = rs.getString("gender");
			//			rs.getDouble();
%>
<p>
	<%=n%>
	(<%=a%>년생/<%=2015 - a + 1%>세 /
	<%=g%>)
</p>
<%
	}
		// 5. 자원 반납
		rs.close();
		ps.close();
		conn.close();
	} catch (Exception e) {
		out.println("<h1>DB작업중 오류 발생</h1>");
		System.out.println(request.getRemoteAddr());
		e.printStackTrace();
	}
%>
