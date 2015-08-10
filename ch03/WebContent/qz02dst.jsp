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
			gender="여자";
		}else if (sex.equals("male")){
			gender="남자";
		}else{
			gender="성별을 알려주세요.";
		}
		
		if (bmi<18.5){
			msg="저체중";
		}else if (bmi<23){
			msg="정상";
		}else {msg="과체중";
		}
		%>
		
		당신은 <%=generation %>대 <%=gender %>입니다. <br/>
		신장은 <%=height %>, 체중은 <%=weight %> <br/>
		BMI지수는 <%=bmi %>이고<br/>
		<%=msg%>이십니다. 
		
		<ol>
		<li><%=sex %></li>
		<li><%=height %></li>
		<li><%=weight %></li>
		<li><%=age %></li>
		</ol>
		
		
	</body>
</html>