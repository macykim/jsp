<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>mult & div calc ex.</title>
	</head>
	<body>
	<% String mode = request.getParameter("mode");
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");
	double result=0;
	String msg="", stmt="";

	if (mode.equals("mul")){
		result=Double.parseDouble(n1)*Double.parseDouble(n2);
		stmt="n1*n2";
	}else if (mode.equals("div")){
		result=Double.parseDouble(n1)/Double.parseDouble(n2);
		stmt="n1/n2";
	}else {msg="error";
		System.out.println(msg);}
	%>
	[mode: <%=mode%>]<br/>
	[<%=stmt %>]<br/>
	[°á°ú°ª: <%=result%>]
	</body>
</html>