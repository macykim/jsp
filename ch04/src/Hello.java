package ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
											throws ServletException, IOException {
		// 서블릿이란 기술로 웹 어플리케이션을 만들던 방식.
		// req = 스크립트릿에서 썻던 request 객체
		// resp = 스크립트릿에서 썻던 response 객체
		String m = req.getParameter("mode");
		String addr = req.getRemoteAddr();
		System.out.println("m : " + m);
		System.out.println("addr : " + addr);
		// 이 서블릿 클래스 /test2.it 로 들어올때 작동되게 등록시켜주세요
		// 이걸 가지고 요청은 분석이 가능하지만.. 응답을 상대방에게 쏴야하는 상황에서는
		// resp.sendError(500);
		resp.setContentType("text/html;charset=euc-kr");
		PrintWriter pw =resp.getWriter();		// ctrl+shift+o
		pw.println("<h2>당신의 ip : " + addr+"</h2>");
		pw.println("<hr/>");
		pw.println("mode란 이름으로 넘겨준 값 : ");
		pw.println(m);
		pw.println("<hr/>");
		Date d = new Date();
		pw.println("request occured <i>");
		pw.println(d.toString());
		pw.println("</i>");
	}
}











