<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">

<head>

 <%@ include file="Header.jsp" %>

</head>

<body>
 



				<!-- 파일 업로드  -->

	
    <div class="container" style = "padding-top: 150px;" >

      <div class="row mb-5 justify-content-center" >
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200"     >
          <form action="${cpath}/petinfo" class="form-box" method="post" name="petUpload" id="petUpload" target="1">
          <label for="formFile" class="form-label"><h5>반려동물 정보등록</h5></label>
            <div class="row">
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="petName" placeholder="이름을 입력해 주세요." id="petName">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="petAge" placeholder="나이를 입력해 주세요." id="petAge">
              </div>
              <div class="col-12 mb-3">
                <input type="radio"  name="petgender" value="male" id="petgender">
                <label for="male" style="margin-right: 20px">수컷</label>            
                <input type="radio"  name="petgender" value="female" id="petgender">
                <label for="female">암컷</label>
              </div>
              <input type='hidden' name='memId' value='${loginMember.memId}'>
          
            </div>
          </form>
          <br>
				<!-- 반려동물 사진 등록 -->
				<form action="${cpath}/upload" method="post"
					enctype="multipart/form-data" name="imgUpload" target="2" id="imgUpload">
					<label for="formFile" class="form-label"><h5>반려동물 사진등록</h5></label>
					<input type="file" name="files" onchange="readURL(this);"
						class="form-control" >
					<!-- 여기서 files는 controller에 @RequestPart MultipartFile files -->
					<input type='hidden' name='memId' value='${loginMember.memId}'>
					<div style="margin-top: 10px; margin-bottom: 10px">
						<img id="preview" />
					</div>
					<div class="button text-center">
						<button type="submit" class="btn" onClick="TwoSubmit()">등록하기 </button> 
					</div>
					
				</form>
        </div>
      </div>

      
    </div>
  
				 

		<script type="text/javascript">
					
					function readURL(input) {
						  if (input.files && input.files[0]) {
						    var reader = new FileReader();
						    reader.onload = function(e) {
						      document.getElementById('preview').src = e.target.result;
						    };
						    reader.readAsDataURL(input.files[0]);
						  } else {
						    document.getElementById('preview').src = "";
						  }
						}
					
					/* function TwoSubmit(){
						$('#imgUpload').submit();
						$('#petUpload').submit();
					} */
				    
			         function TwoSubmit(){

			        	
			        	var petData = $('#petUpload').serialize();
			        	$.ajax({
			        		url : "${cpath}/petinfo",
			        		type : "post",
			        		data : petData,
			        		success : function(){
			        			console.log(petData)
			        		},
			        		error : function(){
			        			alert("펫 업로드 실패!")
			        		}
			        	});
			        }
			        	
		</script>
					
					
					
					
				
				
					
					
</body>




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

</html>