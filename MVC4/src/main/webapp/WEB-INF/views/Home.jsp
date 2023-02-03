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
                            <img src="resources/images/icon/board02.png"  alt="커뮤니티" style="max-width: 60%; margin-top: 15px; margin-bottom:16px;">
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
                        <a class="main-icon"  href="basic.do" id="product-lab">
                            <img src="resources/images/icon/healthcare.png" alt="반려동물 보험" style="max-width: 60%; margin-top: 15px; margin-bottom:16px;">
                            <span id="nav-text">반려동물 보험</span>
                        </a>
                       </li>
                </ul>
                
                </div>

            </div>
            
        

        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-image wow fadeInRight" data-wow-delay=".4s" style="text-align: center;">
                    	
                    	<c:choose>
								<c:when test="${empty loginMember or empty fileName}">

									<img src="resources/images/hero/dog1.jpg" alt="#" style="border:5px solid #3b9a9c;">

								</c:when>
								<c:otherwise>
									
									<img alt="프로필 사진" src="<c:url value='/resources/fimages/${fileName}'/>" style="border:3px solid #3b9a9c;"/>

								</c:otherwise>


							</c:choose>
                    	
                        
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
                        
                        
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".2s">
                            <span class="serial">01</span>
                            <h3><a href="service-details.html">강아지 안구질환</a></h3>
                           
                            <div class="button">
                                <a href="service-details.html" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".4s">
                            <span class="serial">02</span>
                            <h3><a href="service-details.html">고양이 안구질환</a></h3>
                            
                            <div class="button">
                                <a href="service-details.html" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".6s">
                            <span class="serial">03</span>
                            <h3><a href="service-details.html">커뮤니티</a></h3>
                            
                            <div class="button">
                                <a href="basic.do" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".2s">
                            <span class="serial">04</span>
                            <h3><a href="map.do">동물병원찾기</a></h3>
                            
                            <div class="button">
                                <a href="map.do" class="btn">자세히보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-service wow fadeInUp" data-wow-delay=".4s">
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
                            <h3><a href="service-details.html">반려동물 보험</a></h3>
                            
                            <div class="button">
                                <a href="service-details.html" class="btn">자세히보기</a>
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
                                <a href="Home.do">
                                    <img src="resources/images/logo/logo8.png" >
                                </a>
                            </div>
                            
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
            append: " ",
        });
        cu.start();
    </script>
</body>

</html>
=======
  <%@ include file="Footer.jsp" %>
>>>>>>> branch 'master' of https://github.com/wldus1008/apatch-dogcat.git
