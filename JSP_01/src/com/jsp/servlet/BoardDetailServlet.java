package com.jsp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dataSource.DataSource;
import com.jsp.vo.Board;

/**
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/board/detail")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DataSource dataSource = DataSource.getInstance();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/board/detail.jsp";
		String bno = request.getParameter("bno");
		Board board = dataSource.getBoardList().get(bno);

		String page = request.getParameter("page");
		
		//조회수 list에서 온 detail이라면 조회수 1 up
		if(page != null && "list".equals(page)) board.setViewCnt(board.getViewCnt()+1);
		
		
		
		request.setAttribute("board", board);
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}


}
