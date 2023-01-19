<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>


<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Appmeet - Startup, App & SaaS HTML Template.</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.svg" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"  rel="stylesheet">
    

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="resources/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="resources/css/animate.css" />
    <link rel="stylesheet" href="resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="resources/css/glightbox.min.css" />
    <link rel="stylesheet" href="resources/css/main.css" />

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
        .jy{
            margin-bottom: 50px;
        }
        
        .main-icon{
            background-color: blanchedalmond;
            text-align: center;
            border-radius: 20px;
            color: black;
        }

    </style>

</head>

<body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->

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
                            <a class="navbar-brand style3" href="index.html">
                                <img src="resources/images/logo/logo.svg" alt="Logo">
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
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">Services</a>
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
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">Pages</a>
                                        <ul class="sub-menu collapse" id="submenu-1-3">
                                            <li class="nav-item"><a href="imgView.do">반려동물등록</a></li>
                                            <li class="nav-item"><a href="pricing.html">Pricing</a></li>
                                            <li class="nav-item"><a href="faq.html">Faq</a></li>
                                            <li class="nav-item"><a href="login.html">Login</a></li>
                                            <li class="nav-item"><a href="registration.html">Registration</a></li>
                                            <li class="nav-item"><a href="404.html">404 Error</a></li>
                                            <li class="nav-item"><a href="mail-success.html">Mail Success</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#blog" data-bs-toggle="collapse"
                                            data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">Blog</a>
                                        <ul class="sub-menu collapse" id="submenu-1-4">
                                            <li class="nav-item"><a href="blog-grid-sidebar.html">Blog Grid Sidebar</a>
                                            </li>
                                            <li class="nav-item"><a href="blog-single.html">Blog Single</a></li>
                                            <li class="nav-item"><a href="blog-single-sidebar.html">Blog Single
                                                    Sibebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a href="contact.html" aria-label="Toggle navigation">Contact</a>
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
									
									<span>${loginMember.memName}님 환영합니다</span> 
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

    <!-- Start Hero Area -->
    <section id="home" class="hero-area style1">
      
            <div class="container jy" >
                <div class="nav-section">
                    <ul class="icons">
                        <li class="nav-block">
                            <a class="main-icon" href="/dog-lab/" id="dog-lab">
                            <img src="resources/images/icon/dog01.png" alt="강아지 피부질환">
                                
                            <span id="nav-text">강아지 피부질환</span>
                            </a>
                        </li>
        
                        <li class="nav-block">
                            <a class="main-icon" href="/cat-lab/" id="cat-lab">
                            <img src="resources/images/icon/cat01.png" alt="고양이 피부질환" >
                                
                            <span id="nav-text">고양이 피부질환</span>
                            </a>
                        </li>
        
                    <li class="nav-block">
                        <a class="main-icon"  href="basic.do" id="product-lab">
                            <img src="resources/images/icon/board.png" alt="커뮤니티">
                            <span id="nav-text">커뮤니티</span>
                        </a>
                    </li>
        
                    <li class="nav-block">
                        <a class="main-icon" id="creators" href="https://creators.mypetlife.co.kr">
                            <img src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-creators.png" alt="동물툰" data-lazy-src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-creators.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-creators.png"
                                alt="동물툰"/></noscript>
                            <span id="nav-text">크리에이터즈</span>
                        </a>
                    </li>
        
                        <li class="nav-block">
                            <a class="main-icon" id="webtoon" href="/cbh?utm_source=bemypetlife&amp;utm_medium=icon&amp;utm_campaign=icon-20210827" target="_blank">
                            <img src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-cbh.png" alt="동물등록" data-lazy-src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-cbh.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-cbh.png"
                                alt="동물등록"/></noscript>
                            <span id="nav-text">동물등록</span>
                            </a>
                        </li>
        
                        <li class="nav-block">
                            <a class="main-icon" id="store" href="https://store.bemypet.kr" target="_blank">
                            <img src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-store.png" alt="스토어" data-lazy-src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-store.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://mypetlife.co.kr/wp-content/themes/bemypet-life-childresources/images/front-page/icon-store.png"
                                alt="스토어"/></noscript>
                            <span id="nav-text">스토어</span>
                            </a>
                        </li>
                </ul>
                
                </div>

            </div>
            
        

      
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-image wow fadeInRight" data-wow-delay=".4s">
                        <img src="resources/images/hero/dog1.jpg" alt="#">
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-content wow fadeInLeft" data-wow-delay=".3s">
                        <h1>Get things done by great remote team</h1>
                        <p>We share common trends and strategies for
                            improving your rental income and making sure you stay in high demand.</p>
                        <form action="#" method="get" target="_blank" class="trial-form">
                            <input name="email" type="email" placeholder="Your email address">
                            <div class="button">
                                <button type="submit" class="btn">Get Started</button>
                            </div>
                        </form>
                        <a href="https://www.youtube.com/watch?v=r44RKWyfcFw&fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM"
                            class="glightbox video-button"><i class="lni lni-play"></i><span class="text">Watch our
                                intro video.</span></a>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- End Hero Area -->

    

    <!-- Start Services Area -->
    <section class="services style3 section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h3 class="wow zoomIn" data-wow-delay=".2s">Services</h3>
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">What we offer</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
                            Ipsum available, but the majority have suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".2s">
                            <span class="serial">01</span>
                            <h3><a href="service-details.html">Digital Product Development</a></h3>
                            <p>We dejoy working with discerning clients, people for whom qualuty, service, integrity &
                                aesthetics.</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".4s">
                            <span class="serial">02</span>
                            <h3><a href="service-details.html">General Consulting Process</a></h3>
                            <p>We dejoy working with discerning clients, people for whom qualuty, service, integrity &
                                aesthetics.</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".6s">
                            <span class="serial">03</span>
                            <h3><a href="service-details.html">Web Design & development solutions</a></h3>
                            <p>We dejoy working with discerning clients, people for whom qualuty, service, integrity &
                                aesthetics.</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".2s">
                            <span class="serial">04</span>
                            <h3><a href="service-details.html">Marketing Solutions</a></h3>
                            <p>We dejoy working with discerning clients, people for whom qualuty, service, integrity &
                                aesthetics.</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".4s">
                            <span class="serial">05</span>
                            <h3><a href="service-details.html">Business Analytics</a></h3>
                            <p>We dejoy working with discerning clients, people for whom qualuty, service, integrity &
                                aesthetics.</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".6s">
                            <span class="serial">06</span>
                            <h3><a href="service-details.html">UX & UI Design</a></h3>
                            <p>We dejoy working with discerning clients, people for whom qualuty, service, integrity &
                                aesthetics.</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Services Area -->

    <!-- Start About Us Area -->
    <section id="about" class="about section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="image wow fadeInLeft" data-wow-delay=".3s">
                        <img class="main-image" src="resources/images/about/about-image.png" alt="#">
                        <div class="img2"></div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content wow fadeInRight" data-wow-delay=".5s">
                        <div class="heading">
                            <h2>People choose us because of our service</h2>
                            <p>McKinsey research has shown that 70% of buying experiences are based on how the customer
                                feels they have been treated.</p>
                        </div>
                        <div class="list">
                            <!-- Start Single List -->
                            <div class="single-list">
                                <i class="lni lni-bolt"></i>
                                <h4>Infinite Features</h4>
                                <p>We work on diverse projects for top brands as well as for cool startups.</p>
                            </div>
                            <!-- End Single List -->
                            <!-- Start Single List -->
                            <div class="single-list">
                                <i class="lni lni-grid-alt"></i>
                                <h4>Stunning Design</h4>
                                <p>We work on diverse projects for top brands as well as for cool startups.</p>
                            </div>
                            <!-- End Single List -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End About Area -->

    <!-- Start Achievement Area -->
    <section class="our-achievement section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="single-achievement wow fadeInUp" data-wow-delay=".2s">
                        <div class="achievement-icon">
                            <i class="lni lni-thumbs-up"></i>
                        </div>
                        <h3 class="counter"><span id="secondo1" class="countup" cup-end="100">100</span>%</h3>
                        <p>Satisfaction</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="single-achievement wow fadeInUp" data-wow-delay=".4s">
                        <div class="achievement-icon">
                            <i class="lni lni-users"></i>
                        </div>
                        <h3 class="counter"><span id="secondo2" class="countup" cup-end="120">120</span>K</h3>
                        <p>Happy Clients</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="single-achievement wow fadeInUp" data-wow-delay=".6s">
                        <div class="achievement-icon">
                            <i class="lni lni-investment"></i>
                        </div>
                        <h3 class="counter"><span id="secondo3" class="countup" cup-end="500">500</span>k+</h3>
                        <p>Investments</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="single-achievement wow fadeInUp" data-wow-delay=".6s">
                        <div class="achievement-icon">
                            <i class="lni lni-cup"></i>
                        </div>
                        <h3 class="counter"><span id="secondo3" class="countup" cup-end="50">50</span>+</h3>
                        <p>Winning Award</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Achievement Area -->

    <!-- Start Pricing Table Area -->
    <section id="pricing" class="pricing-table section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h3 class="wow zoomIn" data-wow-delay=".2s">pricing</h3>
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Pricing Plan</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
                            Ipsum available, but the majority have suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Table -->
                    <div class="single-table wow fadeInUp" data-wow-delay=".4s">
                        <!-- Table Head -->
                        <div class="table-head">
                            <h4 class="title">Freelancer</h4>
                            <p>All the basics for starting a new business</p>
                            <div class="price">
                                <h2 class="amount">$24<span class="duration">/mo</span></h2>
                            </div>
                        </div>
                        <!-- End Table Head -->
                        <!-- Start Table Content -->
                        <div class="table-content">
                            <!-- Table List -->
                            <ul class="table-list">
                                <li><i class="lni lni-checkmark-circle"></i> Cras justo odio.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Dapibus ac facilisis in.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Morbi leo risus.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Potenti felis, in cras ligula.</li>
                            </ul>
                            <!-- End Table List -->
                            <div class="button">
                                <a href="javascript:void(0)" class="btn">Buy Freelancer</a>
                            </div>
                        </div>
                        <!-- End Table Content -->
                    </div>
                    <!-- End Single Table-->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Table -->
                    <div class="single-table wow fadeInUp" data-wow-delay=".6s">
                        <!-- Table Head -->
                        <div class="table-head">
                            <h4 class="title">Startup</h4>
                            <p>All the basics for starting a new business</p>
                            <div class="price">
                                <h2 class="amount">$32<span class="duration">/mo</span></h2>
                            </div>
                        </div>
                        <!-- End Table Head -->
                        <!-- Start Table Content -->
                        <div class="table-content">
                            <!-- Table List -->
                            <ul class="table-list">
                                <li><i class="lni lni-checkmark-circle"></i> Cras justo odio.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Dapibus ac facilisis in.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Morbi leo risus.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Potenti felis, in cras ligula.</li>
                            </ul>
                            <!-- End Table List -->
                            <div class="button">
                                <a href="javascript:void(0)" class="btn">Buy Startup</a>
                            </div>
                        </div>
                        <!-- End Table Content -->
                    </div>
                    <!-- End Single Table-->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Table -->
                    <div class="single-table wow fadeInUp" data-wow-delay=".8s">
                        <!-- Table Head -->
                        <div class="table-head">
                            <h4 class="title">Enterprise</h4>
                            <p>All the basics for starting a new business</p>
                            <div class="price">
                                <h2 class="amount">$48<span class="duration">/mo</span></h2>
                            </div>
                        </div>
                        <!-- End Table Head -->
                        <!-- Start Table Content -->
                        <div class="table-content">
                            <!-- Table List -->
                            <ul class="table-list">
                                <li><i class="lni lni-checkmark-circle"></i> Cras justo odio.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Dapibus ac facilisis in.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Morbi leo risus.</li>
                                <li><i class="lni lni-checkmark-circle"></i> Potenti felis, in cras ligula.</li>
                            </ul>
                            <!-- End Table List -->
                            <div class="button">
                                <a href="javascript:void(0)" class="btn">Buy Enterprise</a>
                            </div>
                        </div>
                        <!-- End Table Content -->
                    </div>
                    <!-- End Single Table-->
                </div>
            </div>
        </div>
    </section>
    <!--/ End Pricing Table Area -->

    <!-- Start Call Action Area -->
    <section id="download" class="call-action style2">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 offset-lg-3 col-md-12 col-12">
                    <div class="download">
                        <div class="title">
                            <h3>
                                <span>Get Pro Version!</span>
                                Currently You are using free<br>
                                Lite version of Appmeet
                            </h3>
                            <p>Please, purchase full version of the template to get all pages,
                                features and commercial license.</p>
                        </div>
                        <ul class="download-link">
                            <li><a href="https://graygrids.com/templates/appmeet-startup-app-saas-html-template/"
                                    target="_blank" style="padding:18px 40px;width: auto; text-align: center;">
                                    <span class="main-text">Purchase Now</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Call Action Area -->

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
                                <a href="index.html">
                                    <img src="resources/images/logo/white-logo.svg" alt="#">
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
        <!--/ End Footer Top -->
        <div class="copyright-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="copyright-text">Designed and Developed by <a href="https://wpthemesgrid.com/"
                                rel="nofollow" target="_blank">WpthemesGrid</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ End Footer Area -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/wow.min.js"></script>
    <script src="resources/js/tiny-slider.js"></script>
    <script src="resources/js/glightbox.min.js"></script>
    <script src="resources/js/count-up.min.js"></script>
    <script src="resources/js/imagesloaded.min.js"></script>
    <script src="resources/js/isotope.min.js"></script>
    <script src="resources/js/main.js"></script>
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
            append: " ",
        });
        cu.start();
    </script>
</body>

</html>