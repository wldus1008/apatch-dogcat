<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>ApatchDogcat</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.png" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"  rel="stylesheet">
    

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="/resources/css/animate.css" />
    <link rel="stylesheet" href="/resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="/resources/css/glightbox.min.css" />
    <link rel="stylesheet" href="/resources/css/main.css" />










</head>
<body>
	<div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
              <a href = Home.do>
              <img src="${cpath}/resources/images/logo/logo7.png" alt="Logo" width="400" height="100">
              </a>
              <hr>
              <h4 class="mb-4 heading" data-aos="fade-up" data-aos-delay="100">반려동물 정보수정</h4>
			  
            </div>
          </div>
        </div>
      </div> <!-- /.row -->
    </div> <!-- /.container -->




    <div class="container" style="margin-top:30px;">

	      <div class="row mb-5 justify-content-center">
	        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200">
				<form action="/petupdate" class="form-box" method="post">
					<div class="row">
						<div class="col-12 mb-3">
							<label for="pet_name">이름</label>
							<input type="text" class="form-control" name="pet_name" id="pet_name" value="${profile.pet_name}">
						</div>	
						<div class="col-12 mb-3">
							<label for="pet_age">나이</label>
							<input type="text" class="form-control" name="pet_age" id="pet_age" value="${profile.pet_age}">
						</div>	
						<div class="col-12 mb-3">
							<label for="pet_gender">성별</label>
							<input type="text" class="form-control" name="pet_gender" id="pet_gender" value="${profile.pet_gender}">
						</div>	
						<div class="col-12 mb-3">
							<label for="pet_kind">품종</label>
							<input type="text" class="form-control" name="pet_kind" id="pet_kind" value="${profile.pet_kind}">
							<input type="hidden" class="form-control" name="pet_seq" id="pet_kind" value="${profile.pet_seq}">
							
						</div>	
							 <div class="button text-center" style="margin-top:30px;">
				                <button type="submit"  class="btn" id="submit">수정하기</button>
				                <a href="${cpath}/Home.do" class="btn">홈으로</a>
				              </div>
					</div>
				</form>
			</div>		
		</div>		
	</div>		


<!-- ========================= JS here ========================= -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/wow.min.js"></script>
    <script src="/resources/js/tiny-slider.js"></script>
    <script src="/resources/js/glightbox.min.js"></script>
    <script src="/resources/js/count-up.min.js"></script>
    <script src="/resources/js/imagesloaded.min.js"></script>
    <script src="/resources/js/isotope.min.js"></script>
    <script src="/resources/js/main.js"></script>		
				
</body>
</html>