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
                                            aria-expanded="false" aria-label="Toggle navigation">피부질환 확인</a>
                                        <ul class="sub-menu collapse" id="submenu-1-1">
                                            <li class="nav-item"><a href="goService.do">반려견 피부질환</a>
                                            </li>
                                            <li class="nav-item"><a href="service-details.html">반려묘 피부질환</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-2" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">커뮤니티</a>
                                        <ul class="sub-menu collapse" id="submenu-1-2">
                                            <li class="nav-item"><a href="basic.do">게시판1</a>
                                            </li>
                                            <li class="nav-item"><a href="portfolio-details.html">게시판2</a>
                                            </li>
                                        </ul>
                                    </li>
                                   
                                    <c:choose>
                                    <c:when test="${not empty loginMember}">
                                                  
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">마이펫</a>
                                        <ul class="sub-menu collapse" id="submenu-1-3">
                                            <li class="nav-item"><a href="imgView.do">반려동물등록</a></li>
                                            <li class="nav-item"><a href="calendar.do/${loginMember.getMemNo()}">캘린더</a></li>
                                            <li class="nav-item"><a href="faq.html">메뉴생각</a></li>
                                            
                                        </ul>
                                    </li>
                                 </c:when>
						         </c:choose>    
                                    
                                    <li class="nav-item">
                                        <a href="map.do" aria-label="Toggle navigation">동물병원찾기</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="contact.html" aria-label="Toggle navigation">반려동물 보험</a>
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
									
									<div style="color:#3b9a9c;">${loginMember.memName}님 환영합니다</div> 
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

      
	<!-- 마이페이지  시작-->
	
	
	<section class = "hero-area style1">
	<div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-image wow fadeInRight" data-wow-delay=".4s" style="text-align: center;">
                    	
                    	<c:choose>
								<c:when test="${empty loginMember or empty fileName}">

									<img src="resources/images/hero/dog1.jpg" alt="#">

								</c:when>
								<c:otherwise>
									
									<img alt="프로필 사진" src="<c:url value='/resources/fimages/${fileName}'/>"/>

								</c:otherwise>


							</c:choose>
                    	
                        
                    </div>
                </div>
                
                
                
                
                
                
    <div class="col-lg-6 col-md-12 col-12">
      <div class="hero-content wow fadeInLeft" data-wow-delay=".3s">
                        
                    
                    
               
    <div class="container">

      <div class="row mb-5 justify-content-center">
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200">
          <form action="${cpath}/memUpdate" class="form-box" method="post" id="mem_Update" name="mem_Update">
         <%--  <input type='hidden' name='memId' value='${loginMember.memId}'> --%>
            <div class="row">
              <div class="col-12 mb-3">
              <label for="memId">아이디</label>
                <input type="text" class="form-control" name="memId" id="memId" value="${loginMember.memId}" readonly>
              </div>
              <div class="col-12 mb-3">
              <label for="memPw">비밀번호</label>
                <input type="password" class="form-control" placeholder="비밀번호" value="${loginMember.memPw}" readonly>
              </div>
              <div class="col-12 mb-3">
              <label for="memPw">새 비밀번호</label>
                <input type="password" class="form-control" placeholder="새 비밀번호"  name="memPw" id="memPw">
              </div>
              <div class="col-12 mb-3">
              <label for="memName">이름</label>
                <input type="text" class="form-control" name="memName" value="${loginMember.memName}" name="memName"  id="memName" >
              </div>
              </div>
              
              
          </form>
        </div>
      </div>
              <div class="button text-center">
                <button class="btn" onclick="Update()">수정하기</button>
                <a href="Home.do" class="btn">홈으로</a>
             </div>
  
    </div>
     
  </div>    
                    
               
                        
                    </div>
                </div>
     </div>
	
	</section>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
				
	<!-- 마이페이지 끝  -->
							
							
		


    <!-- Start Footer Area -->
    <footer class="footer">
        <!-- Start Footer Top -->
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-12">
                        <!-- Single Widget -->
                        <div class="single-footer f-about">
                            <div class="logo">
                                <a href="Home.do">
                                    <img src="resources/images/logo/logo8.png" >
                                </a>
                            </div>
                            <p>Making the world a better place through constructing elegant hierarchies.</p>
                            <ul class="social">
                                <li><a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a></li>
                                <li><a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a></li>
                                <li><a href="javascript:void(0)"><i class="lni lni-instagram"></i></a></li>
                                <li><a href="javascript:void(0)"><i class="lni lni-linkedin-original"></i></a></li>
                                <li><a href="javascript:void(0)"><i class="lni lni-youtube"></i></a></li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->
                    </div>
                    <div class="col-lg-8 col-md-8 col-12">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-12">
                                <!-- Single Widget -->
                                <div class="single-footer f-link">
                                    <h3>Solutions</h3>
                                    <ul>
                                        <li><a href="javascript:void(0)">Marketing</a></li>
                                        <li><a href="javascript:void(0)">Analytics</a></li>
                                        <li><a href="javascript:void(0)">Commerce</a></li>
                                        <li><a href="javascript:void(0)">Insights</a></li>
                                        <li><a href="javascript:void(0)">Promotion</a></li>
                                    </ul>
                                </div>
                                <!-- End Single Widget -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-12">
                                <!-- Single Widget -->
                                <div class="single-footer f-link">
                                    <h3>Support</h3>
                                    <ul>
                                        <li><a href="javascript:void(0)">Pricing</a></li>
                                        <li><a href="javascript:void(0)">Documentation</a></li>
                                        <li><a href="javascript:void(0)">Guides</a></li>
                                        <li><a href="javascript:void(0)">API Status</a></li>
                                        <li><a href="javascript:void(0)">Live Support</a></li>
                                    </ul>
                                </div>
                                <!-- End Single Widget -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-12">
                                <!-- Single Widget -->
                                <div class="single-footer f-link">
                                    <h3>Company</h3>
                                    <ul>
                                        <li><a href="javascript:void(0)">About Us</a></li>
                                        <li><a href="javascript:void(0)">Our Blog</a></li>
                                        <li><a href="javascript:void(0)">Jobs</a></li>
                                        <li><a href="javascript:void(0)">Press</a></li>
                                        <li><a href="javascript:void(0)">Contact Us</a></li>
                                    </ul>
                                </div>
                                <!-- End Single Widget -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-12">
                                <!-- Single Widget -->
                                <div class="single-footer f-link">
                                    <h3>Legal</h3>
                                    <ul>
                                        <li><a href="javascript:void(0)">Terms & Conditions</a></li>
                                        <li><a href="javascript:void(0)">Privacy Policy</a></li>
                                        <li><a href="javascript:void(0)">Catering Services</a></li>
                                        <li><a href="javascript:void(0)">Customer Relations</a></li>
                                        <li><a href="javascript:void(0)">Innovation</a></li>
                                    </ul>
                                </div>
                                <!-- End Single Widget -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </footer>
        <!--/ End Footer Top -->
      
      
    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/wow.min.js"></script>
    <script src="/resources/js/tiny-slider.js"></script>
    <script src="/resources/js/glightbox.min.js"></script>
    <script src="/resources/js/count-up.min.js"></script>
    <script src="/resources/js/imagesloaded.min.js"></script>
    <script src="/resources/js/isotope.min.js"></script>
    <script src="/resources/js/main.js"></script>
    <script type="text/javascript">
        //======== tiny slider
        tns({
            container: '.client-logo-carousel',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 5,
                }
            }
        });

        //========= glightbox
        GLightbox({
            'href': 'https://www.youtube.com/watch?v=r44RKWyfcFw&fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM',
            'type': 'video',
            'source': 'youtube', //vimeo, youtube or local
            'width': 900,
            'autoplayVideos': true,
        });

        //====== counter up 
        var cu = new counterUp({
            start: 0,
            duration: 2000,
            intvalues: true,
            interval: 100,
            append: " "
        });
        cu.start();
        
        
        
        
        
        function Update(){
     	  
     	  var memId = $('#memId').val();
     	  var memPw = $('#memPw').val();
     	  
     	 var memName = $('#memName').val();
     	 
     	 let fData = $("#mem_Update").serialize();
     	 console.log(fData);
     	 $.ajax({
     		     anyne:true,
     	         url : "${cpath}/memUpdate",
     	         type : "post",
     	         // idx, content를 보내줘야함 --> 여러개의 데이터를 보낼때
     	         // json형식으로 보내야함 --> contentType지정, JSON.stringify()로 형식도 바꿈
     	         contentType : "application/json;charset=utf-8",
     	         data :JSON.stringify({
     	        	 "memId" : memId,
     	        	 "memPw" : memPw,
     	        	 "memName" : memName
     	         }), //보내주는 데이터가 있다면
     	         //dataType : "", // 받는 데이터가 있으면
     	         success : function(){
     	        	 console.log("ajax실행");
     	        	 location.href='/index.jsp'
     	         },
     	         error : function(){
     	        	 alert("회원수정 실패!!");
     	        	//console.log(param)
     	         }
     	         
     	      });

        }

        
        
        
        
        
        
        
        
    </script>

</body>
</html>