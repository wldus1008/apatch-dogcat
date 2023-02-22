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
                <input type="text" class="form-control" name="pet_name" placeholder="이름을 입력해 주세요." id="petName">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="pet_age" placeholder="나이를 입력해 주세요." id="petAge">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="pet_kind" placeholder="품종을 입력해 주세요." id="petKind">
              </div>
             
              
            <div class="col-12 mb-3">
			<h5>성별선택</h5>
            <div class="text-left">
				<div class="select">
			     <input type="radio" id="male" name="pet_gender" value="♂">
			     	<label for="male">
			     		<img src="resources/images/icon/male.png" style="max-width:65%;"><br>
			     		<span>남</span>
			     	</label>
			     <input type="radio" id="female" name="pet_gender" value="♀">
			     	<label for="female">
			     		<img src="resources/images/icon/female.png" style="max-width:65%;"><br>
			     		<span>여</span>
			     	</label>
			     <input type="radio" id="neutering" name="pet_gender" value="중성화">
			     <label for="neutering">
				     <img src="resources/images/icon/Neutering.png" style="max-width:65%;"><br>
				     <span>중성화</span>
			     </label>
			   	</div>
					
			</div>	  
                

            
                
              </div>
              <input type='hidden' name='mem_id' value='${loginMember.mem_id}'>
          </div>            
          </form>
        
				<!-- 반려동물 사진 등록 -->
				<form  method="post" enctype='multipart/form-data' action="${cpath}/upload"
					 name="imgUpload" id="imgUpload">
					<label for="formFile" class="form-label"><h5>반려동물 사진등록</h5></label>
					<input type="file" name="files"  id="files" onchange="readURL(this);"
						class="form-control" >
					<!-- 여기서 files는 controller에 @RequestPart MultipartFile files -->
					<div style="margin-top: 10px; margin-bottom: 10px">
						<img id="preview" style="box-shadow: 0 4px 2px -2px rgba(0,0,0,0.7); position: relative; left: 35%;" >
					</div>
					
				</form>
				<div class="button text-center"  >
					<button type="button" class="btn" onClick="TwoSubmit()">등록하기 </button> 
				</div>
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

	function TwoSubmit() {
		if($("#petName").val().length==0){
			alert("이름을 입력해주세요!!");
			$("#petName").focus();
			return false;
		}
		if($("#petAge").val().length==0){
			alert("나이을 입력해주세요!!");
			$("#petAge").focus();
			return false;
		}
		if($("#petKind").val().length==0){
			alert("이름을 입력해주세요!!");
			$("#petKind").focus();
			return false;
		}
		if($('input[name="pet_gender"]:checked').val()==null){
			alert("성별을 입력해주세요!!");
			$('input[name="pet_gender"]:checked').focus();
			return false;
		}
		var petData = $('#petUpload').serialize();
		console.log("petData 내용 : ", petData);
		$.ajax({
			url : "${cpath}/petinfo",
			type : "post",
			data : petData,
			success : function(data) {
				
				console.log('펫 데이터 전송 성공');
				console.log(petData);
				console.log(data);
				
				// 펫 데이터 전송 성공하면 img Upload
		        var form = $('#imgUpload')[0];
		        var formData = new FormData(form);
				$.ajax({
			          url: "${cpath}/upload/"+data,
			          type: 'POST',
			          data: formData,
			          success: function () {
			        		console.log("이미지 전송 성공");
			        		console.log(formData);
			        		location.href = "${cpath}/Home.do"
			        		
						
			          },
			          error: function (data) {
			            alert("이미지 전송 실패");
			          },
			          cache: false,
			          contentType: false,
			          processData: false
			        })
				// 이미지 Upload 끝
				
			},
			error : function() {
				alert("펫 업로드 실패!")
			}
		});
		
		
	}
</script>





<%@include file="Footer.jsp"%>
			
	
					
