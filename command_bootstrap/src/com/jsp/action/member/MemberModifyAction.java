package com.jsp.action.member;

import java.io.File;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import com.jsp.action.Action;
import com.jsp.controller.FileUploadResolver;
import com.jsp.controller.GetUploadPath;
import com.jsp.dto.MemberVO;
import com.jsp.exception.NotMultipartFormDataException;
import com.jsp.service.MemberService;
import com.jsp.service.MultipartHttpServletRequsetParser;

public class MemberModifyAction implements Action {

	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500;		 // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1;	 // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		String url = "/member/list";

		MultipartHttpServletRequsetParser multi = new MultipartHttpServletRequsetParser(request, MEMORY_THRESHOLD, MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		
		String id = multi.getParameter("id");
		
		MemberVO member = memberService.getMember(id);
		
		member.setId("수정해 보았다");
		
		memberService.modify(member);
		
		
		System.out.println("성공");
		
		/*
		 * String uploadFileName;
		 * 
		 * try { // 1. request 변환 MultipartHttpServletRequsetParser multi = new
		 * MultipartHttpServletRequsetParser(request, MEMORY_THRESHOLD, MAX_FILE_SIZE,
		 * MAX_REQUEST_SIZE);
		 * 
		 * 
		 * String id = multi.getParameter("id"); String pwd = multi.getParameter("pwd");
		 * String name = multi.getParameter("name"); String authority =
		 * multi.getParameter("authority"); String email = multi.getParameter("email");
		 * String phone = multi.getParameter("phone");
		 * 
		 * MemberVO member = memberService.getMember(id); url =
		 * "/member/detail.do?id="+id ;
		 * 
		 * member.setId(id); member.setPwd(pwd); member.setName(name);
		 * member.setAuthority(authority); member.setEmail(email);
		 * member.setPhone(phone);
		 * 
		 * 
		 * // 2. 저장할 경로 String uploadPath =
		 * GetUploadPath.getUploadPath("member.picture.upload");
		 * 
		 * //새로운 파일 업로드 if("1".equals(request.getAttribute("uploadPicture"))) { // 3.
		 * 업로드된 이미지 저장 FileItem[] items = multi.getFileItems("inputFile"); List<File>
		 * uploadFiles = FileUploadResolver.fileUpload(items, uploadPath);
		 * 
		 * uploadFileName = uploadFiles.get(0).getName();
		 * 
		 * // 4. 이전 이미지 삭제 File oldFile = new File(uploadPath + File.separator +
		 * member.getPicture()); if(oldFile.exists()) { oldFile.delete(); }
		 * 
		 * member.setPicture(uploadFileName); }
		 * 
		 * memberService.modify(member);
		 * 
		 * } catch (NotMultipartFormDataException e) {
		 * response.sendError(response.SC_BAD_REQUEST); // 400 } catch(Exception e) {
		 * e.printStackTrace(); response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		 * // 500 }
		 */
		
		
		
		
		
		
		
		return url;
	}

}
