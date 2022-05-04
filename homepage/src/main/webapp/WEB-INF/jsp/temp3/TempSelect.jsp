<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" charset="UTF-8">
<title>데이터 가져오기~</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<table>
		<tr>
			<th>제목</th>
			<td><c:out value="${result.crudSj}"/></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><c:out value="${result.userNm}"/></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><fmt:formatDate value="${result.frstRegistPnttm}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><c:out value="${result.crudCn}"/></td>
		</tr>
		
	</table>	
	
<div class="box-btn">
	<c:url var="uptUrl" value="/temp3/tempRegist.do">
		<c:param name="crudId" value="${result.crudId}"/>
	</c:url>
	<a href="${uptUrl}">수정</a>
	
	<c:url var="delUrl" value="/temp3/delete.do">
		<c:param name="crudId" value="${result.crudId}"/>
	</c:url>
	<a href="${delUrl}" class="btn-del">삭제</a>
	
	<a href="/temp3/selectList.do">목록</a>
 </div>
 
 <script>
 $(document).ready(function(){
	 $(".btn-del").click(function(){
		 if(!confirm("삭제하시겠습니까?")){
			 return false;
		 }			 
	 });
 });
 </script>
</body>
</html>