<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//Ŭ���̾�Ʈ������ 05.jsp?mode=read&no=5 �̷����·� �ðŶ�� �����ϰ�
	// �̾Ƽ� Ȯ���غ���.
	int a;
	//	double a;
	//	int request;
	// ������ request �� response �� ���ؼ� ���캸��.
	// ��ũ��Ʈ�� �ȿ��� ���� ������ ���� �ʴ��� �����ִ� ����(��ü)�� �ִ�.
	
	request.toString(); // request : Ŭ���̾�Ʈ���� ��û������ ���� ���ٽ� ���Ǵ� ��ü
	response.toString(); // response : Ŭ���̾������� ���������� ���� ���ٽ� ���Ǵ� ��ü

	String addr = request.getRemoteAddr(); // ��û�� ip����..
%>
request.getRemoteAddr() =
<%=addr%>
<%
	//	response.sendError(404);
	// 05.jsp �ö� �հ� ���ް��� ���� ���´ٸ�, 
	// �װ��� request? response? �� ������ ���ؼ� ���� ������..?
	// request ��ü�� ���ؼ� Ȯ���Ҽ� �ִ�.
	// 05.jsp?mode=read&no=5
	String p1 = request.getParameter("mode");
	// Ȯ���Ǵ� ���� String �̴�.
	String p2 = request.getParameter("no");
%>
<hr />
����� mode ��� �̸����� �Ѱ��� ���� :
<%=p1%>�̰��,
<br />
����� no ��� �̸����� �Ѱ��� ���� :
<%=p2%>�Դϴ�.






