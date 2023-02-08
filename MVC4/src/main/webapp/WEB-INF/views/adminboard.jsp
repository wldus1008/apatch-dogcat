<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="Header.jsp"/>
 
  
   
  
  
  
  
<div class="container content" >
  
  <div class="panel panel-default">
  
	
	
	
    <div class="panel-body" id="list" style="display:block">Panel Content</div>
    <div class="panel-body" id="wform" style="display:none">
         <form class="form-horizontal"  id="frm">
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="title">제목:</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="writer">작성자:</label>
			    <div class="col-sm-10">
			      <input type="text" readonly="readonly" class="form-control" name="writer" id="writer" value="${loginMember.memName}" >
			      <input type="hidden" readonly="readonly" class="form-control" name="memId" id="memId" value="${loginMember.memId}" >
			    </div>
			 </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="content">내용:</label>
			    <div class="col-sm-10">
						<div>
							<textarea name="content" id="content" style="width: auto;height:auto;"
								placeholder="내용을 입력해주세요" ></textarea>
						</div>
						
					</div>
			  </div>
			 
			  <div class="form-group" style="margin-top:15px">
			  <!-- 부트스트랩은 한줄이 12 //  col-sm-10, col-sm-2 -->
			    <div class="col-sm-offset-2  col-sm-10">
			    <!-- button 기본 type은 submit이기 때문에 버튼으로만 사용하려면 type="button"  -->
			      
			      <div class="button add-list-button">
			      <div class="btn" onclick="insertFn()">등록</div>
			      </div>
			      <div class="button add-list-button">
			      <div class="btn" onclick="resetFn()">취소</div>
			      </div>
			    
			     
			    </div>
			  </div>
	    </form>
    
    
    
    
    
    </div>
  </div>
</div>

<script type="text/javascript">
  // basic.jsp가 실행이 되면 목록을 보여주는 함수가 실행이 될 수 있도록
  					// 익명함수 실행
  	var boolVal = false;
	  $(document).ready(function(){
		  boardList();

	  });

  
   function boardList(){
	   
	   $.ajax({
		   
		   url : "${cpath}/admin",
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
	   console.log(data);
	  
	   
	   var bList = "<table class = 'table table-hover table-bordered'>";
	   bList += "<tr>";
	   bList += "<td>번호</td>";
	   bList += "<td>제목</td>";
	   bList += "<td>작성자</td>";
	   bList += "<td>작성일</td>";
	   bList += "<td>조회수</td>";   
	   
	   bList += "</tr>";
	   
	   
	   // Array로 들어온 json데이터를 꺼낼때 반복문을 통해서 꺼냄
	   //{idx: 8, title: 'ㅂㅂㅂㅂㅂㅂㅂ', content: '나온다\r\nㅂ\r\nㅂㅂ\r\nㅂㅂㅂ\r\nㅂㅂㅂㅂ\r\nㅂㅂㅂㅂㅂ\r\nㅂㅂㅂㅂㅂㅂ\r\nㅂㅂㅂㅂㅂㅂㅂ', writer: '나왔다', indate: '2022-12-16 16:27:33.0', …}
	   
	   // 제이쿼리에서 요소에 접근할 수 있는 for문과 같은 역할 --> $.each()
	   // $.each(데이터, 데이터처리할 함수)
	   // function(){} 같은역할 ()=>{} --- 함수형 프로그래밍
	   // ()=>{} 이클립스에서 맞는 문법으로 인식하지 못한다.!
	   // json 데이터는 [인덱스:{데이터},.....]
	   $.each(data, (index,obj)=>{
		   
		   bList += "<tr>";
		 
		   bList += "<td>" + obj.idx + "</td>";
		   // a태그를 누르면 href가 요청으로 가는게 아니라 js함수로 가도록 키워드
		   // href="javascript:함수이름()"
		   // 마치 button태그를 눌러서 onclick="함수이름()" 비슷한 효과
		   // a태그 사용시 this 인식 불가
		   // 글의 내용을 보여주는 함수를 만들때- 어떤글 내용을 보여줄지 게시글번호로 인식
		   bList += "<td><a href='javascript:cview(" + obj.idx + ")'>" + obj.title + "</a></td>";
		   bList += "<td>" + obj.writer + "</td>";
		   bList += "<td>" + obj.indate + "</td>";
		   bList += "<td id='count" + obj.idx + "'>" + obj.count + "</td>";		   
		   bList += "</tr>";
		   
		   
		   // 게시글 내용만 보여주는 태그	
		   										// id=c1,c2,c3.....
	         bList += "<tr style='display:none' id='c" + obj.idx + "'>";
	         bList += "<td>내용</td>"; 
	         bList += "<td colspan='4'>";
	         bList += "<div class='form-control form-board' style='height: auto;'  row='7' id='nc" + obj.idx + "'>" + obj.content + "</div>";
	         
	         
	         // 로그인 정보와, 데이터memId가 같으면 수정 삭제 가능~~
	         if("${loginMember.memId}" == obj.memId) {
	         	bList += "<div class ='button add-list-button'><div class='btn' style = 'font-size:15px; padding:10px 30px; margin:5px;' onclick='goUpdate(" + obj.idx + ")'>수정</div></div>";
	         	bList += "<div class ='button add-list-button'><div class='btn' style = 'font-size:15px; padding:10px 30px; margin:5px;' onclick='goDel(" + obj.idx + ")'>삭제</div></div>";
	        	
	         }else{
	        	 bList += "<button disabled class='btn' onclick='goUpdate(" + obj.idx + ")'></button>";
		         bList += "<button disabled class='btn' onclick='goDel(" + obj.idx + ")'></button>";
	        	 
	         }
	         bList += "</td>";
	         bList += "<tr>";
		   
	
		   
		   
	   });// each 끝
	   
	   
	   bList +="<tr>";
	   bList +="<td colspan='5'>";
	   bList +="<div class ='button'><div class='btn' onclick='goForm()'>글쓰기</div></div>";
	   bList +="</td>";
	   bList +="</tr>";
	   
	   bList += "</table>";
	   
	   $("#list").html(bList);
	   
	   
	   
	   
   }// callBack함수 끝
   var oEditors = [];
   var boolVal = true;
   
	function goForm(){
		
		   // 글쓰기 버튼을 눌렀을때
		   // 리스트 목록은 없애고, 글쓰기 폼은 화면에 보여주기
		   
		      $("#list").css("display","none");
		      $("#wform").css("display","block");
		      // 전역변수 
			  
				
				// 스마트 에디터 프레임 생성
			      console.log("Naver SmartEditor")
			      if(boolVal){
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
				       boolVal = false;

			      } 
			      
			    
		   
		   }
			 function insertFn() {
				 
				oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
				// var content = document.getElementById("content").value;
			   	console.log("Naver SmartEditor")
				// var title = $('#title').val();
				// var writer = $('#writer').val();
		  	  	var fData = $("#frm").serialize();

			   // 2. 그 내용들을 ajax 통신으로 보내기
			   $.ajax({
				   
				   url : "${cpath}/adminInsert",
				   type : "post",
				   data : fData, //보내주는 데이터가 있다면
				   // dataType : "list", // 받는 데이터가 있으면
				   success : boardList,

				   // boardList함수를 실행 - callBack에 있는 내용까지 실행
				   // ajax에서는 함수 실행할 때 () 적지 않는 것 기억할것!
				   error : function(){
					  alert("글쓰기 실패~")
					   
				   }
			  
			   });//insert ajax 끝!!
	   
	   // 3. 잘 보내졌으면 다시 게시글 목록이 보여질 수 있도록~
	   // ajax 끝나고 난 다음에는 여전히 css가 list는 none, wform은 block상태
	   
	   $("#list").css("display","block");
	   $("#wform").css("display","none");
	   
	   // 4. 글쓰고 나면 form태그에 내용이 남은 상태
	   $("#title").val("");
		oEditors.getById["content"].exec("SET_IR", [""]);
	   // 취소 버튼을 강제로 실행하는 js 코드
	   /* $("#reset").trigger("click"); */
    
   }// insertFn() 끝!!

   
   
    function resetFn(){
	   
	   $("#list").css("display","block");
	   $("#wform").css("display","none");
	   
	   
   }
    
  
   
   
   function cview(idx) {
	   // c+idx c1,c2......
	   // 만약에 c1이 none상태면~ table-row
	   // 만약에 c1이 table-row이면~ none
	   if($("#c"+idx).css("display") == "none"){
		   // 게시글 내용을 담은 tr을 보여주려고 할 때 조회수를 +1씩 
		   	$.ajax({
		         url : "${cpath}/updateCount/"+idx, //PathVariable
		         type : "get",
		         //data : {"idx:idx"}, //보내주는 데이터가 있다면
		         //dataType : "", // 받는 데이터가 있으면
		         success : function(vo){
		        	 console.log(vo.count);
		        	 // vo.count의 값을 출력
		        	 $("#count"+idx).text(vo.count);
		        	 
		         },
		         error : function(){
		        	 alert("조회수 올리기 실패!!")
		         }
		         
		      }); // 조회수 ajax 끝
		   
		   $("#c"+idx).css("display", "table-row")
		   
	   }else{
		   $("#c"+idx).css("display", "none")
		   
	   }  
	   
   } // cview 함수 끝!!
   
   function goDel(idx) {
	   // 삭제 버튼을 눌렀을때 진짜로 삭제할건지 물어보고 삭제하기
	   // console.log, alert, confirm
	    var real = confirm("정말 삭제하시겠습니까?????????????")
	   if(real){
		   	   
		   $.ajax({
		         url : "${cpath}/board/"+idx, // PathVariable로 넘기기
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
   
   function goUpdate(idx) {
	   // textarea의 내용 가져오기
	   // nc1,nc2... 선택자를 이용
	   var newContent = $("#nc"+idx).val();
	   
	   $.ajax({
	         url : "${cpath}/board",
	         type : "put",
	         // idx, content를 보내줘야함 --> 여러개의 데이터를 보낼때
	         // json형식으로 보내야함 --> contentType지정, JSON.stringify()로 형식도 바꿈
	         contentType : "application/json;charset=utf-8",
	         data : JSON.stringify({"idx":idx,"content":newContent}), //보내주는 데이터가 있다면
	         //dataType : "", // 받는 데이터가 있으면
	         success : boardList,
	         error : function(){
	        	 alert("글수정 실패!!")
	         }
	         
	      });

   }

    
  
  </script>

 <%@include file="Footer.jsp"%>

