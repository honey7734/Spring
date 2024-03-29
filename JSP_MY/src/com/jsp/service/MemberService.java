/*
 * 	작성자 : 예현의
 * 	작성일 : 2022-05-11
 * 
 * 	Member에 대한 기능을 구현하는 MemberService 객체를 위한 interface
 * 
 * 	1. MemberList을 가져오는 getMemberList 구현을 위한 interface
 * 
 */

package com.jsp.service;

import java.util.List;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;

public interface MemberService {
	//1. MemberList을 가져오는 getMemberList 구현을 위한 interface
	public List<MemberVO> getMemberList() throws Exception;
	//1-1. overloading : Criteria객체를 통해 일정 멤버리스트를 가져오는 기능 구현을 위한 interface
	public List<MemberVO> getMemberList(Criteria cri) throws Exception;
}
