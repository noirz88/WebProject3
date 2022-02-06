<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<%@ include file="include/head.jsp" %>
	
	<!-- 폰트 로딩 -->
    <link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${path}/include/font/fonts.css">
    <!-- 필수 API 로딩 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/include/bx/jquery.bxslider.css">
    <script src="${path}/include/bx/jquery.bxslider.js"></script>
    <!-- 외부 스타일 연결 -->
    <link rel="stylesheet" href="${path}/include/common3.css">
    <link rel="stylesheet" href="${path}/include/common.css">
    <link rel="stylesheet" href="${path}/include/grid.css">
    
    <style>
    .vs { clear:both; width: 100%; height: 460px; 
    background-image:url("${path}/include/img/g.jpg"); background-position:center center; 
	background-repeat: no-repeat;  background-size:100% auto; }
    .content_wrap { clear:both; width: 1200px; margin: 0 auto; margin-top:0px; }
    .sub_tit { height: 144px; line-height: 144px; font-size:22px; background-color: #2e70b4; text-align:center; width: 190px; float:left; color:#fff; }
    .bread_box { height: 119px; background-color: #fff; width: 980px; float:right; padding-left: 30px; padding-top: 24px; border-bottom:1px solid #999; 
    position:relative; }
    .logo img {width: 44px;}
    .cate_tit { color:#999; font-size:24px; }
    .bread { padding-top:24px; line-height: 1.6; font-size: 16px; }
    .bread a, .bread span { color:#999; }
    .bread span.cur { color:#222; font-weight:600;}
    .sub_tit_ico_box { position:absolute; right:30px; bottom:18px; }
    .sub_tit_ico_box li { float:left; margin-left:10px; }
    .sub_tit_ico_box li a { display:block; color:#fff; }
    .sub_tit_ico_box li a.ico { width: 34px; height: 34px; background-position:center center; background-repeat: no-repeat; border-radius:18px; border:1px solid #ccc; }
    .sub_tit_ico_box li a.ico.item1 { background-image: url("${path}/include/source/ico_sns.gif"); }
    .sub_tit_ico_box li a.ico.item2 { background-image: url("${path}/include/source/ico_print.gif"); }
    .sub_tit_ico_box li a.btn { border-radius:18px; padding: 6px 12px; width:auto; background-color: #999; }

    .leftbar { width:190px; float:left; min-height:80vh; background-color: #f0f0f0; }
    .lnb { clear:both; }
    .lnb li { clear:both; margin: 5px 6px; border:1px solid #aaa; line-height: 52px;  }
    .lnb li a { color:#222; font-size:14px; padding-left:1em; }
    .lnb li.act a { color:#0e3257; font-size:18px; font-weight:bold; }
    .page_box { width:980px; float:right; padding-left: 30px; }

    .page { padding-top:40px; overflow:visible; height:auto; min-height:100vh; }
    .page_wrap {width: 960px; }
    .page_tit { padding-bottom: 36px; color:#666; text-align: center; font-size:40px; }
    .sub_pic img { display:block; max-width:940px; height:auto;   }
    .pic_lst { clear: both; }
    .pic_lst li { float:left; margin-right: 15px; margin-bottom: 15px; }
    .pic_lst li img { max-width:460px; }
    .sub_pic_tit { clear:both; font-size:20px; line-height: 1.6; }
    .sub_pic_com { clear:both; font-size:14px; line-height: 1.6; padding-bottom: 24px; }
    .sub_full_tit { clear:both; color:#2e70b4; line-height: 3; font-size:32px; text-align: center; }
    .sub_con img { display:block; max-width:940px; }
    .sub_cate_com { clear:both; padding: 14px; font-style: 12px; color:#666; line-height:1.8; 
    width: 940px; font-weight:300; }
    .map_area { clear:both; position:relative;     overflow: hidden;
    width: 940px; }
    .map_tit, .sub_cate_tit { clear:both; padding-left: 32px; line-height: 2.4; font-size:20px; 
    background-repeat: no-repeat; background-position:left center; 
    background-image: url("${path}/include/source/bull_h5.gif"); color:#134980; }

    #page2, #page3 { padding-top:130px; margin-top: 40px; border-top:5px solid deepskyblue; }
    .onepage { clear:both; width: 100%; padding-top: 50px; padding-bottom: 50px; }
    .onepage img { display:block; width: 100%; }
    .page { display:none; }
    .page:target { display:block; }

    .form { clear:both; width: 100%; }
    .table { display:table; border-top:5px solid #ccc; } /* table */
    .table_body { display:table-row-group; } /* tbody */
    .reg_row { display:block; }  /* tr */
    .reg_lb { display:table-cell; padding: 10px; width: 160px; }  /* th */
    .reg_input { display:table-cell; padding: 10px; }  /* td */
    .reg-control { display:block; width:600px; height: 42px; line-height: 42px; 
    padding-left: 14px; font-size:18px; }
    .btn { display:block; line-height:32px; width:auto; padding: 5px 40px; 
    background-color:deepskyblue; color:#fff; text-align: center; cursor:pointer; }
    .reg_btn_group { display:table-cell; }
    .btn_left { float:left; }
    .btn_right { float:right; }
    .btn_mid { float:left; margin-left:24px; margin-right: 24px; }
	.vs{background-image:url("${path}/include/img/g.jpg");}
    </style>
    <script type="text/javascript">
      $(window).resize(function(){resizeYoutube();});
      $(function(){resizeYoutube();});
      function resizeYoutube(){ $("iframe").each(function(){ if( /^https?:\/\/www.youtube.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} }); }
    </script>
	
</head>
<body>
<div class="wrap">
    <script>
    $(document).ready(function(){
        $(".lnb ul li").click(function(){
            $(".lnb ul li").removeClass("act");
            $(this).addClass("act");
        });
        $(".sub > li").click(function(){
            $(".lnb ul li").removeClass("act");
            var t = $(this).index();
            $(".lnb ul li").eq(t).addClass("act");
        });
    });    
    </script>
    <header class="hd fix">
        <div class="hd_wrap">
            <a href="/" class="logo">
                <img src="${path}/include/img/logo.JPG" alt="로고">
                <h2 class="logo_tit">관광문화</h2>
            </a>
            <nav class="tnb">
               <ul class="inner_menu">
                <c:if test="${member == null}">
                    
                     <li><a href="/board/list.do">contact</a></li>
                </c:if>
                <c:if test="${member != null}">
                    <li class="user_name">${member.name}님</li>
                    <li><a href="mypage.html">마이페이지</a></li>
                    <li><a href="/member/logout.do">로그아웃</a></li>
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
                        <a href="/introduceIsland" class="dp1">섬 소개</a>
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
                            <li><a href="/introduceIsland3#page3">가격인하업소</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/introduceIsland4" class="dp1">여행안내</a>
                        <ul class="sub">
                            <li><a href="/introduceIsland4#page1">섬 여행준비</a>
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
                            <li><a href="/introduceIsland5#page2">통영섬의 어제와 오늘</a>
                            </li>
                            <li><a href="${path}/board/list.do">공지사항</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="content fix">
        <figure class="vs" id="vs" style="border-bottom:3px solid rgb(112, 112, 112)">
            <!-- 배경 이미지로 채움 -->
        </figure>
        <div class="content_wrap">
            <div class="sub_box">
                <h2 class="sub_tit">회원가입</h2>
                <div class="bread_box">
                    <h3 class="cate_tit">회원가입</h3>
                    <p class="bread"><a href="" class="home">홈</a> &gt; <a href="">회원</a> &gt; <span class="cur">회원가입</span></p>
                </div>
            </div>
            <aside class="leftbar">
                <nav class="lnb">
                    <ul>
                        <li class="act"><a href="">회원가입</a></li>
                    </ul>
                </nav>
            </aside>
            <div class="page_box">
                <section class="onepage">
                    <div class="" style="height:20px"></div>
                    <h2 class="page_tit">회원가입</h2>
                    <div class="page_wrap">
                        <div class="login_frm_box">
                            <form method="post" action="/member/joinPro.do" class="form">
                                <div class="table">
                                    <ul class="table_body">
                                        <li class="reg_row">
                                            <div class="reg_lb"><label for="userid" class="reg-label">*아이디</label></div>
                                            <div class="reg_input">
                                               <input type="text" id="userid" name="userid" class="reg-control" maxlength="13" required />
                                            </div>
                                        </li>
                                       <li class="reg_row">
                                           <div class="reg_lb"><label for="passwd" class="reg-label">*비밀번호</label></div>
                                           <div class="reg_input">
                                               <input type="password" id="passwd" name="passwd" class="reg-control" maxlength="20" required />
                                               <input type="hidden" name="passwd" value="">
                                           </div>
                                        </li>
                                       <li class="reg_row">
                                           <div class="reg_lb"><label for="userPwChk" class="reg-label">*비밀번호 확인 </label></div>
                                           <div class="reg_input">
                                               ​<input type="password" id="userPwChk" name="passwds2" class="reg-control" maxlength="20" required />
                                           </div>
                                        </li>
                                       <li class="reg_row">
                                           <div class="reg_lb"><label for="name" class="reg-label">*이름</label></div>
                                           <div class="reg_input">
                                                <input type="text" id="name" name="name" class="reg-control" maxlength="13" required />
                                           </div>
                                        </li>
                                        <li class="reg_row">
                                            <div class="reg_lb"><label for="email" class="reg-label">*이메일</label></div>
                                            <div class="reg_input">
                                                <input type="text" id="email" name="email" class="reg-control" maxlength="50" />
                                            </div>
                                        </li>
                                        <li class="reg_row">
                                            <div class="reg_lb"><label for="phone" class="reg-label">*전화번호, '-' 입력 제외 </label></div>
                                            <div class="reg_input">
                                                <input type="text" id="phone" name="phone" class="reg-control" maxlength="15" />
                                            </div>
                                        </li>
                                        <li class="reg_row">
                                            <div class="reg_lb"><label class="reg-label" id="birth">*생년월일</label></div>
                                            <div class="reg_input">
                                                <input type="text" id="birth" name="birth" class="reg-control" maxlength="8" />
                                            </div>
                                        </li>
                                        <li class="reg_row">
                                            <div class="reg_btn_group" colspan="2">
                                                <div class="reg_lb"><input type="submit" class="btn btn_left" id="reg_form_btn" value="회원가입" /></div>
                                                <div class="reg_input"><input type="reset" class="btn btn_right" id="reg_form_btn2" value="취소" /></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </form>
                         </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <h2 class="page_tit">회원약관</h2>
                    <div class="page_wrap">
					
                    </div>
                </section>
                <section class="page" id="page3">
                    <h2 class="page_tit">회원혜택</h2>
                    <div class="page_wrap">
                    </div>
                </section>
            </div>
        </div>    
    </div>
     <footer class="ft fix">
        <nav class="fnb">
            <ul class="fnb_fr">
                <li><a href="https://www.tongyeong.go.kr/00001/00139/00257.web">관광사업소</a></li>
                <li><a href="https://www.tongyeong.go.kr/00001/00286/00289.web">면/동</a></li>
                <li><a href="https://www.tongyeong.go.kr/01174/04860.web">시/군청</a></li>
                <li><a href="https://www.tongyeong.go.kr/welfare.web">패밀리사이트</a></li>
            </ul>
        </nav>
        <div class="ft_wrap">
            <nav class="linkbar">
                <ul>
                    <li><a href="https://www.tongyeong.go.kr/01174/01176/01177.web">개인정보처리방침</a></li>
                    <li><a href="https://www.tongyeong.go.kr/01174/01181.web">이메일무단수집거부</a></li>
                    <li><a href="https://www.tongyeong.go.kr/01174/03544.web">저작권정책</a></li>
                    <li><a href="https://www.tongyeong.go.kr/01174/01179.web">홈페이지 개선건의</a></li>
                    <li><a href="https://www.tongyeong.go.kr/01174/01180.web">뷰어다운로드</a></li>
                </ul>
            </nav>
            <div class="copyright">
                <p class="addr">(53040) 경상남도 통영시 통영해안로 515(무전동)   / 안내전화 : 1577-0557   팩스 : 055-650-3400</p>
                <p class="copy">Copyright (C) 2016 Tongyeong City. All rights reserved.</p>
            </div>
            <div class="wa"><img src="${path}/include/source/wacc-logo.png" alt="WA인증로고"></div>
        </div>
    </footer>
</div>
<script type="text/javascript">
$(window).resize(function(){resizeYoutube();});
$(function(){resizeYoutube();});
function resizeYoutube(){ $("iframe").each(function(){ if( /^https?:\/\/www.youtube.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} }); }
</script>
</body>
</html>
