<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="Header.jsp" %>


    <!-- Start Hero Area -->
    <section id="home" class="hero-area style1">
      
            <div class="container jy" >
                <div class="nav-section">
                    <ul class="icons">
                        <li class="nav-block">
                            <a class="main-icon" href="service.do" id="dog-lab">
                            <img src="resources/images/icon/dog02.png" alt="강아지 안구질환"style="max-width: 80%; margin-top: 5px; margin-bottom:2px;">
                                
                            <span id="nav-text">강아지 안구질환</span>
                            </a>
                        </li>
        
                        <li class="nav-block">
                            <a class="main-icon" href="/cat-lab/" id="cat-lab">
                            <img src="resources/images/icon/cat02.png" alt="고양이 안구질환" style="max-width: 80%; margin-top: 5px; margin-bottom:2px;" >
                                
                            <span id="nav-text">고양이 안구질환</span>
                            </a>
                        </li>
        
                    <li class="nav-block">
                        <a class="main-icon"  href="basic.do" id="product-lab">
                            <img src="resources/images/icon/board02.png"  alt="커뮤니티" style="max-width: 60%; margin-top: 19px; margin-bottom:12px;">
                            <span id="nav-text">커뮤니티</span>
                        </a>
                    </li>
        
                     <li class="nav-block">
                        <a class="main-icon"  href="map.do" id="product-lab">
                            <img src="resources/images/icon/hospital.png" alt="동물병원 찾기" style="max-width: 60%; margin-top: 15px; margin-bottom:16px;">
                            <span id="nav-text">동물병원 찾기</span>
                        </a>
                    </li>
        			<c:choose>
                    <c:when test="${not empty loginMember}">
                        <li class="nav-block">
                            <a class="main-icon" id="webtoon" href="imgView.do" >
                            <img src="resources/images/icon/petcollar02.png" style="max-width: 60%; margin-top: 15px; margin-bottom:16px;">
                            <span id="nav-text">동물등록</span>
                            </a>
                        </li>
        			</c:when>
					</c:choose>   
        		
        
                        <li class="nav-block">
                        <a class="main-icon"  href="kcal.do" id="product-lab">
                            <img src="resources/images/icon/petfood1.png" alt="권장칼로리 계산기" style="max-width: 60%; margin-top: 15px; margin-bottom:16px;">
                            <span id="nav-text">권장칼로리 계산기</span>
                        </a>
                       </li>
                </ul>
                
                </div>

            </div>
  
            
        

        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-image wow fadeInRight" data-wow-delay=".4s" style="text-align: center; padding-left: 80px;">
                    	
                    	<c:choose>
								<c:when test="${empty loginMember or empty fileName}">

									<img src="resources/images/hero/dog1.jpg" alt="#" style="border:3px solid #3b9a9c;">

								</c:when>
								<c:otherwise>
									
									<img alt="프로필 사진" src="<c:url value='/resources/fimages/${fileName}'/>" style="border:3px solid #3b9a9c;"/>

								</c:otherwise>


							</c:choose>
                    	
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-content wow fadeInLeft" data-wow-delay=".3s">
                       
                       
                        <br><br><br>
                        <h5>이름</h5><p>${loginPet.petName}</p><br>
                        <h5>나이</h5><p>${loginPet.petAge}</p><br>
                        <h5>성별</h5><p>${loginPet.petgender}</p><br>
                        <h5>품종</h5><p>품종정보</p><br>
                        
                   <form action="#" method="get" target="_blank" class="trial-form">
                            <input name="email" type="email" placeholder="Your email address">
                            <div class="button">
                                <button type="submit" class="btn">Get Started</button>
                            </div>
                        </form>
                       <!--  <a href="#"  class="glightbox video-button"><i class="lni lni-play"></i>
                        <span class="text">Watch our intro video.</span></a> -->
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
                        
                        
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".2s">
                            <span class="serial">01</span>
                            <h3><a href="service-details.html">강아지 안구질환</a></h3>
                            <p> 강아지 눈 사진으로 안구질환을 확인합니다</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".4s">
                            <span class="serial">02</span>
                            <h3><a href="service-details.html">고양이 안구질환</a></h3>
                            <p> 고양이 눈 사진으로 안구질환을 확인합니다</p>
                            <div class="button">
                                <a href="service-details.html" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".6s">
                            <span class="serial">03</span>
                            <h3><a href="basic.do">커뮤니티</a></h3>
                            <p> 회원들과 소통하는 커뮤니티 게시판입니다</p>
                            <div class="button">
                                <a href="basic.do" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".2s">
                            <span class="serial">04</span>
                            <h3><a href="map.do">동물병원찾기</a></h3>
                            <p> 현재위치를 확인 후 근처 동물병원을 알려줍니다</p>
                            <div class="button">
                                <a href="map.do" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".4s" style="height:351.6px!important;">
                            <span class="serial">05</span>
                            
                            <h3><a>반려동물 등록하기</a></h3>	
                            <p> 로그인 후 사용가능</p>
                            <c:choose>
                            <c:when test="${not empty loginMember}">
                             <div class="button">
                                <a href="imgView.do" class="btn">등록하기</a>
                             </div>
                            </c:when>
                         	</c:choose>   
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".6s">
                            <span class="serial">06</span>
                            <h3><a href="admindoard.do">반려동물 지식정보</a></h3>
                            <p> 반려동물 지식정보를 알려줍니다</p>
                            <div class="button">
                                <a href="admindoard.do" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Services Area -->

    

   

    <!-- Start Call Action Area -->
    <section id="download" class="call-action style2">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 offset-lg-3 col-md-12 col-12">
                    <div class="download">
                        <div class="title">
                            <h3>
                               
                                	생각<br>
                              		생각
                            </h3>
                            <p>생각</p>
                        </div>
                        <ul class="download-link">
                            <li><a href="#"
                                    target="_blank" style="padding:18px 40px;width: auto; text-align: center;">
                                    <span class="main-text">생각생각</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Call Action Area -->


  <%@ include file="Footer.jsp" %>

