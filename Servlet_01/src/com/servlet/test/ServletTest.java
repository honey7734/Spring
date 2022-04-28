package com.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test")
public class ServletTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("안녕하세요");
		
//		response.setContentType("text/html; charset=utf-8");	// html형식으로 전송
//		response.setContentType("text/plain; charset=utf-8");	// text형식으로 전송
		response.setContentType("application/asdr; charset=utf-8");	// 파일형식으로 전송 -> 다운로드가 된다
		
		response.getWriter().println("<h1>안녕하세요</h1>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
