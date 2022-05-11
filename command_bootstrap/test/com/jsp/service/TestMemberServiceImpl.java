/*
 * 	작성자 : 예현의
 * 	작성일 : 2022-05-11
 * 	
 * 	MemberServiceImpl 객체를 테스트하기 위한 class
 * 
 * 	1. getMemberList메서드가 모든 멤버의 정보를 가져오는지 갯수로 테스트
 */
package com.jsp.service;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import com.jsp.dto.MemberVO;

public class TestMemberServiceImpl {
	private MemberService service = new MemberServiceImpl();
	
	//1. getMemberList메서드가 모든 멤버의 정보를 가져오는지 갯수로 테스트
	@Test
	public void testGetMemberList() throws Exception{
		List<MemberVO> memberList = service.getMemberList();
		
		Assert.assertEquals(7, memberList.size());
	}
}
