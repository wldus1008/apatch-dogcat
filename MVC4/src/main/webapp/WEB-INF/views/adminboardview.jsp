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
	<div>${vo.content}</div>





	<c:choose>
		<c:when test="${loginMember.memId eq 'admin'}">
			<div class="button text-center">
				<button class="btn"
					onclick="location.href='${cpath}/adminUpdate.do/${vo.idx}'">수정</button>
				<button class="btn" onclick="">삭제</button>

			</div>

		</c:when>


	</c:choose>




</div>


<%@include file="Footer.jsp"%>
