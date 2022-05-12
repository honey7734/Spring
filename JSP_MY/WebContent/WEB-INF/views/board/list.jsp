<%@page import="com.jsp.command.PageMaker"%>
<%@page import="java.util.Map"%>
<%@page import="com.jsp.dto.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Map<String, Object> dataMap = (Map<String, Object>)request.getAttribute("dataMap");
	List<BoardVO> list = (List<BoardVO>)dataMap.get("boardList");
	PageMaker pageMaker = (PageMaker)dataMap.get("pageMaker");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
 <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">


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


</style>
</head>
<body>
<div class="container shadow p-4 mb-4 bg-white rounded-lg" style="margin-top: 30px;">
	<h1 style="text-align: center; margin: 30px;">자유 게시판</h1>
	<!-- sort num -->
	<%
	int perPageNum = pageMaker.getCri().getPerPageNum();
	%>
	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" >					  		  		
		<option value="10" <%=perPageNum == 10 ? "selected" : "" %>>정렬개수</option>
		<option value="2" <%=perPageNum == 2 ? "selected" : "" %>>2개씩</option>
		<option value="3" <%=perPageNum == 3 ? "selected" : "" %>>3개씩</option>
		<option value="5" <%=perPageNum == 5 ? "selected" : "" %>>5개씩</option>
	</select>
	<input onclick="location.href='insert'" type="button"  class="btn btn-outline-primary float-right" value="글 작성">
	<br><br>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<%
			for(BoardVO board : list){
				pageContext.setAttribute("board", board);
		%>
		<tbody id="myTable">
			<tr style="cursor: pointer;" onclick="location.href='detail?bno=${board.bno }&page=list'">
				<td>${board.bno }</td>
				<td>${board.title }</td>
				<td>${board.writer }</td>
				<td>${board.viewcnt }</td>
			</tr>	
		</tbody>
		
		<%	
			}
		%>
	</table>
	<br>
	
	<!-- 메뉴바 -->
	<nav aria-label="Navigation">
		<ul class="pagination justify-content-center m-0">
			<li class="page-item">
				<a class="page-link" href="javascript:list_go(1);">
					<i class="fas fa-angle-double-left"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="">
					<i class="fas fa-angle-left"></i>
				</a>						
			</li>
			<%
				int pageNum = pageMaker.getCri().getPage();
				int startPage = pageMaker.getStartPage();
				int endPage = pageMaker.getEndPage();
				
				for(int i = startPage; i <= endPage; i++){
				%>
				
				<li class="page-item <%=(i == pageNum)? "active" : "" %>">
					<a class="page-link" href="javascript:list_go(<%=i%>);"><%=i %></a>
				</li>	
				
				<%
				}
			
			%>			
						
			<li class="page-item">
				<a class="page-link" href="">
					<i class="fas fa-angle-right"></i>
				</a>						
			</li>
			<li class="page-item">
				<a class="page-link" href="">
					<i class="fas fa-angle-double-right"></i>
				</a>						
			</li>
		</ul>
	</nav>
	
	
	<form id="myForm">
		<input type="hidden" name="page" value="">
		<input type="hidden" name="perPageNum" value="">
	</form>
	
	<script>
		function list_go(page,url) {
			if(!url) url="list";
			var myForm= $('#myForm');
			myForm.find("[name='page']").val(page);
			myForm.find("[name='perPageNum']").val($('#perPageNum').val());

			console.log(page)
			
			myForm.attr({
				action:url,
				method:'get'
			}).submit();
			
		}
	</script>
	
	<!-- jQuery -->
	<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
</div>
</body>
</html>