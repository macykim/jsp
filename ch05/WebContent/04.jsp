<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<h2>!! READ ONE !!</h2>
<%
	String word = request.getParameter("sname");
	try {
		// 1. ����̹� �˻�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. ����
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.56:1521:xe", "jsp", "1111");
		out.println("<h3>���Ἲ��</h3>");
		
		// 3. ��ɹ� �غ�
		String sql = "select * from simple where name =?";	// �ϳ���������� pk�� ����!
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, word);
		
		// 4. ��ɹ� ���� -> cud: executeUpdate  / r: executeQuery 
		ResultSet rs = ps.executeQuery();
		// next() ..  �� (row)�� �����鼭 �����Ͱ� �־��ٸ� true, �ƴϸ� false�� �߻�
		if (rs.next()) {
			String n = rs.getString("name");
			int a = rs.getInt("birth"); // ���̸��� Ʋ���� "�������� �� �̸�"
			String g = rs.getString("gender");
			%>
			<p>
				<%=n%>
				(<%=a%>���/<%=2015 - a + 1%>�� /
				<%=g%>)
			</p>
			<%
		}else {
			out.println("<h2>�ش� �̸��� ���� ������ ����.</h2>");
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
