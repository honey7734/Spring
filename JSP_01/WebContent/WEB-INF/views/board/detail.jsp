<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글 상세정보</h1>
	<input onclick="location.href='modify?bno=${board.bno}'" type="button" value="수정">
	<input onclick="location.href='remove?bno=${board.bno}'" type="button" value="삭제">
	<input onclick="location.href='list'" type="button" value="목록">	
	<hr>
	<h2>${board.title }</h2>
	<p>${board.content }</p>
	<p style="color: gray;">
		글번호 : ${board.bno } | 조회수 : ${board.viewCnt } | 게시일 : ${board.regDate }
	</p>
	
	
</body>
</html>