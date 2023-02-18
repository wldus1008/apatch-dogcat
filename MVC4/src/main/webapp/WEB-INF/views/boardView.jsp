<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="Header.jsp"%>

<div class="row" style="margin-bottom:50px; margin-left:300px;">
<div class="col-lg-12">
</div>
</div>

<div id="detailView" class="panel" style="margin-left:300px;margin-right:300px" style="display:block;">
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
			<th class="active" width="100px">작성자</th>
			<td class="activeT" width="400px">
			${vo.writer}
			</td>
			<th class="active" width="100px">조회수</th>
			<td class="activeT" width="400px">
			${vo.count}
			</td>
		</tr>
		<tr>
			<th class="active">제목</th>
			<td class="activeT">
			${vo.title}
			</td>
			<th class="active">작성날짜</th>
			<td class="activeT">
			${vo.indate}
			</td>
		</tr>
		<tr>
			<td style="border-right: none;">내용</td>
			<td colspan='4' style="border-left: none;"></td>

		</tr>
		<tr>
			<td colspan='4' align='left'>
				<div class="container" style="padding: auto;">
				<div style="margin-bottom: 150px;margin-left: 105px;margin-top: 30px;">${vo.content}</div>
			</td>
		</tr>
		
		
	</tbody>
</table>
</div>
<div class="button text-center" style="margin-bottom: 30px;">
	<c:choose>
		<c:when test="${loginMember.memId eq vo.memId}">
			<a href="/boardDelete/${vo.idx}" class="btn btn-primary">삭제</a>
			<a href="#" class="btn btn-primary" onclick="update()">수정</a>
		</c:when>
	</c:choose>

<a href="/basic.do" class="btn btn-primary">목록</a>
</div>
</div>
</div>
</div>
</div>

<script type="text/javascript">
		$(document).ready(function(){
			  // boardList라고 하는 함수 실행!
			  // 자바스크립트의 호이스팅
			$("#updateView").css("display","none");
			var data = ${vo.idx};
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
		   
		   
	   }// boardList 함수 끝!!
	  
	   function callBack(data){
		   //alert("데이터 통신 확인");
		   
		   
		   var bList = "";
		   $.each(data, (index,obj)=>{
			   bList += "<div class='d-flex'>";
			   bList += "<div class='flex-shrink-0'><img class='rounded-circle' src='/resources/fimages/" + obj.filename + "' alt='...' style='width: 70px; height: 70px'/></div>";
			   bList += "<div class='ms-3'>"
               bList += "<div class='fw-bold' ><strong><big>" + obj.memId + "</big></strong></div>";
               bList += "<div style='width:1044px;float:left;margin-top: 10px;' id='userComment" + obj.com_idx + "'>" + obj.comment + "</div>";
               bList += "<input type='hidden' value='" + obj.comment + "' id='hiddenComment" + obj.com_idx + "' >";
               if(obj.memId == '${loginMember.memId}'){
            	   bList += "<div style='width:5%; float:left;' id='userComDel" + obj.com_idx + "'><button class='btn btn-primary' style='height: -1px;' onclick='comUpdate(" + obj.com_idx + ")'>수정</button></div>";
            	   bList += "<div style='width:5%; float:left;'><button class='btn btn-primary' style='height: -1px;' onclick='comDelete(" + obj.com_idx + ")'>삭제</button></div>";
               }
			   bList += "</div>";          
			   bList += "</div>";               
			   bList += "</div>";
			   bList += "<br>";
		   });// each 끝
		   
		 $(".comment-body").append(bList);
		   
		   
		   
	   }// callBack함수 끝
	   
	   function comDelete(com_idx){
		   var real = confirm("삭제하겠습니까??");
		   
		   if(real){
			   console.log("real 통과");
			   $.ajax({
				  url : "${cpath}/commentDelete/" + com_idx,
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
	   
	   function comUpdate(idx) {
		      // textarea의 내용 가져오기
		      // nc1,nc2... 선택자를 이용
		      var hidden = $("#hiddenComment" + idx).val();
		      console.log(hidden);
		      
		      var bList = "";
		      bList += "<input type='text' name='updateCom' id='updateCom' value='" + hidden + "' style='width: 100%;height: 1em;border: none;resize: none;background-color: #f9fafb;'>";
		      
		      var bList2 = "";
		      bList2 += "<button class='btn btn-primary' style='height: -1px;' onclick='update2(" + idx + ")'>수정</button>";
		      
		     $("#userComDel" + idx).html(bList2)
		     $("#userComment" + idx).html(bList);
		     

		   }
	   
	   function update2(com_idx){
		   var comment = $('#updateCom').val();
		   
		   $.ajax({
				  url : "${cpath}/commentUpdate",
				  type : "get",
				  data : {
					  "comment" : comment,
					  "com_idx" : com_idx
				  },
				  success : function(){
					  window.location.reload();
				  },
				  error : function(){
					 	console.log("삭제실패 ㅎㅎ");
				  }
			   
			   });
		   
		   
	   }
	   
	   
	
</script>


<div id="updateView" class="panel" style="margin-left:300px;margin-right:300px" style="display:none;">
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
			<th class="active" width="100px">작성자</th>
			<td class="activeT" width="400px">
			${vo.writer}
			</td>
			<th class="active" width="100px">조회수</th>
			<td class="activeT" width="400px">
			${vo.count}
			</td>
		</tr>
		<tr>
			<th class="active">제목</th>
			<td class="activeT">
			<input type="hidden" name="idx" id="idx" value="${vo.idx}">
			<input type="text" name="title" id="title" value="${vo.title}" style="width: 100%;height: 1em;border: none;resize: none;text-align: center;">
			</td>
			<th class="active">작성날짜</th>
			<td class="activeT">
			${vo.indate}
			</td>
		</tr>
		<tr>
			<td style="border-right: none;">내용</td>
			<td colspan='4' style="border-left: none;"></td>

		</tr>
		<tr>
			<td colspan='4' align='left'>
				<input type="text" name="content" id="content" value="${vo.content}" style="width: 100%;height: 6.25em;border: none;resize: none;">
			</td>
		</tr>
		
		
	</tbody>
</table>
</div>
<div class="button text-center" style="margin-bottom: 30px;">

		<input type="submit" class="btn btn-primary" val="수정하기">


<a href="/basic.do" class="btn btn-primary">목록</a>




</div>
</form>
</div>
</div>
</div>
</div>
<div class="comment_section" style='margin-left: 300px;margin-right: 300px;'>
<section class="mb-5">
		<div class="card bg-light">
		<div class="card-body">
		<form class="mb-4" action="/commentInsert">
			<div>
			<div style="width:95%; float:left;"><input type="text" class="form-control" name="comment" placeholder="Join the discussion and leave a comment!"></div>
			<input type="hidden" name="memId" id="memId" value="${loginMember.memId}">
			<input type="hidden" name="idx" value="${vo.idx}">
			<div style="width:5%; float:left;"><input class="btn btn-primary" type="submit" value="제출" style="height: 35px; width: 70px;"></div>
			</div>
			
		</form>
		</div>
		<div class="comment-body"></div>	
		</div>
		
</section>

</div>

 <%@include file="Footer.jsp"%>