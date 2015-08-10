package ch04;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 이 클래스 웹 요청에 의해서 작동될수 있는 서블릿이 되려면..
// step#1 그렇게 돌아갈수 있게 해둔 HttpServlet 클래스를 extends .. 
public class Test extends HttpServlet {
	// smart import : ctrl+shift+o
	// step#2 먼가 작동되야 될 부분이 있다면.. 특정 메서드를 오버라이드..
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
				throws ServletException, IOException {
		System.out.println("TEST??");
	}
	// step#3 이 클래스를 언제 작동시킬껀지 등록을 시켜야 한다. web.xml
	
}
