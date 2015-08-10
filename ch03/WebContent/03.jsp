<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
	<head>
		<title>form tag</title>
	</head>
	<body>
	<p>
		action에 설정된 곳으로 / submit 효과가 발생되면 이동한다.
		사용자가 입력/선택한 내용을 가지고 함께 넘길 수 있다.
		단, 파라미텨명이 설정된 애들만..!
		</p>
		<form action="03dst.jsp">
		hidden:<input type="hidden" name="flag" value="off"/><br/>
		text:<input type="text" name="txt"/><br/>
		password:<input type="password" name="pw"/><br/>
		<!--  checkbox:<input type="checkbox" name="cb"/> -->
		radiobtn:<input type="radio" name="btn" value="agree"/>agree<input type="radio" name="btn" value="disagree"/>disagree<br/>
		<hr/>
	<!--<select>
		<option>aa</option>
		<option>bb</option>
		<option>cc</option>
		</select> -->
		<input type="submit" value="완료"/> 
		</form>
	</body>
</html>