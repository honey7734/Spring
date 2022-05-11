/*	
 	작성자 : 예현의
	작성일 : 2022-05-11
	
	MemberDAO를 만들기 위한 interface
	
	1. member의 전체리스트를 가져오는 메서드 구현을위한 interface
	
*/
package com.jsp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;

public interface MemberDAO {
	
	//1. member의 전체리스트를 가져오는 메서드 구현을위한 interface
	List<MemberVO> selectMemberList(SqlSession session) throws Exception;
	//1-1. overloading : Criteria객체를 통해 일정 멤버리스트를 가져오는 메서드 구현을 위한 interface
	List<MemberVO> selectMemberList(SqlSession session, Criteria cri) throws Exception;

}
