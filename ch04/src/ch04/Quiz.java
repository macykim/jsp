package ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String kor = req.getParameter("kor");
		String eng = req.getParameter("eng");
		String math = req.getParameter("math");
		int avg = (Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math))/3;
		String result = ""; 
		
		resp.setContentType("text/html;charset=euc-kr");
		PrintWriter pw = resp.getWriter();
		
		pw.println(name + "님의 점수는..");
		pw.println("국어점수는: " + kor);
		pw.println("영어점수는: " + eng);
		pw.println("수학점수는: " + math);
		pw.println("평점은: " + avg);				
		
		if (avg > 60 && Integer.parseInt(kor) > 40 && Integer.parseInt(eng) > 40 && Integer.parseInt(math) > 40) {
			result="합격";
		}else {result="불합격";}		
		pw.println(result + "하셨습니다.");
	}

}
