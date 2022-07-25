<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>Sales Dashboard | Dashonic - Admin & Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Pichforest" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/assets/images/favicon.ico">

        <!-- plugin css -->
        <link href="<%=request.getContextPath() %>/resources/assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="<%=request.getContextPath() %>/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="<%=request.getContextPath() %>/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="<%=request.getContextPath() %>/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

    <!-- Begin page -->
    <div id="layout-wrapper">

        
        <header id="page-topbar">
            <div class="navbar-header">
                <div class="d-flex">
                    <!-- LOGO -->
                    <div class="navbar-brand-box">
                        <a href="#" class="logo logo-dark">
                            <span class="logo-sm">
                                <img src="<%=request.getContextPath() %>/resources/assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="<%=request.getContextPath() %>/resources/assets/images/logo-dark.png" alt="" height="22">
                            </span>
                        </a>

                        <a href="index.html" class="logo logo-light">
                            <span class="logo-sm">
                                <img src="<%=request.getContextPath() %>/resources/assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="<%=request.getContextPath() %>/resources/assets/images/logo-light.png" alt="" height="22">
                            </span>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                        <i class="fa fa-fw fa-bars"></i>
                    </button>

                    

                    
                </div>

                <div class="d-flex">
                    <!-- 사용자 프로필 -->

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="rounded-circle header-profile-user" src="<%=request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg"
                            alt="Header Avatar">
                            <span class="ms-2 d-none d-sm-block user-item-desc">
                                <span class="user-name">홍길동 님</span>
                                <span class="user-sub-title">원생</span>
                            </span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end pt-0">
                            <div class="p-3 bg-primary border-bottom">
                                <h6 class="mb-0 text-white">홍길동</h6>
                                <p class="mb-0 font-size-11 text-white-50 fw-semibold">hong123@naver.com</p>
                            </div>
                            <a class="dropdown-item" href="auth-lockscreen-basic.html"><i class="mdi mdi-lock text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Lock screen</span></a>
                            <a class="dropdown-item" href="auth-signout-basic.html"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Logout</span></a>
                        </div>
                    </div>
                    
                    
                    <!-- 쪽지알림 -->
                    
                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-sm" data-feather="mail"></i>
                            &nbsp;<span class="noti-dot bg-danger"></span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                            aria-labelledby="page-header-notifications-dropdown">
                            <div class="p-3">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h5 class="m-0 font-size-15"> 쪽지알림 </h5>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#!" class="small"> 모두 읽음</a>
                                    </div>
                                </div>
                            </div>
                            <div data-simplebar style="max-height: 250px;">
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <img src="<%=request.getContextPath() %>/resources/assets/images/users/avatar-3.jpg"
                                            class="me-3 rounded-circle avatar-sm" alt="user-pic">
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">Justin Verduzco</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Your task changed an issue from "In Progress" to</p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 1 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <div class="avatar-sm me-3">
                                                <span class="avatar-title bg-primary rounded-circle font-size-16">
                                                    <i class="uil-shopping-basket"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">New order has been placed</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Open the order confirmation or shipment confirmation.</p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 5 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                

                                
                            </div>
                            <div class="p-2 border-top d-grid">
                                <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                                    <i class="uil-arrow-circle-right me-1"></i> <span>View More..</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    
                    <!-- 로그아웃 버튼 -->
                    
                     <div class="d-inline-block">
                       <button type="button" class="btn header-item">
                            <i class="icon-sm" data-feather="log-out"></i>
                        </button>
                    </div>
                </div>
            </div>
        </header>
        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="#" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="<%=request.getContextPath() %>/resources/assets/images/logo-sm.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="<%=request.getContextPath() %>/resources/assets/images/logo-dark.png" alt="" height="22">
                    </span>
                </a>

                <a href="#" class="logo logo-light">
                    <span class="logo-lg">
                        <img src="<%=request.getContextPath() %>/resources/assets/images/logo-light.png" alt="" height="22">
                    </span>
                    <span class="logo-sm">
                        <img src="<%=request.getContextPath() %>/resources/assets/images/logo-sm-light.png" alt="" height="22">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

            <div data-simplebar class="sidebar-menu-scroll">

                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        <li>
                            <a href="#">
                                <i class="icon nav-icon" data-feather="home"></i>
                                <span class="menu-item">Home</span>
                            </a>
                        </li>

                        <li>
                            <a href="javascript: void(0);" class="has-arrow">
                                <i class="icon nav-icon" data-feather="user"></i>
                                <span class="menu-item">마이페이지</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="#">개인정보</a></li>
                                <li><a href="#">출결조회</a></li>
                                <li><a href="#">성적관리</a></li>
                                <li><a href="#">상담관리</a></li>
                                <li><a href="#">학습계획표</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="#">
                                <i class="icon nav-icon" data-feather="archive"></i>
                                <span class="menu-item">자료실</span>
                            </a>
                        </li>

                       <li>
                            <a href="javascript: void(0);" class="has-arrow">
                                <i class="icon nav-icon" data-feather="book-open"></i>
                                <span class="menu-item">수업관리</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="#">과제관리</a></li>
                                <li><a href="#">시험관리</a></li>
                                <li><a href="#">오답노트</a></li>
                                <li><a href="#">수업신청</a></li>
                                <li><a href="#">수업후기</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="#">
                                <i class="icon nav-icon" data-feather="mail"></i>
                                <span class="menu-item" >쪽지함</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <i class="icon nav-icon" data-feather="bell"></i>
                                <span class="menu-item" >공지사항</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <i class="icon nav-icon" data-feather="message-circle"></i>
                                <span class="menu-item" >질문게시판</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <i class="icon nav-icon" data-feather="tag"></i>
                                <span class="menu-item" >건의사항</span>
                            </a>
                        </li>

                        

                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->

        

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    

                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <footer class="footer" style="height: 130px;">
                 <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-9">
                           <span style="color: red;">개인정보처리방침</span>&nbsp;&nbsp;&nbsp;이메일 수집거부
                        </div>
                        <div class="col-sm-3">
                                                            원장 : 강동주
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-9">
                                                     주소 : 대전광역시 중구 계룡로 846, 3~4층
                        </div>
                        <div class="col-sm-3">
                                                     대표전화 : 042-1111-1111
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-9">
                                                     기관명 : 알파고(AlphaGo)
                        </div>
                        <div class="col-sm-3">
                                                     사업자등록번호 : 123-45-678910
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-9">
                            COPYRIGHT &copy; 2022대덕인재개발원 18기 ALL RIGHTS RESERVED
                        </div>
                        <div class="col-sm-3">
                                                        팩스 : 070-8731-3123
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->

    <!-- JAVASCRIPT -->
    <script src="<%=request.getContextPath() %>/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/assets/libs/metismenujs/metismenujs.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/assets/libs/feather-icons/feather.min.js"></script>

    <!-- apexcharts -->
    <script src="<%=request.getContextPath() %>/resources/assets/libs/apexcharts/apexcharts.min.js"></script>

    <!-- Vector map-->
    <script src="<%=request.getContextPath() %>/resources/assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/assets/libs/jsvectormap/maps/world-merc.js"></script>

    <script src="<%=request.getContextPath() %>/resources/assets/js/pages/dashboard-sales.init.js"></script>

    <script src="<%=request.getContextPath() %>/resources/assets/js/app.js"></script>

    </body>

</html>