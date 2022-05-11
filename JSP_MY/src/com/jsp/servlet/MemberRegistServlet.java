package com.jsp.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.vo.Member;

/**
 * Servlet implementation class Member
 */
@WebServlet("/member/regist")
public class MemberRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/member/regist.jsp";
		request.getRequestDispatcher(url).forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//입력
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String url = request.getContextPath() + "/member/regist/success?id=" + id + "&pwd=" + pwd ;
		
		
		//처리
		Member member = new Member();
		member.setId(id);
		member.setPwd(pwd);
		
		//출력
		//request.setAttribute("member", member);
		System.out.println(member);
		
		response.sendRedirect(url);
	}

}
