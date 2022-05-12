package com.jsp.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.datasource.DataSource;
import com.jsp.vo.Member;

/**
 * Servlet implementation class MemberDetailServlet
 */
@WebServlet("/member/detail")
public class MemberDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DataSource dataSource = DataSource.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/member/detail.jsp";
		String id = request.getParameter("id");
		
		Member member = dataSource.getMemberList().get(id);
		
		request.setAttribute("member", member);
		request.getRequestDispatcher(url).forward(request, response);

	}

	

}
