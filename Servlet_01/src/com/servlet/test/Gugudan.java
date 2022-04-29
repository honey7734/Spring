package com.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gugudan")
public class Gugudan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			// 입력
			String danStr = request.getParameter("dan");
			int dan = -1;
			String result = "";
			boolean flag = true;

			try {
				dan = Integer.parseInt(danStr);
			} catch (Exception e) {
				flag = false;
			}

			// 처리
			if (flag) {
				for (int gop = 1; gop < 10; gop++) {
					result += dan + " * " + gop + " = " + (dan * gop) + "<br/>";
				}
			}else {
				result += "<script>alert('올바르지않은 입력입니다.\\n정수를 입력하세요.');</script>";
			}

			// 출력
			request.setAttribute("dan", dan);
			request.setAttribute("flag", flag);
			request.setAttribute("result", result);
			view(request, response);
			
			// -> 이것이 forward한 것이다
			// -> JSP가 이 역할을 대신해준다
		
	}
	
	//전역변수에 선언해주는 것은 클래스영역이기 때문에 클래스의 형질을 결정하는 요소외의 변수를 선언하는 것은 부적절하다
	//보통 여러개의 데이터를 파라미터로 전달해줄때 컬렉션 프레임워크로 싸서 주는데..
	//이미 request에 다 정의되어있다! -> setAttribute()
	public void view(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int dan = (int) request.getAttribute("dan");
		boolean flag = (boolean) request.getAttribute("flag");
		String result = (String) request.getAttribute("result");
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>" + dan + "단" + "</title>");
		out.println("</head>");
		out.println("<body>");
		if(flag) out.println("<h1>" + dan + "단 입니다." + "</h1>");
		out.println(result);
		out.println("</body>");
		out.println("</html>");
		
	}

	

}
