<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="ko">
<head>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- jquery datepicker -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css"
	type="text/css" />
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.min.js"></script>
<!-- jquery datepicker 끝 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">

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
	
/* 배경색 */
html {
	background-color: #EFEFEF;
}

body {
	scrollbar-face-color: #F6F6F6;
	scrollbar-highlight-color: #bbbbbb;
	scrollbar-3dlight-color: #FFFFFF;
	scrollbar-shadow-color: #bbbbbb;
	scrollbar-darkshadow-color: #FFFFFF;
	scrollbar-track-color: #FFFFFF;
	scrollbar-arrow-color: #bbbbbb;
	margin-left: "0px";
	margin-right: "0px";
	margin-top: "0px";
	margin-bottom: "0px";
}

td {
	font-size: 9pt;
	color: #747474;
}

th {
	font-size: 9pt;
	color: #000000;
}

select {
	font-size: 9pt;
	color: #747474;
}

.divDotText {
	overflow: hidden;
	text-overflow: ellipsis;
}

a:link {
	font-size: 9pt;
	color: #000000;
	text-decoration: none;
}

a:visited {
	font-size: 9pt;
	color: #000000;
	text-decoration: none;
}

a:active {
	font-size: 9pt;
	color: red;
	text-decoration: none;
}

a:hover {
	font-size: 9pt;
	color: red;
	text-decoration: none;
}

.day {
	width: 100px;
	height: 30px;
	font-weight: bold;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.sat {
	color: #0030DB;
}

.sun {
	color: #ED0000;
}

.today_button_div {
	float: right;
}

/* 버튼 */
.buttonstyle {
	border: 1px solid #A0D9E2;
	color: #A0D9E2;
	background-color: white;
	margin-bottom: 7px;
	font-weight: bold;
	border-radius: 5px;
	font-size: 10pt;
}

.buttonstyle:hover {
	box-shadow: 0px 15px 20px rgba(131, 131, 131, 0.4);
	transform: translateY(-5px);
	background-color: #A0D9E2;
	color: white;
}

.buttonstyle:focus {
	background-color: #A0D9E2;
	color: white;
	border: 3px solid #c9c9c9;
}

/* 캘린더 사이즈 */
.calendar {
	width: 80%;
	margin: auto;
}

/* 년/월 */
.navigation {
	margin-top: 30px;
	margin-bottom: 5px;
	text-align: center;
	font-size: 25px;
	vertical-align: middle;
}

/* 캘린더 꾸미기 */
.calendar_body {
	width: 100%;
	background-color: #FFFFFF;
	border: 1px solid #A0D9E2;
	margin-bottom: 50px;
	border-collapse: collapse;
}

/* 캘린더 꾸미기 */
.calendar_body .today {
	border: 1px solid #A0D9E2;
	height: 120px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .date {
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.date {
	margin-bottom: 10px;
}

.sat {
	margin-bottom: 10px;
}

.sun {
	margin-bottom: 10px;
}

/* 캘린더 꾸미기 */
.calendar_body .sat_day {
	border: 1px solid #A0D9E2;
	height: 120px;
	background-color: white;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sat_day .sat {
	color: #0030DB;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

/* 캘린더 꾸미기 */
.calendar_body .sun_day {
	border: 1px solid #A0D9E2;
	height: 120px;
	background-color: white;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sun_day .sun {
	color: #ED0000;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

/* 캘린더 꾸미기 */
.calendar_body .normal_day {
	border: 1px solid #A0D9E2;
	height: 120px;
	background-color: white;
	vertical-align: top;
	text-align: left;
}

.before_after_month {
	margin: 10px;
	font-weight: bold;
}

.before_after_year {
	font-weight: bold;
}

.this_month {
	margin: 10px;
}

.schdule_add_button {
	float: right;
}
/*
      *   게시판 이동 모달
      */
#mask_board_move {
	position: absolute;
	z-index: 9000;
	background-color: #000;
	display: none;
	left: 0;
	top: 0;
}

.normal_move_board_modal {
	display: none;
	position: fixed;
	z-index: 10000;
	left: 25% !important;
	top: 15% !important;
	width: 50% !important;
	height: 60% !important;
	border-radius: 12px !important;
	background-color: white !important;
}

.normal_move_board_modal .top {
	background-color: #A0D9E2;
	width: 100%;
	height: 13%;
	border-radius: 12px 12px 0px 0px;
}

.normal_move_board_modal .top .close {
	float: right;
	cursor: pointer;
	color: white;
	font-size: 25px;
	font-weight: bold;
	padding-top: 5px;
	padding-right: 20px;
}

.normal_move_board_modal .top .subject {
	float: left;
	margin-left: 10px;
	margin-top: 20px;
	font-size: 30px;
	font-weight: bold;
	color: white;
	padding-left: 20px;
}

.normal_move_board_modal .bottom {
	width: 100%;
	height: 15%;
	vertical-align: middle;
}

.normal_move_board_modal .bottom .info {
	padding: 10px 15px 10px 15px;
	text-align: left;
	font-size: 12px;
	color: red;
	margin-left: 50px;
}

.normal_move_board_modal .bottom .contents {
	margin: 20px 50px 20px 50px;
	text-align: center;
}

.normal_move_board_modal .bottom .contents .board_select {
	width: 240px;
	height: 40px;
	font-size: 15px;
}

.normal_move_board_modal ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

.normal_move_board_modal ul li {
	text-align: left;
	padding: 5px;
	height: 30px;
}

.normal_move_board_modal ul li .text_subject {
	width: 10%;
	height: 100%;
	float: left;
	font-size: 18px;
	vertical-align: middle;
	margin-top: 3px;
}

.normal_move_board_modal ul li .text_desc {
	height: 25px;
	width: 90%;
	float: left;
}

.normal_move_board_modal ul li .text_area_desc {
	width: 90%;
	float: left;
}

.normal_move_board_modal ul li .text_type1 {
	height: 100% !important;
	width: 100%;
	border: 1px solid #A0D9E2;
}

.normal_move_board_modal ul li .textarea_type1 {
	width: 100%;
	font-size: 18px;
	border: 1px solid #A0D9E2;
}

.normal_move_board_modal ul .button_li {
	padding-top: 40px;
	width: 100%;
}

.normal_move_board_modal .bottom .contents .board_move_go {
	width: 100% !important;
	height: 40px;
	font-size: 15px;
}

.date_subject {
	margin: 0px;
	margin-bottom: 5px;
	margin-left: 12px;
	font-size: 12px;
	font-weight: bold;
	border: none;
}

.date_subject:hover {
	border: 1px solid #A0D9E2 !important;
	border-radius: 7px;
}

.radio {
	margin-top: 12px;
	border: 1px solid #A0D9E2;
}

.colorbox {
	margin-top: 5px;
	border: 1px solid #A0D9E2;
}

/********************************일정 삭제 관리***************************************/
#mask_board_manage {
	position: absolute;
	z-index: 9000;
	background-color: #000;
	display: none;
	left: 0;
	top: 0;
}

.normal_manage_board_modal {
	display: none;
	position: fixed;
	z-index: 10000;
	left: 25% !important;
	top: 15% !important;
	width: 50% !important;
	height: 60% !important;
	border-radius: 12px !important;
	background-color: white !important;
}

.normal_manage_board_modal .top {
	background-color: #A0D9E2;
	width: 100%;
	height: 13%;
	border-radius: 12px 12px 0px 0px;
}

.normal_manage_board_modal .top .close {
	float: right;
	cursor: pointer;
	color: white;
	font-size: 25px;
	font-weight: bold;
	padding-top: 5px;
	padding-right: 20px;
}

.normal_manage_board_modal .top .subject {
	float: left;
	margin-left: 10px;
	margin-top: 20px;
	font-size: 30px;
	font-weight: bold;
	color: white;
	padding-left: 20px;
}

.normal_manage_board_modal .bottom {
	width: 100%;
	height: 15%;
	vertical-align: middle;
}

.normal_manage_board_modal .bottom .info {
	padding: 10px 15px 10px 15px;
	text-align: left;
	font-size: 12px;
	color: red;
	margin-left: 50px;
}

.normal_manage_board_modal .bottom .contents {
	margin: 20px 50px 20px 50px;
	text-align: center;
}

.normal_manage_board_modal .bottom .contents .board_select {
	width: 240px;
	height: 40px;
	font-size: 15px;
}

.normal_manage_board_modal ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

.normal_manage_board_modal ul li {
	text-align: left;
	padding: 5px;
	height: 30px;
}

.normal_manage_board_modal ul li .text_subject {
	width: 100%;
	height: 100%;
	float: left;
	font-size: 18px;
	vertical-align: middle;
	margin-top: 3px;
}

.normal_manage_board_modal ul li .text_desc {
	height: 25px;
	width: 90%;
	float: left;
}

.normal_manage_board_modal ul li .text_area_desc {
	width: 90%;
	float: left;
}

.normal_manage_board_modal ul li .text_type1 {
	height: 100% !important;
	width: 100%;
	border: 1px solid #A0D9E2;
}

.normal_manage_board_modal ul li .textarea_type1 {
	width: 100%;
	font-size: 18px;
	border: 1px solid #A0D9E2;
}

.normal_manage_board_modal ul .button_li {
	padding-top: 40px;
	width: 100%;
}

.normal_manage_board_modal .bottom .contents .board_manage_go {
	width: 45% !important;
	height: 40px;
	font-size: 15px;
	margin: 0 auto;
}

.managebutton {
	width: 60%;
	margin: 0 auto;
	display: flex;
}
.cal_size{
	width:80%;
	display: gird;
	grid-area:main;
	position: relative;
    left: 50%;
    transform: translateX(-50%);
 
  
}

 </style>
<script>
	var idx;
	var num;
	var subject;
	var desc;
	var date;
	var share;
	var mycolor;
</script>
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
                                            <li class="nav-item"><a href="calendar.do">캘린더</a></li>
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


	<div class="cal_size">
	
	<form name="calendarFrm" id="calendarFrm" action="" method="GET" style = "padding-top: 150px; padding-bottom: 150px;" >
		<input type="hidden" name="year" value="${today_info.search_year}" />
		<input type="hidden" name="month" value="${today_info.search_month-1}" />
		<script>
		 /* 스케줄 등록시 등록완료 팝업창 */
			var message = "${message}";
			console.log(message);
			if (message != "") {
				alert(message);
			}
		</script>
		<div class="calendar"></div>

			<!--날짜 네비게이션  -->
			<div class="navigation">
				<a class="before_after_year"
					href="/calendar.do/${loginMember.getMemNo()}?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
					&lt;&lt; <!-- 이전해 -->
				</a> <a class="before_after_month"
					href="/calendar.do/${loginMember.getMemNo()}?year=${today_info.before_year}&month=${today_info.before_month}">
					&lt; <!-- 이전달 -->
				</a> <span class="this_month"> &nbsp;${today_info.search_year}. <c:if
						test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
				</span> <a class="before_after_month"
					href="/calendar.do/${loginMember.getMemNo()}?year=${today_info.after_year}&month=${today_info.after_month}">
					<!-- 다음달 --> &gt;
				</a> <a class="before_after_year"
					href="/calendar.do/${loginMember.getMemNo()}?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
					<!-- 다음해 --> &gt;&gt;
				</a>
			</div>
			<div class="today_button_div">
				<button type="button" class="buttonstyle"
					onclick="javascript:location.href='/calendar.do/${loginMember.getMemNo()}'"
					style="height: 30px; width: 80px;">Today</button>
				<button type="button"
					class="buttonstyle board_move openMask_board_move pointer"
					style="height: 30px; width: 130px;" onclick="modalClick()">Add Schedule</button>
			</div>
			
			<table class="calendar_body ">

				<thead>
					<tr bgcolor="#A0D9E2">
						<td class="day sun">Sun</td>
						<td class="day">Mon</td>
						<td class="day">Tue</td>
						<td class="day">Wed</td>
						<td class="day">Thu</td>
						<td class="day">Fri</td>
						<td class="day sat">Sat</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="dateList" items="${dateList}"
							varStatus="date_status">
							<c:choose>
								<c:when test="${dateList.value=='today'}">
									<c:if test="${date_status.index%7==0}">
										<tr>
									</c:if>
									<td class="today">
										<div class="date">
								</c:when>
								<c:when test="${date_status.index%7==6}">
									<td class="sat_day">
										<div class="sat">
								</c:when>
								<c:when test="${date_status.index%7==0}">
					</tr>
					<tr>
						<td class="sun_day">
							<div class="sun">
								</c:when>
								<c:otherwise>
									<td class="normal_day">
										<div class="date">
								</c:otherwise>
								</c:choose>
								${dateList.date}
							</div>
							<div>
								<!-- 달력에 일정 띄우고 클릭 시 수정/삭제 창 띄우는 코드 -->
								<c:forEach var="scheduleList"
									items="${dateList.schedule_data_arr}"
									varStatus="schedule_data_arr_status">

									<a
										href="/schedule_show?schedule_idx=${scheduleList.schedule_idx}"
										onclick="window.open(this.href, '_blank', 'width=550,height=600,left=680%, top=200%, toolbars=no,scrollbars=no'); return false;"
										class="date_subject "
										style="color: ${scheduleList.schedule_mycolor}">${scheduleList.schedule_subject}</a>
									<br>

								</c:forEach>
							</div>
						</td>
						</c:forEach>
				</tbody>

			</table>
	</form>
	
	
	<div id="mask_board_move"></div>
	<div class="normal_move_board_modal" id="addModal" style="display:none;">
		
		<div class="top" style="">
			<div class="close" onclick="closeModal()">x</div>
			<div class="subject">Add Schedule</div>
		</div>

		<div class="bottom">
			<div class="info">* 순번은 해당 날짜안에서 순서대로 입력이 됩니다.(하루에 최대 4개의 스케줄만
				등록할 수 있습니다.)</div>
			<form name="schedule_add" action="${cpath}/schedule_add.do/${loginMember.getMemNo() }">
				<input type="hidden" name="year" value="${today_info.search_year}" />
				<input type="hidden" name="month"
					value="${today_info.search_month-1}" />
				<div class="contents">
					<ul>
						<li>
							<div class="text_subject">순번 :</div>
							<div class="text_desc">
								<input type="text" name="schedule_num" class="text_type1" />
							</div>
						</li>
						<li>
							<div class="text_subject">날짜 :</div>
							<div class="text_desc">
								<input type="text" name="schedule_date" class="text_type1"
									id="testDatepicker" readonly="readonly" />
							</div>
						</li>
						<li>
							<div class="text_subject">제목 :</div>
							<div class="text_desc">
								<input type="text" name="schedule_subject" class="text_type1" />
							</div>
						</li>
						<li>
							<div class="text_subject">내용 :</div>
							<div class="text_area_desc">
								<textarea name="schedule_desc" class="textarea_type1" rows="5" ></textarea>
							</div>
						</li>
						<li>
							<div class="text_subject">공유 :</div> 
							<input class="radio" type="radio" name="schedule_share" value="1" checked="checked">공개
							<input type="radio" name="schedule_share" value="2">비공개
						</li>
						<li >
							<div class="text_subject">색상 :</div> <input class="colorbox"
							type='color' name='schedule_mycolor' value='' />
						</li>
						<li class="button_li"  >
							<button type="button" class="buttonstyle board_move_go pointer"
								onclick="scheduleAdd();">Add</button>
						</li>
					</ul>

				</div>
			</form>
		</div>
		</div> <!-- body :  cal_size 끝 -->
	
	</div>
	<script>
			function modalClick(){
				var con = $("#addModal");
				con[0].style.display = 'block';
			}
			function closeModal(){
				var con = $("#addModal");
				con[0].style.display = 'none';
			}
			
			$(function() {
				$("#testDatepicker")
						.datepicker(
								{

									dateFormat : "yy-mm-dd",
									changeMonth : true,
									changeYear : true,
									dayNames : [ '월요일', '화요일', '수요일', '목요일',
											'금요일', '토요일', '일요일' ],
									dayNamesMin : [ '월', '화', '수', '목', '금',
											'토', '일' ],
									monthNamesShort : [ '1', '2', '3', '4',
											'5', '6', '7', '8', '9', '10',
											'11', '12' ]
								});
			});
			function scheduleAdd() {
				var schedule_add_form = document.schedule_add;
				if (schedule_add_form.schedule_date.value == ""
						|| schedule_add_form.schedule_date.value == null) {
					alert("날짜를 입력해주세요.");
					schedule_add_form.schedule_date.focus();
					return false;
				} else if (schedule_add_form.schedule_subject.value == ""
						|| schedule_add_form.schedule_subject.value == null) {
					alert("제목을 입력해주세요.");
					schedule_add_form.schedule_date.focus();
					return false;
				}
				schedule_add_form.submit();
			}
		</script>
	</body>
   <!-- Start Footer Area -->
    

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

</html>