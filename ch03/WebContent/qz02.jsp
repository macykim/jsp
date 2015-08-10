<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
	<head>
		<title>BMI Tester</title>
	</head>
	<body>
	<h2>계산기</h2>
	<hr/>
	<form action="qz02dst.jsp">
	<input type="radio" name="sex" value="male" checked="checked"/>남자<input type="radio" name="sex" value="female"/>여자<br/>
	신장<input type="text" name="height" size="10"/>
	체중<input type="text" name="weight" size="10"/>
	나이<input type="text" name="age" size="10"/>
	<input type="submit" name="submit" value="계산"/>
	</form>
	<hr/>
	</body>
</html>