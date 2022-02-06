<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.vs{margin-top:-10px;}
.logo_tit {margin-top:-3px;}
</style>

<header class="hd">
	<div class="hd_wrap">
		<c:set var="path" value="${pageContext.request.contextPath}" />
	    <a class="logo" href="${path}/">
		    <img src="${path}/include/img/logo.JPG" style="width:44px;">
		    <h2 class="logo_tit">문화관광</h2>
		</a>
		<nav class="tnb">
			<ul class="inner_menu">
			<c:if test="${member == null}">
				<li><a href="${path}/member/login.do" class="dp1">로그인</a></li>
				<li><a href="${path}/member/join.do" class="dp1">회원가입</a></li>
				<li><a href="/board/list.do">contact</a></li>
			</c:if>
			<c:if test="${member != null}">
				<li>${member.name}님</li>	
				<li><a href="${path}/member/mypage.do?userid=${member.getUserid() }" class="dp1">마이페이지</a></li>
				<li><a href="${path}/member/logout.do" class="dp1">로그아웃</a></li>
			</c:if>
			<c:if test="${member.userid == 'admin'}">	
				<li><a href="${path}/board/list.do" class="dp1">게시판 관리</a></li>
				<li><a href="${path}/member/list.do" class="dp1">회원 관리</a></li>
			</c:if>
			</ul>
		</nav>
		<nav class="gnb">
                <ul>
                    <li>
                        <a href="/introduceIsland" class="dp1">섬소개</a>
                        <ul class="sub">
                            <li><a href="/introduceIsland#page1">테마별 섬</a>
                            </li>
                            <li><a href="/introduceIsland#page2">권역별 섬</a>
                            </li>
                            <li><a href="/introduceIsland#page3">무인도</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/introduceIsland2" class="dp1">관광·체험·축제</a>
                        <ul class="sub">
                            <li><a href="/introduceIsland2#page1">섬 여행코스</a>
                            </li>
                            <li><a href="/introduceIsland2#page2">관광명소</a> 
                            </li>
                            <li><a href="/introduceIsland2#page3">경치</a> 
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/introduceIsland3" class="dp1">숙박·음식·쇼핑</a>
                        <ul class="sub">
                            <li><a href="/introduceIsland3#page1">숙박</a> 
                            </li>
                            <li><a href="/introduceIsland3#page2">음식</a>  
                            </li>
                            <li><a href="https://goodprice.go.kr/user/cmm/main/mainPage.do;jsessionid=5FCF13F9C6BCA7ABFAB3765BF0381FA3">가격인하업소</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/introduceIsland4" class="dp1">여행안내</a>
                        <ul class="sub">
                            <li><a href="/introduceIsland4#page1">섬여행준비</a>
                            </li>
                            <li><a href="/introduceIsland4#page2">배편안내</a> 
                            </li>
                            <li><a href="/introduceIsland4#page3">교통안내</a> 
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/introduceIsland5" class="dp1">섬 Talk</a>
                        <ul class="sub">
                            <li><a href="/introduceIsland5#page1">한려수도향토기행</a>
                            </li>
                            <li><a href="${path}/board/list.do">공지사항</a>
                            </li>
                            <li><a href="/introduceIsland5#page3">통영섬의 어제와 오늘</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>		
		</div>
	</header>