<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>    
<%@include file="Header.jsp" %>
<style>
iframe{
	height: 550px!important;
}

</style>

<div class="container content">

	<div class="panel panel-default">




		<div class="panel-body" id="wform">
			<form class="form-horizontal" id="frm" method="post" action="adminboardUpdate.do">
				<div class="form-group">
					<label class="control-label col-sm-2" for="title">제목:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="title" id="title" value="${vo.title }">
						<input type="text" name="idx" id="idx" value="${vo.idx }"> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="writer">작성자:</label>
					<div class="col-sm-10">
						<input type="text" readonly="readonly" class="form-control"
							name="writer" id="writer" value="${vo.writer}">
						<input type="hidden" readonly="readonly" class="form-control"
							name="memId" id="memId" value="${loginMember.memId}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="content">내용:</label>
					<div class="col-sm-10">
						<div>
							<textarea name="content" id="content"
								style="width: auto; height: 500px;">${vo.content}</textarea>
							
						</div>

					</div>
				</div>

				<div class="form-group" style="margin-top: 15px">
					<!-- 부트스트랩은 한줄이 12 //  col-sm-10, col-sm-2 -->
					<div class="col-sm-offset-2  col-sm-10">
						<!-- button 기본 type은 submit이기 때문에 버튼으로만 사용하려면 type="button"  -->

						<div class="button add-list-button">
							<input type="submit" class="btn">수정</button>
						</div>
						<div class="button add-list-button">
							<button class="btn" >취소</button>
						</div>
																		

					</div>
				</div>
			</form>





		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		let oEditors=[];
		
		console.log("Naver SmartEditor")
		nhn.husky.EZCreator.createInIFrame({
				           oAppRef: oEditors,
				           elPlaceHolder: "content",
				           sSkinURI: "${cpath}/resources/smarteditor/SmartEditor2Skin.html",
				           fCreator: "createSEditor2",
				           htParams : {
				               bUseToolbar : true,                // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				               bUseVerticalResizer : true,        // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				               bUseModeChanger : true,            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				               bSkipXssFilter : true,        // client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
				               //aAdditionalFontList : aAdditionalFontSet,        // 추가 글꼴 목록
				               fOnBeforeUnload : function(){
				                   //alert("완료!");
				               }
				           }
				       }); //스마트 에디터 구현 끝	
		
	})
	
	
		

	
	
	
	
	
	
</script>

<%@include file="Footer.jsp" %>

