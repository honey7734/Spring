

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Gugudan
 */
@WebServlet("/gugudan")
public class Gugudan extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//입력
		int dan = 2;
		String result = ""; 
		
		//처리
		for(int i = 1; i <= 9; i++){
			result += dan + " * " + i + " = " + (dan*i) + "<br>";
		}
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("/gugudan.jsp").forward(request, response);
		//response.sendRedirect(request.getContextPath() + "/gugudan.jsp");
	}

	
}
