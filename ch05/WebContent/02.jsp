<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	try {
		// ����̹� �˻�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		out.println("<h3>����̹� �˻�</h3>");
		// ��� ����
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
//		String url = "jdbc:oracle:thin:@192.168.10.56:1521:xe";
		String user = "jsp";
		String password = "1111";
		Connection conn = DriverManager.getConnection(url, user, password);
		out.println("<h3>��񼭹� ����</h3>");
		// ��� �۾�
		// �غ� (String �ۼ���, )
		String n = "ȫ����";
		int b = 1973; 
		String g = "��";
	//	String sql = "insert into simple values('����ȣ', 1990, '��')";
	//	String sql = "insert into simple values('" + n + "', " + b + ", '" + g + "')";
		String sql = "insert into simple values(?, ?, ?)";	// ���ε� ó�� �صΰ�
		PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, n);
			ps.setString(3, g);
			ps.setInt(2, b);
		
		out.println("<h3>�۾��غ� �Ϸ�</h3>");
		// ���� 
		int r = ps.executeUpdate();
		out.println("<h3>�۾����� : " + r + "</h3>");

		// �ڿ��ݳ�(����ߴ����� ��볡���� �ٲ��ֱ�)
		ps.close();
		conn.close();
		out.println("<h3>����۾���..</h3>");
	
	} catch (Exception e) {
		out.println("<h1>�۾��� ���� �߻�</h1>");
		e.printStackTrace(); // ������ �ֿܼ� ��ڴٴ� ��
	}
%>








