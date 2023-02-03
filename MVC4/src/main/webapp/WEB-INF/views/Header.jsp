<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Apatch DogCat</title>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.png" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"  rel="stylesheet">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="/resources/css/animate.css" />
    <link rel="stylesheet" href="/resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="/resources/css/glightbox.min.css" />
    <link rel="stylesheet" href="/resources/css/main.css" />
	<script src="/resources/smarteditor/js/HuskyEZCreator.js" ></script>








  <style>
        @media (min-width: 720px)
         {
            .nav-section{
                display: none;
            } 
        }
        
        .nav-section {
                max-width: 600px;
                padding: 0px 10px;
                margin-top: 50px;
         }
       
         ul.icons {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            grid-column-gap: 15px;
            grid-row-gap: 20px;
            
        }
       
        
        .main-icon{
            background-color: blanchedalmond;
            text-align: center;
            border-radius: 20px;
            color: black;
        }

	 @media (min-width: 720px)
         {
            .HH{
                display: none;
            } 
        }
	
   
    </style>


</head>

<body>
 <!-- Preloader-->
    <div id="preloader">
        <div class="appmeet-load"></div>
    </div>

    <!-- Start Header Area -->
    <header class="header navbar-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="nav-inner">
                        <!-- Start Navbar -->
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand style3" href="Home.do">
                                <img src="resources/images/logo/logo7.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a href="Home.do" class="active" aria-label="Toggle navigation">Home</a>
                                    </li>
                            
                       
                		 
                            <c:choose>
								<c:when test="${empty loginMember}">

									 <li class="nav-item HH">
										<a href="${cpath}/login.do" class="btn">로그인</a>
									 </li>
									 <li class="nav-item HH">
										<a href="${cpath}/register.do" class="btn">회원가입</a>
									 </li>

								</c:when>
								<c:otherwise>
															
									<li class="nav-item HH">
										<a href="${cpath}/Logout.do" class="btn">로그아웃</a>
									</li>

								</c:otherwise>

							</c:choose>
                           
                               
                                    
                                    
                                    
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">안구질환 확인</a>
                                        <ul class="sub-menu collapse menu-left" id="submenu-1-1">
                                            <li class="nav-item"><a href="goService.do">강아지 안구질환</a>
                                            </li>

                                            <li class="nav-item"><a href="service-details.html">고양이 안구질환</a></li>

                                            <li class="nav-item"><a href="#">반려묘 피부질환</a></li>

                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-2" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">커뮤니티</a>
                                        <ul class="sub-menu collapse menu-left" id="submenu-1-2">
                                            <li class="nav-item"><a href="basic.do">게시판</a>
                                            </li>

                                            <li class="nav-item"><a href="adminboard.do">반려동물 지식정보</a>

                                            <li class="nav-item"><a href="#">아직 없음</a>

                                            </li>
                                        </ul>
                                    </li>
                                   
                                    <c:choose>
                                    <c:when test="${not empty loginMember}">
                                                  
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">마이펫</a>
                                        <ul class="sub-menu collapse menu-left" id="submenu-1-3">
                                            <li class="nav-item"><a href="imgView.do">반려동물등록</a></li>
                                            <li class="nav-item"><a href="calendar.do/${loginMember.getMemNo()}">캘린더</a></li>
                                            <li class="nav-item"><a href="#">아직없음</a></li>
                                            
                                        </ul>
                                    </li>
                                 </c:when>
						         </c:choose>    
                                    
                                    <li class="nav-item">
                                        <a href="map.do" aria-label="Toggle navigation">동물병원찾기</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" aria-label="Toggle navigation">아직 없음</a>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->




							<c:choose>
								<c:when test="${empty loginMember}">

									<div class="button add-list-button">
										<a href="${cpath}/login.do" class="btn">로그인</a>
									</div>
									<div class="button add-list-button">
										<a href="${cpath}/register.do" class="btn">회원가입</a>
									</div>

								</c:when>
								<c:otherwise>
									
									<a href="${cpath}/mypage.do" style="color:#3b9a9c;">${loginMember.memName}님 환영합니다</a> 
									<div class="button add-list-button">
										<a href="${cpath}/Logout.do" class="btn">로그아웃</a>
									</div>

								</c:otherwise>

							</c:choose>


						</nav>
                        <!-- End Navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    <!-- End Header Area -->

