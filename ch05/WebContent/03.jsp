<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<h2>!! READ ALL !!</h2>
<%
	try {
		// 1. ����̹� �˻�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. ����
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.56:1521:xe", "jsp", "1111");
		out.println("<h3>���Ἲ��</h3>");
		// 3. ��ɹ� �غ�
		String sql = "select * from simple where name like ? or gender like ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		String word= "��";
		ps.setString(1, "%"+word+"%");
		ps.setString(2, "%"+word+"%");
		// �ε������� ������ IN �Ǵ� OUT �Ű�����::  ? ���ε� �ص� �κп� �� ���� ���ߴ� �Ҹ�
		// �������� �� �ε��� :: ���ε� ���ص� �κ��� ä����� �Ѵٴ� �Ҹ�
		
		// 4. ��ɹ� ���� -> cud : executeUpdate  / r : executeQuery 
		ResultSet rs = ps.executeQuery();
		// next() ..  �ο츦 �����鼭 �����Ͱ� �־��ٸ� true , �ƴϸ� false�� �߻�
		while (rs.next()) {
			String n = rs.getString("name");
			int a = rs.getInt("birth"); // ���̸��� Ʋ���� "�������� �� �̸�"
			String g = rs.getString("gender");
			//			rs.getDouble();
%>
<p>
	<%=n%>
	(<%=a%>���/<%=2015 - a + 1%>�� /
	<%=g%>)
</p>
<%
	}
		// 5. �ڿ� �ݳ�
		rs.close();
		ps.close();
		conn.close();
	} catch (Exception e) {
		out.println("<h1>DB�۾��� ���� �߻�</h1>");
		System.out.println(request.getRemoteAddr());
		e.printStackTrace();
	}
%>
