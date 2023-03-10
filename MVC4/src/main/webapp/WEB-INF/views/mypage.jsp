<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@include file="Header.jsp"%>
 
 

      
	<!-- 마이페이지  시작-->
	
	
	<section class = "hero-area style1">
	
        <div class="container" style="">
            <div class="row align-items-center">
            
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<c:forEach items="${pet_profile}" var="petProfile">
												<div class="swiper-slide">
													 <div class="col-lg-6 col-md-12 col-12" style="padding-left: 80px;">
													 <div class="hero-image wow fadeInRight"  data-wow-delay=".4s" style="text-align: center; ">
														<img alt="프로필 사진" src="/resources/fimages/${petProfile.file_name}" style="border:3px solid #3b9a9c;"/>
													</div>	
													</div>
													 <div class="col-lg-6 col-md-12 col-12">
													  <div class="hero-content wow fadeInLeft" data-wow-delay=".3s">
								                        <h5>이름</h5><p>${petProfile.pet_name}</p><br>
								                        <h5>나이</h5><p>${petProfile.pet_age}</p><br>
								                        <h5>성별</h5><p>${petProfile.pet_gender}</p><br>
								                        <h5>품종</h5><p>${petProfile.pet_kind }</p><br>  
								                        <div class="button">
								                        <a href="profile_update/${petProfile.pet_seq}" class="btn" style="height: 53px; width: 150px; ">Pet 정보수정</a>                               
							                            </div>
								                        
								                        </div>       
							                     	</div>
							                     </div>   
									     		</c:forEach>
								   		</div>
								   		<!-- 네비게이션 -->
										<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
										<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
									
										<!-- 페이징 -->
										<div class="swiper-pagination"></div>
								   		
								   
									</div>
			                        
    

		</div> <!-- <div class="container"> 끝 -->
		</div>
                        
                    
                    
               
    <div class="container" style="margin-top:30px;">

      <div class="row mb-5 justify-content-center">
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200">
          <form action="${cpath}/memUpdate" class="form-box" method="post" id="mem_Update" name="mem_Update">
       		<input type='hidden' name='mem_type' value='${loginMember.mem_type}'> 
       		
            <div class="row">
              <div class="col-12 mb-3">
              <label for="mem_id">아이디</label>
                <input type="text" class="form-control" name="mem_id" id="mem_id" value="${loginMember.mem_id}" readonly>
              </div>
              <div class="col-12 mb-3">
              <label for="mem_pw">비밀번호</label>
                <input type="password" class="form-control" placeholder="비밀번호" value="${loginMember.mem_pw}" readonly>
              </div>
              <div class="col-12 mb-3">
              <label for="mem_pw">새 비밀번호</label>
                <input type="password" class="form-control" placeholder="새 비밀번호"  name="mem_pw" id="mem_pw">
              </div>
              <div class="col-12 mb-3">
              <label for="mem_name">이름</label>
                <input type="text" class="form-control" name="mem_name" value="${loginMember.mem_name}" id="mem_name" >
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
  
   
	
	</section>
	
	
	   <script type="text/javascript">


        
        function Update(){
     	  
     	  var mem_id = $('#mem_id').val();
     	  var mem_pw = $('#mem_pw').val();
     	  var mem_name = $('#mem_name').val();
     		  
     	 
     	 
     	
     	 $.ajax({
     		     anyne:true,
     	         url : "${cpath}/memUpdate",
     	         type : "post",
     	         // idx, content를 보내줘야함 --> 여러개의 데이터를 보낼때
     	         // json형식으로 보내야함 --> contentType지정, JSON.stringify()로 형식도 바꿈
     	         contentType : "application/json;charset=utf-8",
     	         data :JSON.stringify({
     	        	 "mem_id" : mem_id,
     	        	 "mem_pw" : mem_pw,
     	        	 "mem_name" : mem_name
     	        	 
     	         }), //보내주는 데이터가 있다면
     	         //dataType : "", // 받는 데이터가 있으면
     	         success : function(){
     	        	 console.log("ajax실행");
     	        	 location.href='/index.jsp'
     	         },
     	         error : function(){
     	        	 alert("회원수정 실패!!");
     	        	//console.log(param)
     	         }
     	         
     	      });

        }
	
        </script>

	
				
	<!-- 마이페이지 끝  -->
 <%@include file="Footer.jsp"%>