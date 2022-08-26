<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="X-UA-Compatible" content="IE-edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>샤방샤방</title>
<link rel="stylesheet" href="/asset/front/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/77c9453159.js" crossorigin="anonymous"></script>
<script src="/asset/front/js/jquery.min.js"></script>
<script src="/asset/front/js/indigo.min.js"></script>

</head>
<body>

	<header>
		<!-- Nav container -->
		<nav class="header">
			<!-- Logo with text -->
			<div class="header_logo">
				<i class="fab fa-accusoft"></i> <a href="/index.do">샤방샤방</a>
			</div>
			<!-- Menu -->
			<div class="gnb">
				<ul class="header_menu">
					<li><a href="/index.do#about">소개</a></li>
<!-- 					<li><a href="/roomList.do">매물찾기</a></li> -->
					<!-- <li><a href="#">관심목록</a></li> -->
					<!-- <li><a href="#">매물등록</a></li> -->
					<li><a href="/board/selectList.do">게시판</a></li>
					<!-- <li><a href="#">로그인|회원가입</a></li> -->
					<li><c:choose>
							<c:when test="${empty USER_INFO.id}">
								<a href="/login/egovLoginUsr.do" class="login">로그인</a>
							</c:when>
							<c:otherwise>
								<a href="/login/actionLogout.do"> <c:out value="${USER_INFO.name}" />님 로그아웃
								</a>
							</c:otherwise>
						</c:choose></li>
					<li><a href="/join/memberType.do">회원가입</a></li>
				</ul>
			</div>
			<div class="menu-toggle-btn">
				<img src='<c:url value="/asset/front/images/common/menu_bar.png"/>'>
			</div>
		</nav>
	</header>


	<div class="dim"></div>
	<!-- 로그인 -->
	<div class="layer-popup layer-login" style="display: none;">
		<header class="layer-header">
			<span class="logo"> <span class="img-logo"> <img alt=""
					src='<c:url value="/asset/front/images/common/my_logo.png"/>'></span>
			</span>
			<button type="button" class="layer-close">
				<span>팝업 닫기</span>
			</button>
		</header>
		<div class="layer-body">
			<form action="/login/actionLogin.do" id="frmLogin" name="frmLogin"
				method="post" onsubmit="return vali()">
				<input type="hidden" name="userSe" value="USR" />
				<input type="hidden" name="retUrl" value="/board/selectList.do" />
				<fieldset>
					<!-- <legend>로그인을 위한 아아디/비밀번호 입력</legend> -->
					<div class="ipt-row">
						<input type="text" id="loginId" name="id" placeholder="아이디"
							required="required">
					</div>
					<div class="ipt-row">
						<input type="password" id="loginPw" name="password"
							placeholder="비밀번호" required="required">
					</div>
					<button type="submit" class="btn-login">
						<span>로그인</span>
					</button>
				</fieldset>
			</form>
		</div>
	</div>
	<script>
$(document).ready(function(){
	//로그인
	$(".login").click(function(){
		$(".dim, .layer-login").fadeIn();
		return false;
	});
	
	//레이어닫기
	$(".layer-close").click(function(){
		$(".dim, .layer-login").fadeOut();
		return false;
	});
});

function vali(){
	if(!$("#loginId").val()){
		alert("아이디를 입력해주세요.");
		$("#loginId").focus();
		return false;
	}
	
	if(!$("#loginPw").val()){
		alert("비밀번호를 입력해주세요.");
		$("#loginPw").focus();
		return false;
	}
}

<c:if test="${not empty loginMessage}">
	alert("${loginMessage}");
</c:if>

// <c:if test="${not empty message}">
// 	alert("${message}");
// </c:if>
</script>