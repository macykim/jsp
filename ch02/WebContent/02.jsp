<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.ArrayList" %>
<h2>page ���þ��� �Ӽ�</h2>
<!-- ul (unordered list)  html �ּ� --> 
<%-- ol (ordered list) jsp �ּ� --%> 
<ol>
	<li>language : &lt;% %&gt; ���� �ȿ��� �� ��� ����</li>
	<li>contentType : Ŭ���̾�Ʈ���� ���� �������¿� ���� ����</li>
	<li>pageEncoding : jsp�� ������ ���Ϸ� ��ȯ�� �Ǵµ� �� ��ȯ�� ���Ǵ� ���� ���ڵ� ���� (������
		contentType�� �������հ� ���� ������)</li>
	<%
		// scriptlet �̶�� �θ��� ����	 �ڹ� �ּ��� jsp ���� ��밡��
		int a = (int) (Math.random() * 10 + 1);
		ArrayList li;
	%>
	<li>trimDirectiveWhitespaces : html ���۽� �ڹٷ����� �� ������ �������� ���� �Ǵµ�,
		�װ� ���ټ��� �ִ�</li>
	<li>import : jsp���� Ŭ���� ����Ʈ�� ���</li>
</ol>
