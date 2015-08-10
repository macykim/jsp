package ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SuccessCheck extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		double avg = (kor + eng + math) / 3.0;
		out.println(name + "님<br/>");
		out.println("당신은 [");
		out.println(kor + "/" + eng + "/" + math + "]점으로..<br/>");
		if (kor >= 40 && eng >= 40 && math >= 40 && avg >= 60.0) {
			out.println("<h2>합격</h2>");
		} else {
			out.println("<h2>불합격</h2>");
		}
	}
}
