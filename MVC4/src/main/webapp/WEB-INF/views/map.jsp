<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
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
                                            <li class="nav-item"><a href="pricing.html">캘린더</a></li>
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


      
	<!-- 맵  -->
				
		<div class="container" style = "padding-top: 150px;">
		<div id="map" style="width:100%;height:500px;"></div>
		</div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5fb4ed50272904cd2fbcb3891b674c83&libraries=services"></script>
		<script >
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 10 // 지도의 확대 레벨 
		    }; 
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		// 장소 검색 객체를 생성합니다

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		        console.log(lat);
		        console.log(lon);
		        
				var ps = new kakao.maps.services.Places(); 
				// 키워드로 장소를 검색합니다
				ps.keywordSearch('동물병원', placesSearchCB, {
				    location: new kakao.maps.LatLng(lat, lon)
				}); 
		        
		    	
		        
		        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
		        
		         // 키워드로 장소를 검색합니다
		        // 마커와 인포윈도우를 표시합니다
		        displayMarker(locPosition, message);
		            
		      });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		    
		    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
		        message = 'geolocation을 사용할수 없어요..'
		        
		    displayMarker(locPosition, message);
		}
		
		
		
		
		
		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
		
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({  
		        map: map, 
		        position: locPosition
		    }); 
		    
		    var iwContent = message, // 인포윈도우에 표시할 내용
		        iwRemoveable = true;
		
		    // 인포윈도우를 생성합니다
		    var infowindow = new kakao.maps.InfoWindow({
		        content : iwContent,
		        removable : iwRemoveable
		    });
		    
		    // 인포윈도우를 마커위에 표시합니다 
		    infowindow.open(map, marker);
		    
		    // 지도 중심좌표를 접속위치로 변경합니다
		    map.setCenter(locPosition);      
		}    //키워드부분
		    // 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();
		
		        for (var i=0; i<data.length; i++) {
		            displayMarker_search(data[i]);
		            console.log(data[i]);
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }       
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}
		
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker_search(place) {
		    
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });
		
		    
		    
		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		    	var iwContent = message, // 인포윈도우에 표시할 내용
		        	iwRemoveable = true;
		    	 var infowindow = new kakao.maps.InfoWindow({
				        content : iwContent,
				        removable : iwRemoveable
				    });
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px; width:180px;">' + place.place_name +'<br>'
		        						+place.phone+ '<br>'
		        						+ place.road_address_name +'<br>'
		        						+ place.address_name+'</div>');
		        infowindow.open(map, marker);
		    });
		}
		</script>
							
							
		


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