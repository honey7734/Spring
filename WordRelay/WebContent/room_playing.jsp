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
h1, #ctr, .col{
	text-align: center;
}
#form_div{
	box-shadow: rgba(0, 0, 0, 0.06) 0px 2px 4px 2px inset;
}

p{
	font-weight: bold;
}
.userBox{
	font-size: 2em;
}
.userBox>.container{
	box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
}
</style>

</head>

<body class="hold-transition sidebar-mini">



<div class="container shadow p-4 mt-4 mb-4 bg-white rounded">

	<div class="row mb-4">
		<div class="col-sm-2">
			<a href="<%=request.getContextPath()%>/main.jsp">
				<i class='fas fa-arrow-circle-left' style='font-size:20px'>&nbsp;뒤로가기</i>
			</a>
		</div>
		<div class="col-sm-10">
			<!-- <p>대기실</p> -->
		</div>
	</div>
	<div class="row">
		<div class="col">0</div>
		<div class="col">스겜ㄱㄱ?</div>
		<div class="col">
			<span class="text-secondary mr-1">
				3/3
			</span>
		</div>
		<div class="col">
			<a href="#" class="text-muted">
				<span class="badge bg-secondary">게임중</span>
			</a>
		</div>
		
	</div>


	<div id="form_div" class="container p-4 mt-4 mb-4 bg-white">
		<div class="form-group">
		  <div id="ctr" class="mb-4">
			  	<p><span class="text-primary" style="font-size: 1.5em;">User</span>님 단어를 입력해주세요</p>
		  </div>
		  <input type="text" class="form-control" id="usr" placeholder="차" value="" readonly>
		</div>
		<div class="progress">
			<div class="progress-bar bg-primary progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
			</div>
		</div>	
	</div>
	
	<div class="row mb-4">
		<div class="col">
			<img src="https://img.icons8.com/material/24/dc3545/give-way--v1.png"/>
		</div>
		<div class="col">
			<!-- <img src="https://img.icons8.com/material/24/dc3545/give-way--v1.png"/> -->
		</div>
		<div class="col">
			<!-- <img src="https://img.icons8.com/material/24/dc3545/give-way--v1.png"/> -->
		</div>
	</div>
	
	<div class="row">
	  <div class="col userBox">
	  	<img src="https://img.icons8.com/external-kiranshastry-solid-kiranshastry/100/343a40/external-user-interface-kiranshastry-solid-kiranshastry-1.png"/>
	  	<div class="container p-4 mb-4 bg-primary rounded-lg">
	  	홍길동
	  	<p style="font-size: 20px;">000점</p>
	  	</div>
	  </div>
	  <div class="col userBox">
	  	<img src="https://img.icons8.com/external-kiranshastry-solid-kiranshastry/100/343a40/external-user-interface-kiranshastry-solid-kiranshastry-1.png"/>
	  	<div class="container p-4 mb-4 bg-primary rounded-lg">
	  	이몽룡
	  	<p style="font-size: 20px;">000점</p>
	  	</div>
	  </div>
	  <div class="col userBox">
	  	<img src="https://img.icons8.com/external-kiranshastry-solid-kiranshastry/100/343a40/external-user-interface-kiranshastry-solid-kiranshastry-1.png"/>
	  	<div class="container p-4 mb-4 bg-primary rounded-lg">
	  	이순신
	  	<p style="font-size: 20px;">000점</p>
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
</body>
</html>