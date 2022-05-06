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
	font-size: 30px;
}

.container{
	margin-top: 40px;
}
h2{
	font-size: 50px;
	text-align: center;
	margin-bottom: 30px;
}
.btn{
	width: 100px;
	font-size: 25px;
}
textarea {
	resize: none;
}
.container{
	width: 700px;
}
.form-control{
	font-size: 25px;
}
</style>
</head>
<body>
<form action="" method="post">
<div class="container shadow p-4 mb-4 bg-white rounded-lg">
	<h2>새 게시글 작성</h2>
	<div class="d-flex justify-content-around">
		<input type="submit" value="작성" class="btn btn-primary  float-right">
		&nbsp;&nbsp;
		<input onclick="location.href='list'" type="button" value="취소" class="btn btn-secondary ">
	</div>
	<hr>
	
	<div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">
        	<img src="https://img.icons8.com/ios-glyphs/30/000000/user--v1.png"/>
        </span>
      </div>
		<input name="writer" type="text" value="${board.writer }" class="form-control" placeholder="작성자를 입력해주세요" >
    </div>
    
	<div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">
        	<img src="https://img.icons8.com/ios-glyphs/30/000000/pencil--v1.png"/>
        </span>
      </div>
		<input name="title" type="text" value="${board.title }" class="form-control" placeholder="제목를 입력해주세요" >
    </div>

	<div class="d-flex justify-content-center">
		<textarea name="content" cols="60" rows="5" placeholder="내용을 입력해주세요">${board.content }</textarea>
	</div>
</div>
</form>
	
</body>
</html>