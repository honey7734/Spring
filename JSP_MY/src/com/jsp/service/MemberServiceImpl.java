/*
 * 	작성자 : 예현의
 * 	작성일 : 2022-05-11
 * 	
 * 	MemberService interface를 구현하는 MemberServiceImpl객체
 * 	
 * 	1. 모든 멤버 객체를 리스트로 받아와 반환해주는 메서드 구현
 * 
 */

package com.jsp.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.dao.MemberDAO;
import com.jsp.dao.MemberDAOImpl;
import com.jsp.datasource.OracleMybatisSqlSessionFactory;
import com.jsp.dto.MemberVO;

public class MemberServiceImpl implements MemberService{
	
	private SqlSessionFactory sqlSessionFactory = new OracleMybatisSqlSessionFactory();
	
	private MemberDAO memberDAO = new MemberDAOImpl();
	
	
	//1. 모든 멤버 객체를 리스트로 받아와 반환해주는 메서드 구현
	@Override
	public List<MemberVO> getMemberList() throws Exception {
		// 오토 커밋 해제
		SqlSession session = sqlSessionFactory.openSession(false);
		List<MemberVO> memberList = null;
		
		try {
			// 모든 회원 정보에 대한 list를 가져온다
			memberList = memberDAO.selectMemberList(session);
			
			//에러가 발생하지 않았으면 commit
			session.commit();
		} catch (Exception e) {
			//Exception이 발생하였을 경우 rollback
			session.rollback();
			//Exception을 console창에 출력
			e.printStackTrace();
			//Exception을 전달
			throw e;
		}finally {
			if(session!=null) session.close();
		}
		
		//에러가 발생시 null이 반환된다
		return memberList;
	}

	//1-1. overloading : Criteria객체를 통해 일정 멤버리스트를 가져오는 기능
	@Override
	public List<MemberVO> getMemberList(Criteria cri) throws Exception {
		// 오토 커밋 해제
		SqlSession session = sqlSessionFactory.openSession(false);
		List<MemberVO> memberList = null;
				
		try {
			// 모든 회원 정보에 대한 list를 가져온다
			memberList = memberDAO.selectMemberList(session,cri);
			
			//에러가 발생하지 않았으면 commit
			session.commit();
		} catch (Exception e) {
			//Exception이 발생하였을 경우 rollback
			session.rollback();
			//Exception을 console창에 출력
			e.printStackTrace();
			//Exception을 전달
			throw e;
		}finally {
			if(session!=null) session.close();
		}
				
		//에러가 발생시 null이 반환된다
		return memberList;
	}
	
	

}
