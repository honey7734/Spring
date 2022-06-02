package com.jsp.action.board;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.SearchCriteria;
import com.jsp.command.SearchCriteriaCommand;
import com.jsp.controller.HttpRequestParameterAdpter;
import com.jsp.service.BoardService;

public class BoardListAction implements Action {

	private BoardService boardService;
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) 
				throws Exception {
		String url = "/board/list";
		
		try {
			SearchCriteriaCommand command 
			= HttpRequestParameterAdpter.execute(request, SearchCriteriaCommand.class);
			
			SearchCriteria cri = command.toSearchCriteria();
			
			Map<String, Object> dataMap = boardService.getBoardList(cri);
			request.setAttribute("dataMap", dataMap);
			
		} catch (Exception e) {
			e.printStackTrace();
//			url = "/error/500.jsp";
			throw e;
		}
		return url;
	}

}
