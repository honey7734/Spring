/*
 * 작성자 : 예현의
 * 작성일 : 2022-05-10
 * 
 * OracleMybatisSqlSessionFactory의 단위테스트 용도
 * 
 * 1. sqlSessionFactory.openSession()이 notNull인지 테스트
 * 
 * 2. session에 모든 Mapper가 제대로 등록되어 있는지 테스트
 * 		(현재  namespace를 Member-Mapper로 가지는 mapper에 id가 selectMemberList인 select만 존재)
 * 
 * 3. Member-Mapper.selectMemberList가 DB에 있는 member의 정보를 모두 가져오는지를 테스트
 * 
 */

package com.jsp.datasource;

import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.jsp.dto.MemberVO;

public class TestOracleMyBatisSqlSessionFactory {
	private OracleMybatisSqlSessionFactory sqlSessionFactory
		= new OracleMybatisSqlSessionFactory();
	
	private SqlSession session;
	
	@Before
	public void init() throws Exception{
		session = sqlSessionFactory.openSession();
	}
	
	
	//1. sqlSessionFactory.openSession()이 notNull인지 테스트
	@Test
	public void testSqlSessionFactory() throws Exception{
		Assert.assertNotNull(sqlSessionFactory);
	}
	
	
	//2. session에 모든 Mapper가 제대로 등록되어 있는지 테스트
	@Test
	public void testSqlSession() throws Exception{
		Collection<String> mapNames= 
				(Collection<String>)session.getConfiguration().getMappedStatementNames();
		
		Assert.assertTrue(mapNames.contains("Member-Mapper.selectMemberList"));
	}
	
	//3. Member-Mapper.selectMemberList가 DB에 있는 member의 정보를 모두 가져오는지를 테스트
	@Test
	public void testMemberList() throws SQLException{
		List<MemberVO> memberList = session.selectList("Member-Mapper.selectMemberList");

		Assert.assertEquals(7, memberList.size());
	}

	@After
	public void close() throws Exception{
		if(session != null) session.close();
	}
	
	
}
