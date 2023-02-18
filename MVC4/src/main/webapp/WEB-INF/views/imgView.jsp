<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



 <%@include file="Header.jsp"%>

<style>

.select {
    padding: 15px 10px;
}
.select input[type=radio]{
    display: none;
}
.select input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 90px;
    
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.select input[type=radio]+label{
 	background-color: #fff8c2;
    text-align: center;
    border-radius: 15px;
    color: #286769;
    font-size: 14px;
    width: 95px;
    height: 95px;
    padding: 10px 0px 0px 5px;
}
.select input[type=radio]:checked+label{
    background-color: #3b9a9c;
    text-align: center;
    border-radius: 15px;
    color: #fff8c2;
    font-size: 14px;
    width: 95px;
    height: 95px; 
    padding: 10px 0px 0px 5px;
    
}

</style> 





				<!-- 파일 업로드  -->

	
    <div class="container content" >

      <div class="row mb-5 justify-content-center" >
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200"     >
          <form action="${cpath}/petinfo" class="form-box" method="post" name="petUpload" id="petUpload" >
          <label for="formFile" class="form-label"><h5>반려동물 정보등록</h5></label>
            <div class="row">
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="petName" placeholder="이름을 입력해 주세요." id="petName">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="petAge" placeholder="나이를 입력해 주세요." id="petAge">
              </div>
             
              
              <div class="col-12 mb-3">
                <!--   
               <input type="radio"  name="petgender" value="♂" id="petgender">
                <label for="male" style="margin-right: 20px">수컷</label>            
                <input type="radio"  name="petgender" value="♀" id="petgender">
                <label for="female">암컷</label> -->
			<h5>성별선택</h5>
            <div class="text-left">
				<div class="select">
			     <input type="radio" id="male" name="petgender" value="♂">
			     	<label for="male">
			     		<img src="resources/images/icon/male.png" style="max-width:65%;"><br>
			     		<span>남</span>
			     	</label>
			     <input type="radio" id="female" name="petgender" value="♀">
			     	<label for="female">
			     		<img src="resources/images/icon/female.png" style="max-width:65%;"><br>
			     		<span>여</span>
			     	</label>
			     <input type="radio" id="neutering" name="petgender" value="중성화">
			     <label for="neutering">
				     <img src="resources/images/icon/Neutering.png" style="max-width:65%;"><br>
				     <span>중성화</span>
			     </label>
			   	</div>
					
			</div>	  
                
            
            
                
              </div>
              <input type='hidden' name='memId' value='${loginMember.memId}'>
          </div>            
          </form>
        
				<!-- 반려동물 사진 등록 -->
				<form action="${cpath}/upload" method="post"
					enctype="multipart/form-data" name="imgUpload" id="imgUpload">
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
			        			console.log('데이터 전송 성공');
			        			console.log(petData);
			        		},
			        		error : function(){
			        			alert("펫 업로드 실패!")
			        		}
			        	});
			        }
			        	
		</script>
					
					
					
					
 	

 <%@include file="Footer.jsp"%>
			
	
					
