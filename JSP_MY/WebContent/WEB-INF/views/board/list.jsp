<%@page import="com.jsp.vo.Board"%>
<%@page import="java.util.List"%>
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
  <script>
	$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
</script>
<style type="text/css">
@font-face {
    font-family: 'NelnaLizzyChae';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/NelnaLizzyChae.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
body {
	font-family: 'NelnaLizzyChae';
}
tr {
	font-size: 1.5em;
}
h1 {
	font-size: 50px;
}
h1:hover {
	font-size: 60px;
	background: linear-gradient(to right top,#ff512f, #dd2476);
    color: transparent;
    -webkit-background-clip: text;
}


</style>
</head>
<body>
<div class="container shadow p-4 mb-4 bg-white rounded-lg" style="margin-top: 30px;">
	<h1 style="text-align: center; margin: 30px;">게시판 목록</h1>
	<input onclick="location.href='insert'" type="button"  class="btn btn-outline-primary float-right" value="글 작성">
	<br><br>
	<input class="form-control" id="myInput" type="text" placeholder="Search..">
	<br>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<%
			List<Board> list = (List<Board>)request.getAttribute("boardList");
			if(list != null) for(Board board : list){
				pageContext.setAttribute("board", board);
		%>
		<tbody id="myTable">
			<tr style="cursor: pointer;" onclick="location.href='detail?bno=${board.bno }&page=list'">
				<td>${board.title }</td>
				<td>${board.writer }</td>
				<td>${board.viewCnt }</td>
			</tr>	
		</tbody>
		
		<%	
			
			}
		%>
	</table>
	<br>
</div>
</body>
</html>