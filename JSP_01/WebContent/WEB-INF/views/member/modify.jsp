<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="modify" method="post" >
		아이디 : <input type="text" name="id" value="${member.id }"/><br/>
		패스워드 : <input type="password" name="pwd" value="${member.pwd }"/><br/>
		<input type="submit" value="가입" />
	</form>
</body>
</html>