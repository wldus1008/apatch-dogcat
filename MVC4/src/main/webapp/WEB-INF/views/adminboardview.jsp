<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="Header.jsp"%>
<style>
#title {
	text-align: center;
	margin-bottom: 40px;
	border-bottom: 1px solid #3b9a9c;
	padding-bottom: 15px;
	font-size: 30px;
	color: #3b9a9c;
}
</style>


<div class="container" style="padding: 80px;">

	<div style="text-align: center">
		<span id="title"> ${vo.title} </span>
	</div>
	<div style="margin-bottom: 50px;">${vo.content}</div>
	

	<c:choose>
		<c:when test="${loginMember.mem_type eq 'A'}">
			<div class="button text-center">
				<button class="btn"
					onclick="location.href='${cpath}/adminUpdate.do/${vo.idx}'">수정</button>
				<button class="btn" onclick="goDel(idx)">삭제</button>
				<button class="btn"
					onclick="location.href='${cpath}/adminboard.do'">뒤로가기</button>
			</div>
		</c:when>
		<c:otherwise>
		<div class="button text-center">
				<button class="btn"
					onclick="location.href='${cpath}/adminboard.do'">뒤로가기</button>
			</div>
		</c:otherwise>
	</c:choose>
	
</div>


	<script type="text/javascript">

function goDel(idx) {
	   // 삭제 버튼을 눌렀을때 진짜로 삭제할건지 물어보고 삭제하기
	   // console.log, alert, confirm
	    var real = confirm("정말 삭제하시겠습니까?????????????")
	   if(real){
		   	   
		   $.ajax({
		         url : "${cpath}/admin/"+idx, // PathVariable로 넘기기
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






</script>















<%@include file="Footer.jsp"%>
	