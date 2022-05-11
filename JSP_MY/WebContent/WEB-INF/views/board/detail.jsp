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
h1{
	text-align: center;
}
h2{
	border: 1px solid lightgray;
	padding: 5px;
}
#content{
	border: 1px solid lightgray;
	padding: 5px;
	height: 300px;
}
#detail{
	text-align: center;
}
</style>
</head>
<body>

<div class="container shadow p-4 mb-4 bg-white rounded-lg">
	<h1>글 상세정보</h1>
	<div class="d-flex justify-content-end">
		<input class="btn btn-primary btn-sm" onclick="location.href='modify?bno=${board.bno}'" type="button" value="수정">
		<input class="btn btn-danger btn-sm" onclick="location.href='remove?bno=${board.bno}'" type="button" value="삭제">
		<input class="btn btn-dark btn-sm" onclick="location.href='list'" type="button" value="목록">	
	</div>
	<hr>
	<h2 class="rounded-lg">${board.title }</h2>
	<p id="content" class="rounded-lg">${board.content }</p>
	<p id="detail" style="color: gray;">글번호 : ${board.bno } | 조회수 : ${board.viewCnt } | 게시일 : ${board.regDate }</p>
</div>
	
</body>
</html>