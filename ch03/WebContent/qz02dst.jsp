<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.text.DecimalFormat" %>
<html>
	<head>
	
	<title>Insert title here</title>
	</head>
	<body>
		<%
		String sex = request.getParameter("sex");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String age = request.getParameter("age");		
		int generation = (Integer.parseInt(age)/10)*10;
		int meter = Integer.parseInt(height)/100;
		double bmi = Double.parseDouble(weight)/(meter^2);
		String gender = "";
		String msg="";
		DecimalFormat deci = new DecimalFormat();
		String bmideci = deci.format(bmi);
		
		
		if (sex.equals("female")){
			gender="����";
		}else if (sex.equals("male")){
			gender="����";
		}else{
			gender="������ �˷��ּ���.";
		}
		
		if (bmi<18.5){
			msg="��ü��";
		}else if (bmi<23){
			msg="����";
		}else {msg="��ü��";
		}
		%>
		
		����� <%=generation %>�� <%=gender %>�Դϴ�. <br/>
		������ <%=height %>, ü���� <%=weight %> <br/>
		BMI������ <%=bmi %>�̰�<br/>
		<%=msg%>�̽ʴϴ�. 
		
		<ol>
		<li><%=sex %></li>
		<li><%=height %></li>
		<li><%=weight %></li>
		<li><%=age %></li>
		</ol>
		
		
	</body>
</html>