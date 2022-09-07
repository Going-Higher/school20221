<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/main/inc/Header.jsp" %>

<div class="wrap">
	<nav>
		<a href="/join/memberRegist.do?loginType=normal" class="member-type">일반 회원가입</a>
		<a class="btn-kakao" href="#" data-type="join">
			<img src="http://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="150" alt="카카오 로그인 버튼" />
		</a>
		<a class="btn-naver" href="${naverAuthUrl}" data-type="join">
			<img src="/asset/front/images/common/btn-naver.png" width="150" alt="네이버 로그인 버튼 " />
		</a>
	</nav>
</div>

<form id="joinFrm" name="joinFrm" method="post" action="/join/insertMember.do">
	<input type="hidden" name="loginType" value=""/>
	<input type="hidden" name="emplyrId"/>
	<input type="hidden" name="userNm"/>
</form>

<%@ include file="/WEB-INF/jsp/main/inc/Footer.jsp" %>

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
$(document).ready(function(){
	//카카오 로그인 버튼
	$(".btn-kakao").click(function() {
		const type = $(this).data("type");
		kakaoLogin(type);
		return false;
	});
});

//카카오 키 정보 입력
Kakao.init('85cfedf365add214dc57669d66adcb0e');//JavaScript 키

//카카오SDK 초기화
Kakao.isInitialized();

//카카오로그인
function kakaoLogin(type){
	Kakao.Auth.login({
		success : function (response) {
			Kakao.API.request({
				url: '/v2/user/me',
				success: function (response) {
					console.log(response)
					$("input[name=loginType]").val("KAKAO");
// 					if(type == "join"){
// 						$("input[name=emplyrId]").val(response.id);
// 						$("input[name=userNm]").val(response.properties.nickname);
						
// 						$("#joinFrm").submit();
// 					}else{
// 						$("input[name=id]").val(response.id);
// 						$("#frmLogin").submit();
// 					}
				},
				fail: function (error) {
					console.log(error)
				},
			})
		}, fail: function (error) {
			console.log(error)
		},
	})
}
</script>

</body>
</html>