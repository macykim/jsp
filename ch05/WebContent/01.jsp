<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<h2>DataBase</h2>
<hr />
�������α׷��� �Ǿ���, �� ���α׷��� �Ǿ���, �߻��Ǿ��� �����͸� ��� �ΰ� ����ؾߵȴٸ�
<br />
DataBase�� ������ �ʼ���.
<br />
�ڹٿ����� DB������ �Ҽ� �ְ� Ŭ����(java.sql��Ű��)���� �������ִµ�,
<br />
�̷� Ŭ�������� �̿��ؼ�DB������ �ϴ°�
<br /> 
<b>JDBC</b>
<i>(java data base connectivity)</i>
��� �θ���.
<br />
DataBase �۾��� �ϱ����ؼ� ��� ������ �ʼ��ε�, ���Ӻ��� Ȯ���� �غ���
<%
	// ���� ������ �ϱ� ���ؼ� 3���� ������ �ʿ��ϴ�.
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// url�� DBMS ���� ������ �������ִ�.
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "jsp"; // �����ϰ��� �ϴ� ������ ��� ����ڸ�
		String password = "1111"; // �ش� ������ ��й�ȣ
		DriverManager.getConnection(url, user, password);
		System.out.println("connect!!");
	} catch (Exception e) {
		System.out.println("fail");
		e.printStackTrace(); // ���� �ֿܼ� ��ڴ�.
	}
%>








