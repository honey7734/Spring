package com.jsp.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.MemberRegistCommand;
import com.jsp.controller.HttpRequestParameterAdpter;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberService;

public class MemberRegistAction implements Action {

	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService = memberService;
	}


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/regist_success";
		try {
			request.setCharacterEncoding("utf-8");

			MemberRegistCommand command = HttpRequestParameterAdpter.execute(request, MemberRegistCommand.class);
			
			MemberVO member = command.toMemberVO();
			
			//처리
			memberService.regist(member);
			
		} catch (Exception e) {
			e.printStackTrace();
			
			//exception 처리...
			url = "/member/regist_fail";
		}
		return url;
	}

}
