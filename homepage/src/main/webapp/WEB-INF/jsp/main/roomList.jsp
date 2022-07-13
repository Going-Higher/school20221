<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/asset/front/css/list.css">
<%@ include file="/WEB-INF/jsp/main/inc/Header.jsp" %>
    
  <div class="filter">
            <select>
              <option>계약형태</option>
              <option>월세</option>
              <option>전세</option>
            </select>
            <label>보증금</label>
            <input type="range" min="1" max="10" value="1">원
            <label>월세</label>
            <input type="range" min="1" max="10" value="1">원
            <button>초기화</button>
            <button>적용하기</button>        
        </div>

        <main class="main bd-grid">
            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room1.png" alt="">
                </div>
                <div class="list_name">
                    <p>특<br>급<br>매<br>물</p>
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon" onclick="addLike()"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room2.png" alt="">
                </div>
                <div class="list_name">
                    <p>특<br>급<br>매<br>물</p>
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room3.png" alt="">
                </div>
                <div class="list_name">
                    <p>특<br>급<br>매<br>물</p>
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room4.png" alt="">
                </div>
                <div class="list_name">
                    <p>특<br>급<br>매<br>물</p>
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>
            
            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room1.png" alt="">
                </div>                
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room2.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room3.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room4.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>
            
            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room1.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room2.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room3.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>

            <article class="list">
                <div class="list_img">
                    <img src="/asset/front/images/main/room4.png" alt="">
                </div>
                <div class="list_precis">
                    <div>
                        <span class="list_preci list_preci--before">월세 100/20</span>
                        <span class="list_preci list_preci--now">동구 용전동</span>
                    </div>
                    <a href="#" class="list_icon"><ion-icon name="heart-outline"></ion-icon></a>
                </div>
            </article>
        </main>

        <!-- ICONS -->
        <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>

    <%@ include file="/WEB-INF/jsp/main/inc/Footer.jsp" %>





</body>
</html>