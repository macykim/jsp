package ch04;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// �� Ŭ���� �� ��û�� ���ؼ� �۵��ɼ� �ִ� ������ �Ƿ���..
// step#1 �׷��� ���ư��� �ְ� �ص� HttpServlet Ŭ������ extends .. 
public class Test extends HttpServlet {
	// smart import : ctrl+shift+o
	// step#2 �հ� �۵��Ǿ� �� �κ��� �ִٸ�.. Ư�� �޼��带 �������̵�..
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
				throws ServletException, IOException {
		System.out.println("TEST??");
	}
	// step#3 �� Ŭ������ ���� �۵���ų���� ����� ���Ѿ� �Ѵ�. web.xml
	
}
