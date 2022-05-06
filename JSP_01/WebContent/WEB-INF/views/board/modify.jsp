<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
	<h1>글 수정</h1>
	<input type="submit" value="저장">
	<input onclick="location.href='detail?bno=${board.bno}'" type="button" value="취소">
	<hr>
	
	글 번호 : <input name="bno" type="text" value="${board.bno }" disabled><br>
	작성자 : <input name="writer" type="text" value="${board.writer }" ><br>
	제목 : <input name="title" type="text" value="${board.title }"><br>
	내용<br>
	<textarea name="content" cols="20" rows="5">${board.content }</textarea>
	<br>
	작성일 : ${board.regDate }
</form>
</body>
</html>