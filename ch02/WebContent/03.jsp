<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>jsp���� �ڹٸ� ����ؼ� ó�������� ��</h2>
<hr />
<%
	// ��ũ��Ʈ��
	int age = (int) (Math.random() * 6 + 1); // *�ʿ��Ѱ��� + ���۰�
	// 1~6 ������ ������ �߻���.
	String gen;
	if (Math.random() > 0.5) {
		gen = "����";
	} else {
		gen = "����";
	}
%>
����... �����
<%=age * 10%>��
<%=gen%>�ϰ� �����ϴ�.
<br />
<%
	if (age == 1 || age == 2) {
%>
<font color="red">��â ���� ���̱���!!</font>
<%
	} else {
%>
<font color="blue">�λ��� ���� ���̱���!!</font>
<%
	}
%>
