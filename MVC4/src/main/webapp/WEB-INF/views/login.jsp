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






</head>
<body>
	
	<div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center">
              <a href = Home.do>
              <h1><img src="resources/images/logo/logo1.png" alt="Logo" width="400" height="100"></h1>
              </a>
              <hr>
              <h2 class="mb-4 heading text-white" data-aos="fade-up" data-aos-delay="100">로그인</h2>

            </div>
          </div>
        </div>
      </div> <!-- /.row -->
    </div> <!-- /.container -->
	
	
	
	
	
	
	
	
	
	
	
		<div class="container">
		
		      <div class="row mb-5 justify-content-center">
		        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200">
		          
		          
		          
		          
		          
		          <!-- 로그인 폼 -->
		          <form action="${cpath}/Login.do" class="form-box" method="post">
		            <div class="row">
		              <div class="col-12 mb-3">
		                <input type="text" class="form-control" placeholder="ID" name="memId">
		              </div>
		              <div class="col-12 mb-3">
		                <input type="password" class="form-control" placeholder="Password" name="memPw">
		              </div>
		
		             
		      
		              <div class="button text-center">
		                <input type="submit" value="로그인" class="btn">
		               	<div class="button add-list-button">
						<a href="${cpath}/register.do" class="btn">회원가입</a>
						</div>
						<div class="button add-list-button">
						<a href="${cpath}/Home.do" class="btn">홈으로</a>
						</div>
						
		              
		              </div>
		            </div>
		          </form>
		        </div>
		      </div>
		
		      
		 </div>
		
		




























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