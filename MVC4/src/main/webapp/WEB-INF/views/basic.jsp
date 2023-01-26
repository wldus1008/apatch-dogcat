<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Apatch DogCat</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <meta name="description" content="" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 
    
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  <script type="text/javascript">
  // basic.jsp가 실행이 되면 목록을 보여주는 함수가 실행이 될 수 있도록
  					// 익명함수 실행
  $(document).ready(function(){
	  // boardList라고 하는 함수 실행!
	  // 자바스크립트의 호이스팅
	  boardList();
	  
  });
  
   function boardList(){
	   $.ajax({
		   
		   url : "${cpath}/board",
		   type : "get",
		   // 보내줄 데이터가 없어서 data: ___적을게 없음
		   dataType : "json", // 서버가 클라이언트에게 돌려주는 데이터 형식 
		   success : callBack, // ajax에서 함수를 부르는 경우 뒤에 () 적지않는다!!
		   error : function(){
			   alert("error");
		   }
		   
		   
		   
	   });//ajax 끝
	   
	   
   }// boardList 함수 끝!!
  
   function callBack(data){
	   //alert("데이터 통신 확인");
	   console.log(data);
	   
	   
	   var bList = "<table class = 'table table-hover table-bordered'>";
	   bList += "<tr>";
	   bList += "<td>번호</td>";
	   bList += "<td>제목</td>";
	   bList += "<td>작성자</td>";
	   bList += "<td>작성일</td>";
	   bList += "<td>조회수</td>";   
	   
	   bList += "</tr>";
	   
	   
	   // Array로 들어온 json데이터를 꺼낼때 반복문을 통해서 꺼냄
	   //{idx: 8, title: 'ㅂㅂㅂㅂㅂㅂㅂ', content: '나온다\r\nㅂ\r\nㅂㅂ\r\nㅂㅂㅂ\r\nㅂㅂㅂㅂ\r\nㅂㅂㅂㅂㅂ\r\nㅂㅂㅂㅂㅂㅂ\r\nㅂㅂㅂㅂㅂㅂㅂ', writer: '나왔다', indate: '2022-12-16 16:27:33.0', …}
	   
	   // 제이쿼리에서 요소에 접근할 수 있는 for문과 같은 역할 --> $.each()
	   // $.each(데이터, 데이터처리할 함수)
	   // function(){} 같은역할 ()=>{} --- 함수형 프로그래밍
	   // ()=>{} 이클립스에서 맞는 문법으로 인식하지 못한다.!
	   // json 데이터는 [인덱스:{데이터},.....]
	   $.each(data, (index,obj)=>{
		   
		   bList += "<tr>";
		 
		   bList += "<td>" + obj.idx + "</td>";
		   // a태그를 누르면 href가 요청으로 가는게 아니라 js함수로 가도록 키워드
		   // href="javascript:함수이름()"
		   // 마치 button태그를 눌러서 onclick="함수이름()" 비슷한 효과
		   // a태그 사용시 this 인식 불가
		   // 글의 내용을 보여주는 함수를 만들때- 어떤글 내용을 보여줄지 게시글번호로 인식
		   bList += "<td><a href='javascript:cview(" + obj.idx + ")'>" + obj.title + "</a></td>";
		   bList += "<td>" + obj.writer + "</td>";
		   bList += "<td>" + obj.indate + "</td>";
		   bList += "<td id='count" + obj.idx + "'>" + obj.count + "</td>";		   
		   bList += "</tr>";
		   
		   
		   // 게시글 내용만 보여주는 태그	
		   										// id=c1,c2,c3.....
	         bList += "<tr style='display:none' id='c" + obj.idx + "'>";
	         bList += "<td>내용</td>"; 
	         bList += "<td colspan='4'>";
	         bList += "<textarea class='form-control form-board' style='height: 250px;'  row='7' id='nc" + obj.idx + "'>" +  obj.content + "</textarea>";
	         
	         
	         // 로그인 정보와, 데이터memId가 같으면 수정 삭제 가능~~
	         if("${loginMember.memId}" == obj.memId) {
	         	bList += "<div class ='button add-list-button'><div class='btn' style = 'font-size:15px; padding:10px 30px; margin:5px;' onclick='goUpdate(" + obj.idx + ")'>수정</div></div>";
	         	bList += "<div class ='button add-list-button'><div class='btn' style = 'font-size:15px; padding:10px 30px; margin:5px;' onclick='goDel(" + obj.idx + ")'>삭제</div></div>";
	        	
	         }else{
	        	 bList += "<button disabled class='btn btn-primary btn-lg' onclick='goUpdate(" + obj.idx + ")'>수정</button>";
		         bList += "<button disabled class='btn btn-primary btn-lg' onclick='goDel(" + obj.idx + ")'>삭제</button>";
	        	 
	         }
	         bList += "</td>";
	         bList += "<tr>";
		   
	
		   
		   
	   });// each 끝
	   
	   
	   bList +="<tr>";
	   bList +="<td colspan='5'>";
	   bList +="<div class ='button'><div class='btn' onclick='goForm()'>글쓰기</div></div>";
	   bList +="</td>";
	   bList +="</tr>";
	   
	   bList += "</table>";
	   
	   $("#list").html(bList);
	   
	   
   }// callBack함수 끝

    function goForm(){
	   // 글쓰기 버튼을 눌렀을때
	   // 리스트 목록은 없애고, 글쓰기 폼은 화면에 보여주기
	   $("#list").css("display","none");
	   $("#wform").css("display","block");
	   
   }
   
   
   
   
   
   function insertFn() {
	   
	   // 1. form태그 안에 있는 input태그에 입력한 내용들 가져오기
	   // var title = $("#title").val(); 와 같이 일일이 가져와야하는데
	   // .serialize() - 직렬화(값들을 한번에 정리해서 객체로)
	   var fData = $("#frm").serialize();
	   console.log("폼태그 내용", fData);
	   
	   // 2. 그 내용들을 ajax 통신으로 보내기
	   $.ajax({
		   
		   url : "${cpath}/board",
		   type : "post",
		   data : fData, //보내주는 데이터가 있다면
		   // dataType : "", // 받는 데이터가 있으면
		   success : boardList, 
		   // boardList함수를 실행 - callBack에 있는 내용까지 실행
		   // ajax에서는 함수 실행할 때 () 적지 않는 것 기억할것!
		   error : function(){
			  alert("글쓰기 실패~")
			   
		   }
		   
	   });//insert ajax 끝!!
	 
	   
	   
	   // 3. 잘 보내졌으면 다시 게시글 목록이 보여질 수 있도록~
	   // ajax 끝나고 난 다음에는 여전히 css가 list는 none, wform은 block상태
	   $("#list").css("display","block");
	   $("#wform").css("display","none");
	   
	   // 4. 글쓰고 나면 form태그에 내용이 남은 상태
	   //$("#title").val("");
	   //$("#content").val("");
	   //$("#writer").val("");
	   
	   // 취소 버튼을 강제로 실행하는 js 코드
	   /*  $("#reset").trigger("click");  */
    
   }// insertFn() 끝!!

   
   
    function resetFn(){
	   
	   $("#list").css("display","block");
	   $("#wform").css("display","none");
	   
	   
   }
    
  
   
   
   function cview(idx) {
	   // c+idx c1,c2......
	   // 만약에 c1이 none상태면~ table-row
	   // 만약에 c1이 table-row이면~ none
	   if($("#c"+idx).css("display") == "none"){
		   // 게시글 내용을 담은 tr을 보여주려고 할 때 조회수를 +1씩 
		   	$.ajax({
		         url : "${cpath}/updateCount/"+idx, //PathVariable
		         type : "get",
		         //data : {"idx:idx"}, //보내주는 데이터가 있다면
		         //dataType : "", // 받는 데이터가 있으면
		         success : function(vo){
		        	 console.log(vo.count);
		        	 // vo.count의 값을 출력
		        	 $("#count"+idx).text(vo.count);
		        	 
		         },
		         error : function(){
		        	 alert("조회수 올리기 실패!!")
		         }
		         
		      }); // 조회수 ajax 끝
		   
		   $("#c"+idx).css("display", "table-row")
		   
	   }else{
		   $("#c"+idx).css("display", "none")
		   
	   }  
	   
   } // cview 함수 끝!!
   
   function goDel(idx) {
	   // 삭제 버튼을 눌렀을때 진짜로 삭제할건지 물어보고 삭제하기
	   // console.log, alert, confirm
	    var real = confirm("정말 삭제하시겠습니까?????????????")
	   if(real){
		   	   
		   $.ajax({
		         url : "${cpath}/board/"+idx, // PathVariable로 넘기기
		         type : "delete",
		         // 보내주는 데이터 1개이면 직접 객체로 묶어서 보내줄 수 있음
		         		// "idx" : parameter name값 --> idx=2
		         //data : {"idx" : idx}, //보내주는 데이터가 있다면
		         //dataType : "", // 받는 데이터가 있으면
		         success : boardList,
		         error : function(){
		        	 alert("글삭제 실패!!")
		         }
		         
		      });
		   
	   }
	
   }// goDel 함수 끝!!
   
   function goUpdate(idx) {
	   // textarea의 내용 가져오기
	   // nc1,nc2... 선택자를 이용
	   var newContent = $("#nc"+idx).val();
	   
	   $.ajax({
	         url : "${cpath}/board",
	         type : "put",
	         // idx, content를 보내줘야함 --> 여러개의 데이터를 보낼때
	         // json형식으로 보내야함 --> contentType지정, JSON.stringify()로 형식도 바꿈
	         contentType : "application/json;charset=utf-8",
	         data : JSON.stringify({"idx":idx,"content":newContent}), //보내주는 데이터가 있다면
	         //dataType : "", // 받는 데이터가 있으면
	         success : boardList,
	         error : function(){
	        	 alert("글수정 실패!!")
	         }
	         
	      });

   }

   
  
   
   
  
  </script>
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
                            <a class="navbar-brand style3" href="Home.do" style = "padding-bottom: 85px;">
                                <img src="resources/images/logo/logo7.png" alt="Logo" >
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
                                            aria-expanded="false" aria-label="Toggle navigation">반려동물등록</a>
                                        <ul class="sub-menu collapse" id="submenu-1-3">
                                            <li class="nav-item"><a href="imgView.do">반려동물등록</a></li>
                                            <li class="nav-item"><a href="pricing.html">메뉴생각</a></li>
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

<!-- Start Hero Area -->
    <section id="home" class="hero-area style1">
      
           
   
   
   
  
  
  
  
<div class="container">
  
  <div class="panel panel-default">
  
	
	
	
    <div class="panel-body" id="list" style="display:block">Panel Content</div>
    <div class="panel-body" id="wform" style="display:none">
         <form class="form-horizontal"  id="frm">
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="title">제목:</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="content">내용:</label>
			    <div class="col-sm-10">
			      <textarea class="form-control" name="content" rows="10" id="content"></textarea>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="writer">작성자:</label>
			    <div class="col-sm-10">
			      <input type="text" readonly="readonly" class="form-control" name="writer" id="writer" value="${loginMember.memName}" >
			      <input type="hidden" name="memId" value="${loginMember.memId}">	
			    </div>
			 </div>
			 
			  <div class="form-group">
			  <!-- 부트스트랩은 한줄이 12 //  col-sm-10, col-sm-2 -->
			    <div class="col-sm-offset-2  col-sm-10">
			    <!-- button 기본 type은 submit이기 때문에 버튼으로만 사용하려면 type="button"  -->
			      
			      <div class="button add-list-button">
			      <div class="btn" onclick="insertFn()">등록</div>
			      </div>
			      <div class="button add-list-button">
			      <div class="btn" onclick="resetFn()">취소</div>
			      </div>
			    
			     
			    </div>
			  </div>
	    </form>
    
    
    
    
    
    </div>
  </div>
</div>


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