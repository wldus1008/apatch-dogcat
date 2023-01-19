<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>	
	<button onclick="getList()" style='display:block' id='listOn'>도서목록가져오기</button>
	<button onclick="delList()" style='display:none' id='listOff'>도서목록숨기기</button>
	
	<div class="bookList"></div>
	<form action="<c:url value='/bmi.do'/>">
		<input type="text" name="weight" value="weight">
		<input type="text" name="height" value="height">
		<input type="submit" value="제출">
	</form>
	
	
	
	
	<script type="text/javascript">
		function getList(){
			$.ajax({
				url : "<c:url value='/bookAjax.do'/>",
				type : "GET",
				dataType : "json",
				success : ajaxHtml,
				error : function(){
					alert("error");
				}
			
			});
		};
		function ajaxHtml(data){
			
			var bList = "";

			bList += "<table border='1'>";
			bList += "<tr>";
			bList += "<td>번호</td>"
			bList += "<td>제목</td>"
			bList += "<td>작가</td>"
			bList += "<td>출판사</td>"
			bList += "<td>ISBN</td>"
			bList += "<td>보유도서수</td>"
			bList += "</tr>";
			
			$.each(data, (index, obj)=>{
				bList += "<tr>";
				bList += "<td>" + obj.num + "</td>";
				bList += "<td>" + obj.title + "</td>";
				bList += "<td>" + obj.author + "</td>";
				bList += "<td>" + obj.company + "</td>";
				bList += "<td>" + obj.isbn + "</td>";
				bList += "<td>" + obj.count + "</td>";
				bList += "</tr>";
				
			});
			bList += "</table>";
			$('#listOn').css('display', 'none');
			$('#listOff').css('display', 'block');
			$('.bookList').html(bList);
		} 
		
		function delList(){
			
			$('#listOn').css('display', 'block');
			$('#listOff').css('display', 'none');
			$('.bookList').html("");
		};
		
		
	
	
	</script>
	
		



</body>
</html>