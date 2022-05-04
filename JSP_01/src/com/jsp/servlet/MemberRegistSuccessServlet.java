package com.jsp.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dataSource.DataSource;
import com.jsp.vo.Member;

/**
 * Servlet implementation class MemberRegistSuccessServlet
 */
@WebServlet("/member/regist/success")
public class MemberRegistSuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DataSource dataSource = DataSource.getInstance();
		Map<String, Member> memberMap = dataSource.getMemberList();
		String url = request.getContextPath() + "/member/list";
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		Member member = new Member();
		member.setId(id);
		member.setPwd(pwd);
		
		memberMap.put(id, member);
		
		//request.setAttribute("member", member);
		//request.getRequestDispatcher(url).forward(request, response);
		response.sendRedirect(url);
	}

}
