<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// qz.jsp ���������� ��û�� ������..
	// gen �̶� �̸�����  m or w�� ������ ������
	// bitrh �̶� �̸����� ������ ������ ���´ٰ� �����ϰ�
	// �̰� �����ؼ�.. ����� ���� or ���� ���(����)
	// �̼����� or �����̶�� ������ ������ �ְ� �غ���.
	String g = request.getParameter("gen");
	String b = request.getParameter("birth");
%>
����� gen �̶�� ���� �� :
<%=g%>
<br />
����� birth �̶�� ���� �� :
<%=b%><br />
<hr />
<%
	String v;
	if (g.equals("m")) {
		v = "����";
	} else {
		v = "����";
	}
	int age = 2015 - Integer.parseInt(b) + 1;
%>
�׷��� �ᱹ, ����� [<%=v%>] �̰�, <%=age%>��(<%=b%>���)!!
<br />
<%
	if (age > 19) {
%>
<b>�����Դϴ�!!</b>
<%
	} else {
%>
<b>�̼������Դϴ�..!</b>
<%
	}
%>
