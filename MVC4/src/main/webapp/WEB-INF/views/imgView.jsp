<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>파일업로드</h2>

	<div class="container">
		<form action="${cpath}/upload" method="post" enctype="multipart/form-data">
			<input type="file" name="files"> 
			<!-- 여기서 files는 controller에 @RequestPart MultipartFile files -->
			<input type='hidden' name='memId' value='${loginMember.memId}'>
			<button type="submit" class="btn btn-dark" >업로드</button>
		</form>
	</div>
</body>



</html>