<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<meta http-equiv="X-UA-Compatible" content="IE-edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>샤방샤방</title>
<link href="/asset/front/css/style.css" rel="stylesheet" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/77c9453159.js" crossorigin="anonymous"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<header>
        <h2><a href="#">샤방샤방</a></h2>
        <nav>
            <li><a href="#about">소개</a></li>
            <li><a href="#">매물찾기</a></li>
            <!-- <li><a href="#">관심목록</a></li>
            <li><a href="#">매물등록</a></li> -->
            <li><a href="/board/selectList.do">게시판</a></li>
            <li>
	            <c:choose>
					<c:when test="${empty USER_INFO.id}">
						<a href="/login/egovLoginUsr.do" class="login">로그인</a>
					</c:when>
					<c:otherwise>
						<a href="/login/actionLogout.do"><c:out value="${USER_INFO.name}"/>님 로그아웃</a>
					</c:otherwise>
				</c:choose>
			</li>
        </nav>
    </header>
    <section class="banner-area">
        <div class="banner-img"></div>
        <h1>1인가구</h1>
        <h2>원/투룸 A to Z</h2>
        <h1>샤방샤방과 함께 당신의 생활을 만듭니다</h1>
        <a href="#" class="banner-btn">매물찾기</a>
        
        <div class="container">
            <!-- <div class="row">                  -->
                <div class="col">
                    <div class="card card1">
                        <h5>제품구매</h5>
                        <p>(공동구매)가전제품 구매</p>
                    </div>
                    <div class="card card2">
                        <h5>기사호출</h5>
                        <p>인터넷, TV, 청소, 집수리 A/S</p>
                    </div>
                    <div class="card card3">
                        <h5>이사 정산</h5>
                        <p>한국전력공사, 이삿짐 센터 연결</p>
                    </div>
                    <!-- <div class="card card4">
                        <h5>건물 관리</h5>
                        <p>건물 관리 설명</p>
                    </div> -->
                </div>
            <!-- </div> -->
        </div>        
    </section>


    <section class="about-area" id="about">
        <h3 class="section-title">소개</h3>
        <ul class="about-content">
            <li class="about-left"></li>
            <li class="about-right">
                <h2>About our Company</h2>
                <p>샤방샤방은 세입자와 임대인 모두 선진적인 주거문화 정착을 위해 함께합니다. 
                    세입자는 원하는 집을 임대인과 1:1로 연결하고 사는 동안 필요한 모든 생활을 함께하며
                    임대인은 매물 업로드부터 세입자 관리까지 한번에 관리할 수 있습니다.</p>
                <a href="#" class="about-btn">Learn more</a>
            </li>
        </ul>        
    </section>

    <section class="services-area" id="services">
        <h3 class="section-title">Services</h3>
        <ul class="services-content">
            <li>
                <i class="fa-solid fa-people-roof"></i>
                <h4>임대차 관리</h4>
                <p>임대차 관리 설명</p>
            </li>
            <li>
                <i class="fa-solid fa-house"></i>
                <h4>건물관리</h4>
                <p>청소, 집수리 A/S, 빨래, 공동구매 등</p>
            </li>
            <li>
                <i class="fa-solid fa-suitcase-rolling"></i>
                <h4>이사 정산</h4>
                <p>이삿짐 센터 연결</p>
            </li>
        </ul>
    </section>

    <section class="contact-area" id="contact">
        <h3 class="section-title">Contact</h3>
        <ul class="contact-content">
            <li>
                <i class="fa fa-map-marker"></i>
                <p>[34516]대전광역시 동구 백룡로 11번길 8</p>
            </li>
            <li>
                <i class="fa fa-phone"></i>
                <p>010-1111-1111 <br> 010-1111-1111</p>
            </li>
            <li>
                <i class="fa fa-envelope"></i>
                <p>@naver.com
            </li>
        </ul>
    </section>

    <footer>
        <p>All Rights Reserved by 샤방샤방</p>
    </footer>



<div class="dim"></div>
<!-- 로그인 -->
<div class="layer-popup layer-login" style="display:none;">
	<header class="layer-header">
		<span class="logo">
			<span class="img-logo">샤방샤방</span>
		</span>
		<button type="button" class="layer-close"><span>팝업 닫기</span></button>
	</header>
	<div class="layer-body">
		<form action="/login/actionLogin.do" id="frmLogin" name="frmLogin" method="post" onsubmit="return vali()">
			<input type="hidden" name="userSe" value="USR"/>
			<fieldset>
				<!-- <legend>로그인을 위한 아아디/비밀번호 입력</legend> -->
				<div class="ipt-row">
					<input type="text" id="loginId" name="id" placeholder="아이디" required="required">
				</div>
				<div class="ipt-row">
					<input type="password" id="loginPw" name="password" placeholder="비밀번호" required="required">
				</div>
				<button type="submit" class="btn-login"><span>로그인</span></button>
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

</script>
</body>
</html>