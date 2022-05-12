package com.jsp.service;

import java.util.List;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.dto.BoardVO;

public interface BoardService {

	List<BoardVO> getBoardList() throws Exception;
	List<BoardVO> getBoardList(Criteria cri) throws Exception;
	
	Map<String, Object> getBoardListForPage(Criteria cri) throws Exception;
}
