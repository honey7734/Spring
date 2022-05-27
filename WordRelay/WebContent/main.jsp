<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>끝말잇기</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">


<style type="text/css">
h1, th, td{
	text-align: center;
}
td, span{
 font-size: 1.2em
}
.fa-bookmark{
  text-align:left;
  width: 110px;
}
</style>
</head>

<body class="hold-transition sidebar-mini">



<div class="container shadow p-4 mt-4 mb-4 bg-white">
	<h1 class="mt-4 mb-4 p-4">끝말잇기</h1>
	
	<div class="card">
		<div class="card-header border-0">
			<div class="card-tools">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createRoom">방 생성하기</button>
			</div>
		</div>
		<div class="card-body table-responsive p-0">
			<table class="table table-valign-middle table-hover text-nowrap">
				<thead>
					<tr>
						<th>방번호</th>
						<th>방제목</th>
						<th>인원</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							0
						</td>
						<td>스겜 ㄱㄱ?</td>
						<td>
							<span class="text-success mr-1">
							1/3
							</span>
						</td>
						<td>
							<a href="#" class="text-muted">
								<span class="badge bg-primary">대기중</span>
							</a>
						</td>
					</tr>
					<tr style="background: #dee2e6;">
						<td>
							1
						</td>
						<td>내가 다이김</td>
						<td>
							<span class="text-secondary mr-1">
							3/3
							</span>
						</td>
						<td>
							<a href="#" class="text-muted">
								<span class="badge bg-secondary">게임중</span>
							</a>
						</td>
					</tr>
					<tr>
						<td>
							2
						</td>
						<td>덤벼</td>
						<td>
							<span class="text-success mr-1">
							2/3
							</span>
						</td>
						<td>
							<a href="#" class="text-muted">
								<span class="badge bg-primary">대기중</span>
							</a>
						</td>
					</tr>
					<tr>
						<td>
							3
						</td>
						<td>게임하고 싶어요</td>
						<td>
							<span class="text-secondary mr-1">
							3/3
							</span>
						</td>
						<td>
							<a href="#" class="text-muted">
								<span class="badge bg-primary">대기중</span>
							</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>


<!-- The Modal -->
  <div class="modal fade" id="createRoom">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">새로운 방 생성하기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          
          <div class="card-body login-card-body">
			<form action="#" method="post">
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-bookmark">&nbsp;방제목</span>
						</div>
					</div>
					<input type="text" class="form-control" placeholder="방 제목을  입력해주세요">
				</div>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-bookmark">&nbsp;비밀번호</span>
						</div>
					</div>
					<input type="password" class="form-control" placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="row">
					<div class="col-12">
						<button type="submit" class="btn btn-primary btn-block">생성하기</button>
					</div>
				</div>
			  </form>
			</div>
        </div>
     
      </div>
    </div>
  </div>




<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common -->
<script src="<%=request.getContextPath() %>/resources/js/common.js" ></script>
<script type="text/javascript">
	$('tr').on('click', function() {
		var in_flag = $(this).find('span:eq(1)').hasClass("badge bg-primary");
		var player_count = $(this).find('span:eq(0)')[0].innerText.split('/');
		
		if(in_flag){
			if(player_count[0] < player_count[1]){
				location.href = "<%=request.getContextPath()%>/room.jsp"
			}else{
				alert('인원이 다 찬 방은 들어갈 수 없습니다');
			}			
		}else{
			alert('게임중인 방에는 들어갈 수 없습니다');
			return;
		}
		
	})
</script>
</body>
</html>