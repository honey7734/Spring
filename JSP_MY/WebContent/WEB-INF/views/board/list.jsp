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
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Member</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

      

    <!-- Main content -->
    
    
    <section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>게시판 목록</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>회원관리
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	목록
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	 
	 
   	<section class="content">
   		<div class="card">
   			<div class="card-header with-border">
   				<button type="button" class="btn btn-primary" onclick="location.href='insert'" >글등록</button>
   				<div id="keyword" class="card-tools" style="width:550px;">
   					 <div class="input-group row">
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  	<select class="form-control col-md-3" name="perPageNum" 
					  			id="perPageNum" onchange="">					  		  		
					  		<option value="10" >정렬개수</option>
					  		<option value="2" >2개씩</option>
					  		<option value="3">3개씩</option>
					  		<option value="5" >5개씩</option>
					  	</select>
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<option value=""  >검색구분</option>
							<option value="i" >아이디</option>
							<option value="n" >이 름</option>
							<option value="p" >전화번호</option>
							<option value="e" >이메일</option>				 									
						</select>
						<!-- keyword -->
   					 	<input  class="form-control" type="text" name="keyword" 
										placeholder="검색어를 입력하세요." value=""/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" 
									id="searchBtn" data-card-widget="search" onclick="">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					<!-- end : search bar -->		
   					 </div>
   				</div>   			
   			</div>
   			<div class="card-body" style="text-align:center;height:80vh;">
    		  <div class="row">
	             <div class="col-sm-12">	
		    		<table class="table table-bordered">
	    				<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회수</th>
						</tr>
		               	<%
		               	int perPageNum = pageMaker.getCri().getPerPageNum();
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
		            
		            
    		     </div> <!-- col-sm-12 -->
    	       </div> <!-- row -->
    		</div> <!-- card-body -->
    		
	     </div>
   	</section>
  </div>
  
    <!-- /.content -->
  <!-- /.content-wrapper -->

<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>

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



</body>
</html>
