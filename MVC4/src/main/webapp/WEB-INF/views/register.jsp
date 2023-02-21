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
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="resources/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="resources/css/animate.css" />
    <link rel="stylesheet" href="resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="resources/css/glightbox.min.css" />
    <link rel="stylesheet" href="resources/css/main.css" />










</head>
<script type="text/javascript">
	$(document).ready(function() {
		$('#submit').on("click", function() {
			var memId = $("#memId").val();
			var memPw = $("#memPw").val();
			var memName = $("#memName").val();

			if (memId == "") {
				alert("아이디를 입력해 주세요");
				$("#memId").focus();
				return false;
			}

			if (memPw == "") {
				alert("비밀번호를 입력해 주세요");
				$("#memPw").focus();
				return false;
			}

			if (memName == "") {
				alert("이름을 입력해주세요");
				$("#memName").focus();
				return false;
			}
		});

	})
</script>
<body>
	
	<div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
              <a href = Home.do>
              <h1><img src="resources/images/logo/logo7.png" alt="Logo" width="400" height="100"></h1>
              </a>
              <hr>
              <h2 class="mb-4 heading" data-aos="fade-up" data-aos-delay="100">회원가입</h2>
			  
            </div>
          </div>
        </div>
      </div> <!-- /.row -->
    </div> <!-- /.container -->
	
	
	
	
	
	
	
	
	
	
	
		<div class="untree_co-section">
    <div class="container">

      <div class="row mb-5 justify-content-center">
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200">
          <form action="${cpath}/member_register.do" class="form-box" method="post">
            <div class="row">
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="mem_id" placeholder="ID" id="memId">
              </div>
              <div class="col-12 mb-3">
                <input type="password" class="form-control" name="mem_pw" placeholder="PW" id="memPw">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="mem_name" placeholder="이름을 입력해 주세요."  id="memName">
              </div>
              <div class="col-12 mb-3">
              	<input type="radio"  name="mem_type" value="A">관리자
              	<input type="radio"  name="mem_type" value="U">일반회원
              </div>

           

              <div class="button text-center">
                <button type="submit"  class="btn" id="submit">수정하기</button>
                <a href="Home.do" class="btn">홈으로</a>
              </div>
            </div>
          </form>
        </div>
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
   
</body>
</html>