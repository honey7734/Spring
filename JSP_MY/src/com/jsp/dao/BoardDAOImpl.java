package com.jsp.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.jsp.command.Criteria;
import com.jsp.dto.BoardVO;

public class BoardDAOImpl implements BoardDAO{

	@Override
	public List<BoardVO> selectBoardList(SqlSession session) throws Exception {
		List<BoardVO> boardList = session.selectList("Board-Mapper.selectBoardList");
		return boardList;
	}

	@Override
	public List<BoardVO> selectBoardList(SqlSession session, Criteria cri) throws Exception {
		// 가져오기 시작할 rowNum 값
		int offset = cri.getStartRowNum();
		
		// 가져올 데이터 갯수를 지정한 값
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
				
		List<BoardVO> boardList = session.selectList("Board-Mapper.selectBoardList", null, rowBounds);
				
		return boardList;
	}

	@Override
	public int selectBoardListCount(SqlSession session) throws Exception {
		int count = session.selectOne("Board-Mapper.selectBoardListCount");
		return count;
	}
	
}
