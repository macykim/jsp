<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
	<%
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	double avg = (Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math))/3.0;
	String result = "";
	
	if (avg > 60 && Integer.parseInt(kor) > 40 && Integer.parseInt(eng) > 40 && Integer.parseInt(math) > 40) {
		result="�հ�";
	}else {result="���հ�";}
	%>
	
	<%=name %>���� ���:<br/>
	����: <%=kor %> <br/>
	����: <%=eng %> <br/>
	����: <%=math %> <br/>
	<%=result %>�ϼ̽��ϴ�.
	
	</body>
</html>