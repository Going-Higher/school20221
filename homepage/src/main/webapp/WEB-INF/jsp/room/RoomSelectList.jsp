<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- 기본 URL --%>
<c:url var="_BASE_PARAM" value="">
	<c:param name="menuNo" value="50"/>
	<c:if test="${not empty searchVO.searchCondition}">
		<c:param name="searchCondition" value="${searchVO.searchCondition}" />
	</c:if>
	<c:if test="${not empty searchVO.searchKeyword}">
		<c:param name="searchKeyword" value="${searchVO.searchKeyword}" />
	</c:if>
</c:url>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<meta http-equiv="X-UA-Compatible" content="IE-edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>매물찾기</title>
<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />

<%@ include file="/WEB-INF/jsp/main/inc/Header.jsp" %>


<c:forEach var="vo" items="${RoomList}"> 
	${vo.RoomList}
</c:forEach>



<script>
<c:if test="${not empty message}">
	alert("${message}");
</c:if>
</script>	
</body>
</html>