<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="Header.jsp"%>

<div class="container content">

<div id="detailView" class="table table-hover table-bordered">
<div id="contAreaBox">
<div class="panel">
<div class="panel-body">
<div class="table-responsive" style="text-align:center;">
<table id="datatable-scroller"
	class="table table-bordered tbl_Form" border=1>
	<caption></caption>
	<colgroup>
		<col width="250px" />
		<col />
	</colgroup>
	<tbody>
		<tr>
			<th class="active">제목</th>
			<td class="activeT">
			${vo.b_title}
			</td>
			<th class="active" >작성자</th>
			<td class="activeT" >
			${vo.mem_id}
			</td>
			
		</tr>
		<tr>
			<th class="active" >조회수</th>
			<td class="activeT" >
			${vo.b_views}
			</td>
			<th class="active">작성날짜</th>
			<td class="activeT">
			${vo.b_date}
			</td>
		</tr>
		<tr>
			<th class="active">내용</th>
			<td colspan='4' align='left'>
				<div style="margin-bottom: 150px;margin-left: 105px;margin-top: 30px; ">${vo.b_content}</div>
			</td>
			

		</tr>
		
		
		
	</tbody>
</table>
</div>
<div class="button text-center" >
	<c:choose>
		<c:when test="${loginMember.mem_id eq vo.mem_id}">
			<a href="/boardDelete/${vo.b_seq}" class="btn">삭제</a>
			<button  class="btn" onclick="update()">수정</button>
		</c:when>
	</c:choose>

<a href="/basic.do" class="btn">목록</a>
</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
		$(document).ready(function(){
			  // boardList라고 하는 함수 실행!
			  // 자바스크립트의 호이스팅
			var data = ${vo.b_seq}
			console.log("idx : ", data);
			commentList(data);
			  
		});
	
	function update(){
		$("#updateView").css("display","block");
		$("#detailView").css("display","none");
	}
	
	function commentList(data){
		   $.ajax({
			   
			   url : "${cpath}/comment/" + data,
			   type : "get",
			   // 보내줄 데이터가 없어서 data: ___적을게 없음
			   dataType : "json", // 서버가 클라이언트에게 돌려주는 데이터 형식 
			   success : callBack, // ajax에서 함수를 부르는 경우 뒤에 () 적지않는다!!
			   error : function(){
				   alert("error");
			   }
			   
		   });//ajax 끝
		   
		   
	   }// commentList 함수 끝!!
	  
	   function callBack(data){
		   //alert("데이터 통신 확인");
		   
		   
		   var bList = "";
		   $.each(data, (index,obj)=>{
			   bList += "<div class='d-flex'>";
			   /* bList += "<div class='flex-shrink-0'><img class='rounded-circle' src='/resources/fimages/" + obj.b_file + "' alt='...' style='width: 70px; height: 70px'/></div>"; */
			   bList += "<div class='ms-3'>"
               bList += "<div class='fw-bold' ><strong><big>" + obj.mem_id + "</big></strong></div>";
               bList += "<div style='width:1044px;float:left;margin-top: 10px;' id='userComment" + obj.cmt_seq + "'>" + obj.cmt_content ;
               bList += "<input type='hidden' value='" + obj.cmt_content + "' id='hiddenComment" + obj.cmt_seq + "' >";
               if(obj.mem_id == '${loginMember.mem_id}'){
            	   
            	   bList += "<div class='button text-left'><button class='btn button text-left' onclick='comUpdate(" + obj.cmt_seq + ")'>수정</button>"
            	   bList += "<button class='btn' onclick='comDelete(" + obj.cmt_seq + ")'>삭제</button></div>";
            	           	   
            	   
               }
               bList += "</div>"
			   bList += "</div>";               
			   bList += "</div>";
			   bList += "<br>";
		   });// each 끝
		   
		 $("#commentList").append(bList);
		   
		   
		   
	   }// callBack함수 끝
	   
	   function comDelete(cmt_seq){
		   var real = confirm("삭제하겠습니까??");
		   
		   if(real){
			   console.log("real 통과");
			   $.ajax({
				  url : "${cpath}/commentDelete/" + cmt_seq,
				  type : "get",
				  success : function(){
					  window.location.reload();
				  },
				  error : function(){
					 	console.log("삭제실패 ㅎㅎ");
				  }
			   
			   });
			   
		   }
	   }
	   
	   function comUpdate(cmt_seq) {
		      // textarea의 내용 가져오기
		      // nc1,nc2... 선택자를 이용
		      var hidden = $("#hiddenComment" + cmt_seq).val();
		      console.log(hidden);
		      
		      var bList2 = "";
		      bList2 += "<input type='text' name='updateCom' id='updateCom' value='" + hidden + "' style='width: 90%;height: 1.5em;border: none; margin-bottom:10px;'></input>";
		      bList2 += "<div class='button text-left'><button class='btn' onclick='update2("+ cmt_seq+ ")'>수정</button>";
		      bList2 += "<button class='btn' onclick='comDelete("+  cmt_seq  +")'>삭제</button></div>";
		      
		     $("#userComment" + cmt_seq).html(bList2);
		   }
	   
	   function update2(cmt_seq){
		   var comment = $('#updateCom').val();
		   console.log("update2 : " , comment)
		   $.ajax({
				  url : "${cpath}/commentUpdate",
				  type : "POST",
				  data : {
					  "cmt_content" : comment,
					  "cmt_seq" : cmt_seq
				  },
				  success : function(){
					  window.location.reload();
				  },
				  error : function(){
					 	console.log("수정실패 ㅎㅎ");
				  }
			   
			   });
	   } 	// Update2 끝
	   
	   
	
</script>

<div id="updateView" class="panel" style="margin-left:300px;margin-right:300px; display: none;">
<div id="contAreaBox">
<div class="panel">
<div class="panel-body">
<form action="/boardUpdate" method="post">
<div class="table-responsive" style="text-align:center;">
<table id="datatable-scroller"
	class="table table-bordered tbl_Form" border=1>
	<caption></caption>
	<colgroup>
		<col width="250px" />
		<col />
	</colgroup>
	<tbody>
		<tr>
			<th class="active">제목</th>
			<td class="activeT">
			<input type="hidden" name="b_seq" id="idx" value="${vo.b_seq}">
			<input type="text" name="b_title" id="title" value="${vo.b_title}" style="width: 100%;height: 1em;border: none;resize: none;text-align: center;">
			</td>
						
			<th class="active" width="100px">작성자</th>
			<td class="activeT" width="400px">
			${vo.mem_id}
			</td>
			
		</tr>
		<tr>
			<th class="active" width="100px">조회수</th>
			<td class="activeT" width="400px">
			${vo.b_views}
			</td>
			
			<th class="active">작성날짜</th>
			<td class="activeT">
			${vo.b_date}
			</td>
		</tr>
		<tr>
			<th style="border-right: none;">내용</th>
			<td colspan='4' align='left'>
			<input type="text" name="b_content" id="content" value="${vo.b_content}" style="width: 100%;height: 6.25em;border: none;resize: none;">
			</td>

		</tr>
		
		
		
		
	</tbody>
</table>
</div>
<div class="button text-center" style="margin-bottom: 30px;">

<input type="submit" class="btn" value="수정하기">
<a href="/basic.do" class="btn">목록</a>

</div>

</form>
</div>
</div>
</div>
</div>

<div class="container content">
<div class="comment_section" id="dg">
<section class="mb-5">
		<div class="card bg-light">
		<div class="card-body">
		<form class="mb-4" action="/commentInsert">
			<div>
			<div id="dgsize"><input type="text" class="form-control" name="cmt_content" placeholder="댓글을 입력하세요!"></div>
			<input type="hidden" name="mem_id" id="mem_id" value="${loginMember.mem_id}">
			<input type="hidden" name="b_seq" value="${vo.b_seq}">
			<div class="button" style="width:5%; float:left;">
			<input class="btn" type="submit" value="등록" >
			</div>
			</div>
			
		</form>
		</div>
		<div class="comment-body" id="commentList"></div>	
		</div>
		
</section>

</div>
</div>


 <%@include file="Footer.jsp"%>