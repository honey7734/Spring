/*	
 	작성자 : 예현의
	작성일 : 2022-05-11
	
	 interface MemberDAO를  구현한  MemberDAO 클래스
	 (DAO : Database Access Object)
	
	1. member의 전체리스트를 가져오는 메서드
	
*/
package com.jsp.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{

	//1. member의 전체리스트를 가져오는 메서드
	@Override
	public List<MemberVO> selectMemberList(SqlSession session) {
		List<MemberVO> memberList = session.selectList("Member-Mapper.selectMemberList");
		
		return memberList;
	}
	
	//1-1. Criteria객체를 통해 일정 멤버리스트를 가져오는 메서드
	@Override
	public List<MemberVO> selectMemberList(SqlSession session, Criteria cri) throws Exception {
		// 가져오기 시작할 rowNum 값
		int offset = cri.getStartRowNum();
		// 가져올 데이터 갯수를 지정한 값
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<MemberVO> memberList = session.selectList("Member-Mapper.selectMemberList", null, rowBounds);
		
		return memberList;
	}

}
