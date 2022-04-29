package com.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetParameter
 */
@WebServlet("/param")
public class GetParameter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String color = request.getParameter("color");
//		response.getWriter().print("<body style='background: " + color + ";'></body>" );
		PrintWriter out = response.getWriter();
		out.print("<style> body{"
				+ "background : " + color
				+ "}"
				+ "</style>");
	
	}
	
}
