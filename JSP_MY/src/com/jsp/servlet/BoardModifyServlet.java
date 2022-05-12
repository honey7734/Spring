package com.jsp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.datasource.DataSource;
import com.jsp.vo.Board;

/**
 * Servlet implementation class BoardModifyServlet
 */
@WebServlet("/board/modify")
public class BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DataSource dataSource = DataSource.getInstance();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/board/modify.jsp";
		String bno = request.getParameter("bno");
		
		Board board = dataSource.getBoardList().get(bno);
		
		request.setAttribute("board", board);
		request.getRequestDispatcher(url).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bno = request.getParameter("bno");
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String url = request.getContextPath() + "/board/detail?bno=" + bno;
		
		Board board = dataSource.getBoardList().get(bno);
		board.setWriter(writer);
		board.setTitle(title);
		board.setContent(content);
		
		response.sendRedirect(url);
	}

}
