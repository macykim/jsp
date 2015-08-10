<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	try {
		// 드라이버 검색
		Class.forName("oracle.jdbc.driver.OracleDriver");
		out.println("<h3>드라이버 검색</h3>");
		// 디비 연결
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
//		String url = "jdbc:oracle:thin:@192.168.10.56:1521:xe";
		String user = "jsp";
		String password = "1111";
		Connection conn = DriverManager.getConnection(url, user, password);
		out.println("<h3>디비서버 연결</h3>");
		// 디비 작업
		// 준비 (String 작성후, )
		String n = "홍지민";
		int b = 1973; 
		String g = "여";
	//	String sql = "insert into simple values('윤형호', 1990, '남')";
	//	String sql = "insert into simple values('" + n + "', " + b + ", '" + g + "')";
		String sql = "insert into simple values(?, ?, ?)";	// 바인딩 처리 해두고
		PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, n);
			ps.setString(3, g);
			ps.setInt(2, b);
		
		out.println("<h3>작업준비 완료</h3>");
		// 수행 
		int r = ps.executeUpdate();
		out.println("<h3>작업수행 : " + r + "</h3>");

		// 자원반납(사용했던것을 사용끝으로 바꿔주기)
		ps.close();
		conn.close();
		out.println("<h3>디비작업끝..</h3>");
	
	} catch (Exception e) {
		out.println("<h1>작업중 오류 발생</h1>");
		e.printStackTrace(); // 에러를 콘솔에 찍겠다는 뜻
	}
%>








