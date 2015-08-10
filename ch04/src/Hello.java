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
		// �����̶� ����� �� ���ø����̼��� ����� ���.
		// req = ��ũ��Ʈ������ ���� request ��ü
		// resp = ��ũ��Ʈ������ ���� response ��ü
		String m = req.getParameter("mode");
		String addr = req.getRemoteAddr();
		System.out.println("m : " + m);
		System.out.println("addr : " + addr);
		// �� ���� Ŭ���� /test2.it �� ���ö� �۵��ǰ� ��Ͻ����ּ���
		// �̰� ������ ��û�� �м��� ����������.. ������ ���濡�� �����ϴ� ��Ȳ������
		// resp.sendError(500);
		resp.setContentType("text/html;charset=euc-kr");
		PrintWriter pw =resp.getWriter();		// ctrl+shift+o
		pw.println("<h2>����� ip : " + addr+"</h2>");
		pw.println("<hr/>");
		pw.println("mode�� �̸����� �Ѱ��� �� : ");
		pw.println(m);
		pw.println("<hr/>");
		Date d = new Date();
		pw.println("request occured <i>");
		pw.println(d.toString());
		pw.println("</i>");
	}
}











