/*
 * 	작성자 : 예현의
 * 	작성일 : 2022-05-11
 * 	
 * 	MemberDAOImpl class의 단위 테스트를 위한 class
 * 
 * 	1. selectMemberList메서드가 모든 멤버의 정보를 가져오는지 갯수로 테스트
 */
package com.jsp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.jsp.datasource.OracleMybatisSqlSessionFactory;
import com.jsp.dto.MemberVO;

public class TestMemberDAOImpl {
	
	private SqlSessionFactory factory = new OracleMybatisSqlSessionFactory();
	
	private SqlSession session;
	
	private MemberDAO memberDAO = new MemberDAOImpl();
	
	@Before
	public void init() throws Exception{
		session = factory.openSession();
	}
	
	@After
	public void close() throws Exception{
		if(session != null) session.close();
	}
	
	//1. selectMemberList메서드가 모든 멤버의 정보를 가져오는지 갯수로 테스트
	@Test
	public void testSelectMemberList() throws Exception{
		List<MemberVO> memberList = memberDAO.selectMemberList(session);
		
		Assert.assertEquals(7, memberList.size());
	}
	
}
