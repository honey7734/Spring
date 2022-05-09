<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
@font-face {
    font-family: 'NelnaLizzyChae';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/NelnaLizzyChae.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
body {
	font-family: 'NelnaLizzyChae';
	font-size: 25px;
}
.container{
	margin-top: 40px;
	width: 700px;
}

.btn{
	width: 100px;
	margin: 5px;
	font-size: 25px;
}
textarea{
	width: 650px;
	resize: none;
}

label{
	font-size: 28px;
	display: inline-block;
	width: 70px;
}

.data>label{
	font-size: 28px;
} 

.data>input{
	width: 550px;
	font-size: 28px;
}
h1{
	text-align: center;
}
</style>
</head>
<body>

<div class="container shadow p-4 mb-4 bg-white rounded-lg">
<form action="" method="post">
	<h1>글 수정</h1>
	<div class="d-flex justify-content-around">
		<input class="btn btn-primary btn-sm" type="submit" value="저장">
		<input class="btn btn-danger btn-sm" onclick="location.href='detail?bno=${board.bno}'" type="button" value="취소">
	</div>
	<hr>
	
	<div class="data">
		<label>글 번호 </label>
		<input name="bno" type="text" value="${board.bno }" disabled><br>
	</div>
	
	<div class="data">
		<label>작성자 </label>
		<input name="writer" type="text" value="${board.writer }" ><br>
	</div>

	<div class="data">
		<label>제목</label>
		<input name="title" type="text" value="${board.title }"><br>
	</div>	
	
	내용
	<br>
	<textarea name="content" cols="20" rows="5">${board.content }</textarea>
	<br>
	<p style="color:lightgray; text-align:center;">작성일 : ${board.regDate }</p>
</form>
</div>
</body>
</html>