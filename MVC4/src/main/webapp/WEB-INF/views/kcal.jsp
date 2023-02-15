<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@include file="Header.jsp"%>
 <style>


#result,#gicho{
	
	font-size: 20px;
    line-height: 30px;
    color: #286769;

}



</style>
 
 
 
 <div class="container content" >
      <div class="row mb-5 justify-content-center" >
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200" >
        <div class="row">
        
		
	<div class="col-12 mb-3">
	<h5 style=" text-align : center;">반려동물 권장 칼로리 계산</h5>
	<br><br>
	<div class="hero-image wow fadeInRight" data-wow-delay=".4s" style="text-align: center;">
	<img class="daligi" src="resources/images/hero/dog3.gif" >
	</div>
	<br><br>
	<h6>반려동물 상태</h6>
	<select size="1" name="select1" id ="select1"  style="margin-top:10px;">
	    <option value="0" selected>선택하세요</option>
	    <option value="1.6">중성화 된 성견(보통 활동량)</option>
	    <option value="1.8">중성화 되지 않은 성견(보통 활동량)</option>
	    <option value="1">체중 감량 필요</option>
	    <option value="1.7">체중 증량 필요</option>
	    <option value="2">가벼운 활동</option>
	    <option value="3">적당한 활동</option>
	    <option value="4">강한 활동</option>
	    <option value="1.8">임신 초기</option>
	    <option value="3">임신 후기</option>
	    <option value="3">1~4개월 새끼 강아지</option>
	    <option value="2">4~12개원 새끼 강아지</option>
	</select>
	
	</div>
	<br><br>
	<div class="col-12 mb-3">
	<input id="weight" class="form-control" name="weight" type="number" placeholder="몸무게를 입력해 주세요."
	>
	</div>
	
	
	<div class="col-12 mb-3">
	
	<p id="result"></p>
	<p id="gicho"></p>
	</div>
	
	<div class="button text-center">
			<button class="btn" onClick="kcal()">계산하기 </button> 
	</div>
	</div>
	
	</div>
	</div>
	</div>

<!--폼 구성 끝-->
 
 
 
 <script type="text/javascript">

	
	function kcal() {
		
		
		
		var weight = $('#weight').val();
		var select = document.getElementById("select1").value;
		
		var result;
		console.log(weight);
		console.log(select1);
		if(parseFloat(weight) < 2){
			
		var gicho =  70 * (parseFloat(weight)*0.75);
		}else{
			gicho =  30 * parseFloat(weight) + 70;
		} 
		
		
		if(parseFloat(weight) < 2){
			if(parseFloat(select) == 1.6){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 1.8){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 1){
				result = parseFloat(gicho) * parseFloat(select);
			}else if(parseFloat(select) == 1.7){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 2){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 3){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 4){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 1.8){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 3){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 3){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else{
				result = parseFloat(gicho) * parseFloat(select);
			}
		}else{
			if(parseFloat(select) == 1.6){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 1.8){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 1){
				result = parseFloat(gicho) * parseFloat(select);
			}else if(parseFloat(select) == 1.7){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 2){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 3){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 4){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 1.8){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 3){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else if(parseFloat(select) == 3){
				result = parseFloat(gicho) * parseFloat(select);
			}
			else{
				result = parseFloat(gicho) * parseFloat(select);
			}
		}
		
		
	
					
	console.log(result);
		$("#result").text("1일 권장 칼로리 : "+result+"kcal");
		$("#gicho").text("1일 기초 대사량 : "+gicho+"kcal");
		
	
		
		
		
		
	}
		
	// -->

	//몸무게가 2kg 미만일 경우
	//RER = 70 × (체중 × 0.75)
	
	//몸무게가 2kg 이상일 경우
	//기초대사량(Kcal) = 30 × 체중(kg) + 70 kcal




</script>
 
 
 
 
 
 <%@include file="Footer.jsp"%>
 
 
 