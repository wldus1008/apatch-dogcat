<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@include file="Header.jsp"%>
 
 

      
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
 <%@include file="Footer.jsp"%>