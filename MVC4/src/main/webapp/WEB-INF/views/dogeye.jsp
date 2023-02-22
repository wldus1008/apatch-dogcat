<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="Header.jsp" %>
	
	 <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
             
              <h4 class="mb-4 heading" style="margin-top:50px;">강아지 안구질환 확인</h4>
			   <hr>
            </div>
          </div>
        </div>
      </div> <!-- /.row -->
    </div>
	
	
	


		<div class="container content" style="margin-top: 20px!important;" >
		 <div class="row align-items-center">
		 <div class="col-lg-5 col-md-12 col-12" style="padding-right: 50px;" >
		

			<form method="post" enctype='multipart/form-data' action="#"
					 name="#" id="#">
					<label for="formFile" class="form-label"><h5>사진등록</h5></label>
					<input type="file" name="files"  id="files" onchange="readURL(this);"
						class="form-control" >
					<!-- 여기서 files는 controller에 @RequestPart MultipartFile files -->
					<div style="margin-top: 20px; margin-bottom: 35px">
						<img id="petpreview" 
						style=" box-shadow: 0 5px 18px -7px rgba(0,0,0,1); max-width : 60%; position: relative; left: 20%;">
					</div>
					
				</form>
				<div class="button text-center"  >
					<button type="button" class="btn" >등록하기 </button> 
				</div>	
			
		</div>	
		
		<div class="col-lg-1 col-md-12 col-12" >
		<h6>▶▶▶</h6>
		</div>	
				
		<div class="col-lg-6 col-md-12 col-12" style="margin-top: 20px!important;" >
				
			<div style="width:100%;height:500px; border: 1px solid#286769; border-radius: 30px;">
				<h6 style="text-align: center; padding-top:15px;">결과확인</h6>
			</div>
			
		</div>
		
		
	</div><!--row align-items-center끝  -->
	
</div><!--container content끝  -->
		
						
		
		
		
	
		
		
















<script type="text/javascript">

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('petpreview').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('petpreview').src = "";
		}
	}


</script>






<%@ include file="Footer.jsp" %>