<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
	<head>
		<title>form tag</title>
	</head>
	<body>
	<p>
		action�� ������ ������ / submit ȿ���� �߻��Ǹ� �̵��Ѵ�.
		����ڰ� �Է�/������ ������ ������ �Բ� �ѱ� �� �ִ�.
		��, �Ķ���߸��� ������ �ֵ鸸..!
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
		<input type="submit" value="�Ϸ�"/> 
		</form>
	</body>
</html>