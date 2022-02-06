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
#item1 {background-image: url("${path}/include/img/p1.jpg");}
#item2 { background-color: black;}
#item3 { background-image: url("${path}/include/img/a.jpg");}
#item4 { background-image: url("${path}/include/source/item4_bg.png");}
#item5 { background-image: url("${path}/include/img/b.jpg");}
#item8 { background-color:#00436f; background-image: url("${path}/include/source/item8_bg.jpg");}
#item9 { background-image: url("${path}/include/img/4.jpg");}
#item10 { background-image: url("${path}/include/img/c.JPG");}
#item11 { background-color: white;}

.vs{clear: both; position: relative; width: 100%;}
.logo img {width: 44px;}
.vs .img_box li{width: 25%; float: left;}
.vs .img_box li a{display: block;}
.vs .img_box .vs_img{display: block; width: 100%; margin-top: -10px;}
.vs .img_box .tit_box{position: absolute; top:100px; left: 267px; z-index:4;
padding:60px 200px; color:white; text-align: center; margin-top: 35px;}
.vs .img_box .vs_tit{font-family: 'TTTogether'; font-size:80px;
font-weight: 300; text-shadow: 2px 2px 2px darkslategrey;}
.vs .img_box .vs_com{font-size: 18px; text-shadow: 2px 2px 2px #000;}
h2.vs_tit1{position: absolute;}
h2.vs_tit{margin-left: auto; margin-right: auto;}
p.vs_com{margin-left: auto; margin-right: auto;}

.btn_box li button{background-color: transparent; display: block; width: 40px; 
height: 280px; background-repeat: no-repeat; background-position: center center;
background-size: 100% 100%; position: absolute; top: 100px; z-index: 5;
text-indent: -10000px;  cursor: pointer; }
.btn_box li.btn1 button{left: 50px; background-image: url("${path}/include/source/arrow1.png")};
.btn_box li.btn2 button{right: 50px; background-image: url("${path}/include/source/arrow2.png")};
.tit_box{width: 440px; height: 440px; background-color: burlywood; color: white;
text-align: center; padding-top: 300px; box-sizing: border-box;
position: absolute; left: 50%; margin-left: -220px; top: -180px; border-radius: 50%; margin-top: -300px;}
#page1{display:block; position:relative; padding-top: 190px; background: url(${path}/include/img/po.jpg) center top no-repeat #fff; 
background-size: 100%;}
#page1:before{content: ""; display: block; width: 440px; height: 440px; background-color: #05a4a6; color: white;
text-align: center; padding-top: 330px; box-sizing: border-box;
position: absolute; left: 50%; margin-left: -222px; border-radius: 50%; margin-top: -492px;}
.half_tit1{font-size: 24px; padding-left: 100px; padding-top: 120px; color: white;
text-shadow: 1px 1px 1px #4c7ed4;}
.half_tit2{ font-size: 48px; padding-left: 100px; padding-top: 40px; color: white; font-family: 'TTTogether'; font-weight: 400;}
.half_com{color: white; padding: 40px 100px; font-size: 18px; text-shadow: 2px 2px 2px #000 -1px -1px -1px #333; border-top: 3px;}
#page2 {position: relative; 
background: url("${path}/include/source/bg2.png") center top no-repeat #c0e6d7;
background-image: url("${path}/include/source/bg2.png")
background-size: 100% auto;}
#page2 .ptit_box{background-color: #00436f;}
#item6{width: 400%; }
#item6 li{width: 25%; float: left;}

.col_vs_tit_box{position: absolute; top: 0; left: 0;}
.col_vs_tit { clear:both; width: 100%;  padding-top: 50px; text-align: center; margin-top: 206px; margin-left: -20px;}
.fix{margin-left: 10px;}
section #page1.page.fix{background-color: #000;}
.bx-wrapper{margin-bottom: -5px;}
#page3 .news_lst{ clear: both;}
#page3 .news_lst > .col6{float: left; box-sizing: border-box;}
#vs { clear:both; position:relative; width: 100%; }
.btn_box li button {  background-color:transparent; display:block; width: 40px; height: 280px; 
background-repeat: no-repeat; background-position: center center; 
background-size:100% 100%; position:absolute; top:160px; z-index:5; 
text-indent:-10000px; cursor:pointer; display:none;}
.btn_box li.btn1 button { left:50px; background-image: url("${path}/include/source/arrow1.png");}
.btn_box li.btn2 button { right:50px; background-image: url("${path}/include/source/arrow2.png");}
#page1 { position:relative; background:url("${path}/include/img/bg_mainbody.jpg") center top no-repeat #c0e6d7; background-size:150% auto; }
.page:before { content:""; display:block; width: 440px; height: 440px; 
position:fixed; background-color:#a0b3ab; border-radius:50%; 
left:50%; margin-left: -193px; margin-top: -478px;  opacity:0.7;   }
.ptit_box { width: 440px; height: 440px; background-color:gray; color:#fff; 
text-align: center; padding-top: 330px; box-sizing: border-box; position:relative; left: 50%; margin-left: -222px; 
border-radius:50%; margin-top: -492px;}
.ptit_box1{margin-top:53px;}
.pg_tit2 {  font-family: 'TTTogether'; font-size:36px; font-weight:400; }
.col_tit { color:#fff; text-align: center; line-height:3; width: 100%; clear:both; margin-top: 28px; }
.col_tit:after { content:""; display:block; width: 40px; height: 2px; 
background-color: #fff; clear:both; margin:0px auto; margin-bottom: 20px; }
.col_com { color:#fff; padding: 20px 60px; font-size:14px; text-align: center;}

#page1 .col_link, #page2 .col_link { display:block;  clear:both; float:none; width: 38px; height: 38px; 
margin: 10px auto; background-image: url("${path}/include/source/family-arrow.png");
border-radius:21px; border:2px solid #fff;  text-indent:-10000px;
background-repeat: no-repeat; background-position:center center; 
transform: rotate(90deg);}
.half_tit1 { font-size:24px; padding-left: 100px; padding-top:120px; color:#fff; text-shadow:1px 1px 2px #333; }
.half_tit2 { font-size:48px; padding-left: 100px; padding-top:40px; color:#fff; 
font-family: 'TTTogether';  font-weight:400; text-shadow:2px 2px 2px #333; }
.half_com { color:#fff; padding:40px 100px; font-size:18px; text-shadow:1px 1px 1px #000, -1px -1px 1px #000; }
#page2 { position:relative; background-image:url("${path}/include/source/bg2.png"), url("${path}/include/source/pngwing.png");
background-size:120% auto; background-position:center top, center bottom; background-repeat: no-repeat; background-color:#c0e6d7;}
#page2 .ptit_box { background-color: #00436f;}
#item6 { width: 400%;  transition-delay:0.05s; 
transition-duration:0.6s; }

#item6 li { width: 25%; float:left; }
.thumb_vs_wrap { position:absolute; right:0; bottom: 0; overflow:hidden; width: 300px; height: 277px; margin-right: 759px;}
#item7 { width: 400%; margin-left: 0; transition-delay:0.05s; 
transition-duration:0.6s; }
#item7 li { width: 25%; float:left; }
#item7 li label { display:block; width: 18px; height: 36px; 
background-repeat: no-repeat; background-position:center center; position:absolute; bottom:100px; text-indent:-10000px; cursor:pointer; }
#item7 li label.lb1 { left:24px; background-image: url("${path}/include/source/prev.png"); }
#item7 li label.lb2 { right:24px; background-image: url("${path}/include/source/next.png"); }
#item7 .tbox { width: 140px; height: 140px; clear:both;overflow:hidden;   margin:20px auto; top: 50px;  border-radius:75px; border:3px solid #fff;}
.thumb_vs_wrap #item7 li label { display:none; }
.ra { display:none; }

#ra1:checked ~ .thumb_vs_wrap #item7 .item1 label { display:block; }
#ra2:checked ~ .thumb_vs_wrap #item7 .item2 label { display:block; }
#ra3:checked ~ .thumb_vs_wrap #item7 .item3 label { display:block; }
#ra4:checked ~ .thumb_vs_wrap #item7 .item4 label { display:block; }
#ra1:checked ~ .thumb_vs_wrap #item7 { margin-left: 0; }
#ra2:checked ~ .thumb_vs_wrap #item7 { margin-left:-100%; }
#ra3:checked ~ .thumb_vs_wrap #item7 { margin-left:-200%; }
#ra4:checked ~ .thumb_vs_wrap #item7 { margin-left:-300%; }
#ra1:checked ~ #item6 { margin-left: 0; }
#ra2:checked ~ #item6 { margin-left:-100%; }
#ra3:checked ~ #item6 { margin-left:-200%; }
#ra4:checked ~ #item6 { margin-left:-300%; }

.col_vs_tit span { display:block; font-family: 'TTTogether';  font-weight:400; 
padding-left:120px; font-size:48px;}
.col_vs_tit .row1 { color:white; padding:70px;}
.col_vs_com { padding-left: 120px; padding-top: 30px; }
#item8 .col_tit, #item9 .col_tit { line-height: 1.6; } 
#item9 .col_com img { border:2px solid #fff; border-radius:100px; }
#page2 .col_com { clear:both; float:none; width:auto; margin:0px auto; }
.col_tit.black_txt { color:#000; line-height: 1.6; padding-top: 12px; }
.col_tit.black_txt:after { background-color: #00b2a3; }

#item11 { position:relative; }
#item11 .link_box { position:absolute; bottom: 0; left: 0; width: 100%; }
#item11 .link_box li { display:block; width: 50%; float:left; }
#item11 .link_box li a { display:block; line-height: 65px; height: 65px; color:#222; background-color: #00b2a3; 
padding-left:64px; font-size:14px; border-top:1px solid #fff; border-left:1px solid #fff; 
background-repeat: no-repeat; background-position:18px center; }
#item11 .link_box li:nth-child(2n+1) a { border-left:0px; }
#item11 .link_box li.item1 a { background-image: url("${path}/include/source/pg2_icon1.png"); }
#item11 .link_box li.item2 a { background-image: url("${path}/include/source/pg2_icon2.png"); }
#item11 .link_box li.item3 a { background-image: url("${path}/include/source/pg2_icon3.png"); }
#item11 .link_box li.item4 a { background-image: url("${path}/include/source/pg2_icon4.png"); }
#page3 { background-image:url("${path}/include/img/g1.png"), url("${path}/include/source/bg3.png");
background-position:center bottom, left top; background-repeat:no-repeat, repeat; background-color:#3CA0E1; margin-top:0px; }
#page3 .ptit_box { background-color: #007bbf;}

.icon_lst { clear:both; display:block; width: 100%; padding-bottom: 50px; padding-left: 250px; paddimg-top:70px;}
.icon_lst:after { content:""; display:block; clear:both; }
.icon_lst li { float:left; width: 10%; }
.icon_lst li a { display:block; text-align: center; color:#222; font-size:14px; }
.icon_lst li a .ico_box { display:block; width: 80px; height: 80px; 
margin:10px auto; border:5px solid transparent; box-sizing:border-box; 
border-radius:48px; overflow:hidden; }
.icon_lst li a:hover { text-decoration:underline; }
.icon_lst li a:hover .ico_box { border:5px solid #007bbf; }
.icon_lst li a .ico_box img { display:block; width: 85px; height: 85px; margin: 0 auto; margin-top: -11px; margin-left: -7px;  }

#page3 .news_lst { clear:both; background-color: #fff; width: 1200px; 
margin: 0 auto; }
#page3 .news_lst:after { content:""; display:block; clear:both; }
#page3 .news_lst > .col6 { float:left; box-sizing:border-box; position:relative;
height: 420px; height:390px; overflow:hidden; }
.news_tit, .al_tit { font-size:24px; line-height: 3; padding-left: 24px; }
.news_lst .more { display:block; width: 24px; height: 24px; 
background-image: url("${path}/include/source/ico_more.png"); background-repeat: no-repeat;
background-position:center center; position:absolute; top:24px; right:24px; z-index:10; }
.noti_lst { clear:both; height: 390px; }
.noti_lst li { clear:both; padding: 10px 24px; }
.noti_lst li a { display:block; color:#666; font-size:16px; }
.noti_lst li a .noti_tit { float:left; font-weight:400; width: 420px; padding-right: 20px; 
text-overflow: ellipsis; overflow:hidden; white-space:nowrap;}
.noti_lst li a .noti_date { float:right; width: 110px; text-align:center; }
.noti_lst li:hover a .noti_tit { text-decoration: underline; }
.noti_lst li:hover a .noti_date { text-decoration: underline; }
.noti_lst li.act:before { content:""; display:block; width: 80px; height: 80px; 
background-image: url("${path}/include/source/notice_act.png"); background-repeat: no-repeat; 
background-position:center center; float:left;  }
.noti_lst li:nth-child(2) { padding-top: 30px; }
.noti_lst li.act a { float:left; width: 460px; overflow:hidden; }
.noti_lst li.act a .noti_tit { width:auto; clear:both; font-size:20px; color:#333; }
.noti_lst li.act a .noti_com { width:auto; clear:both;  border-bottom:1px solid #999; white-space: pre; width: 460px; display:-webkit-box; 
-webkit-line-clamp:3; -webkit-box-orient: vertical; }
.al_box { width: 201px; float:left; background-color: deepskyblue; height: 390px; }
.al_com { padding:8px 20px; }
.al_btn_fr { clear:both; width:168px; margin: 20px auto; margin-top: 100px; }
.al_btn_fr li { float:left; margin:8px; }
.al_btn_fr li button { display:block; width: 40px; height: 40px; 
background-repeat: no-repeat; background-position:center center; }
.al_btn_fr li button.prev { background-image: url("${path}/include/source/picLeft.jpg"); }
.al_btn_fr li button.play { background-image: url("${path}/include/source/picPlay.jpg");  }
.al_btn_fr li button.next { background-image: url("${path}/include/source/picRight.jpg");  }

.photo_box { width: 399px; float:right; height:390px; overflow:hidden; }
.photo_fr { width: 400%; }
.photo_fr li { width: 25%; float:left; position:relative; }
.photo_tit { position:absolute; top:90px; font-size:28px; color:#fff; 
text-shadow:1px 1px 2px #333, -1px -1px 2px #333; text-align: center; width: 395px; }
.photo_com { position:absolute; bottom:90px; font-size:20px; color:#fff; text-shadow:1px 1px 2px #333, -1px -1px 2px #333; 
text-align: center; width: 395px;}
.photo_img { display:block; width: 100%; height: auto; margin-top:40px;}
</style>
</head>
<body>
<div class="wrap">
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
                    <li class="name">${member.name}님</li>
                    <li><a href="/member/mypage.do">마이페이지</a></li>
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
    <div class="content fix" style="position: relative;">
        <figure class="vs bx-wrapper">
            <div class="vs_wrap bx-viewport">
                <ul class="img_box bx-slider">
                    <li>
                        <a href="">
                            <img src="${path}/include/img/d.jpg" alt="통영 욕지일주도로" class="vs_img">
                            <div class="tit_box">
                                <h2 class="vs_tit">통영 애(愛) 빠지다</h2>
                                <p class="vs_com">아름다운 섬, 색다른 섬여행 <br> 여기는 바다의 땅 통영입니다.</p>
                            </div>
                        </a>      
                    </li>
                    <li>
                        <a href="">
                            <img src="${path}/include/img/e.jpg" alt="샤량대교" class="vs_img">
                            <div class="tit_box">
                                <h2 class="vs_tit">통영 애(愛) 빠지다</h2>
                                <p class="vs_com">상도와 하도를 이어주는 그림 같은 샤랑대교 다리</p>
                            </div>
                        </a>      
                    </li>
                    <li>
                        <a href="">
                            <img src="${path}/include/img/f.jpg" alt="연대도풍경" class="vs_img">
                            <div class="tit_box">
                                <h2 class="vs_tit">통영 애(愛) 빠지다</h2>
                                <p class="vs_com">혼자보다는 함께, 두런두런 이야기 나누며 걷고 싶은 길, 연대도</p>
                            </div>
                        </a>      
                    </li>
                    <li>
                        <a href="">
                            <img src="${path}/include/img/g.jpg" alt="비진도 해수욕장" class="vs_img">
                            <div class="tit_box">
                                <h2 class="vs_tit">통영 애(愛) 빠지다</h2>
                                <p class="vs_com">해안선의 길이가 550m나 되는 천연 백사장인 비진도 해수욕장</p>
                            </div>
                        </a>      
                    </li>
                </ul>
            </div>
        </figure>
        <script>
         $(function(){
            $(".bx-slider").bxSlider({
                auto:true, //자동 슬라이딩
                speed:500,  //한 슬라이딩 속도
                pause:4000, //한 이미지 슬라이딩 후 지연속도
                mode:'horizontal', //슬라이딩 효과(fade, horizontal, vertical)
                autoControls:true, //시작,중지 버튼 추가 및 활성화
                pager:true, //페이징 버튼 만들기
                captions:true, //img요소에 걸려 있는 title 속성을 제목으로 설정할 것인지
            });
        });    
        </script>
        <section class="page fix" id="page1" style="background-color: #c0e6d7; text-align: center;"> 
            <div class="ptit_box">
                <h4 class="pg_tit1">통영 맞춤관광지</h4>
                <h2 class="pg_tit2">통영의 여행정보</h2>
            </div>
            <div class="ptit_box1">
                <img src="${path}/include/source/bin.png" style="display:block; border-radius: 50%; margin-top: -375px; width: 412px; height: 380px; 
                margin-left: 566px; margin-top: -425px;">
            </div>              
            <div class="page_wrap">
                <ul class="grid">
                    <li class="col6">
                        <div class="col6 col_item col277" id="item1">
                            <h3 class="col_tit"></h3>
                           <!--  <p class="col_com" style="text-align:center">통영 여행지의 배편을 <br>확인 할 수 있습니다.</p> -->
                          <a href="https://www.badaland.com/_res/badaland/popup/20140603/popup.html" class="col_link"></a>
                        </div>

                        <div class="col6 col_item col277" id="item2">
                            <h3 class="col_tit" style="color: white;">홍보동영상</h3>
                            <video muted autoplay loop style="width: 300px; height: 100px;">
                                <source src="${path}/include/source/videoplayback.mp4" type="video/mp4">
                            <p class="col_com">여행지의 소개 동영상을 감상하실 수 있습니다.</p>
                            <a href="" class="col_link">더보기</a>
                        </div>
                        <div class="col6 col_item col277" id="item3">
                            <h3 class="col_tit">한려해상 바다백리길</h3>
                            <p class="col_com" style="text-align:center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp올해의 관광도시, 통영</p>
                            <a href="https://www.badaland.com/01433/01440/01844.web?idx=1714&amode=view&" class="col_link">더보기</a>
                        </div>
                        <div class="col6 col_item col277" id="item4">
                            <h3 class="col_tit">배편안내</h3>
                            <p class="col_com">터미널, 선착장, 유람선, 다양한 항구를 통해서 배편을 통해서 여행할 수 있습니다.</p>
                            <a href="https://www.badaland.com/01483/01485/01486.web" class="col_link">더보기</a>
                        </div>
                    </li>
                    <li class="col6">
                        <div class="half_box col_item col554" id="item5" style="position:relative;">
                            <h4 class="half_tit1" style="margin-left: -100px;">이야기 여행</h4>
                            <h2 class="half_tit2" style="margin-left: -100px; text-shadow: 2px 2px 2px #000">통영 미래사</h2>
                            <p class="half_com"style="margin-left: 10px; text-shadow: 2px 2px 2px #000; padding:18px;">미륵신앙이 살아 숨 쉬는 통영의 미래사</p>
                            <a href="https://www.utour.go.kr/01198/01965/01202.web?idx=1677&amode=view&" class="col_link half_more">더보기</a>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page fix" id="page3">
            <div class="ptit_box">
                <h4 class="pg_tit1">소식 및 다양한 정보</h4>
                <h2 class="pg_tit2">통영의 소식정보</h2>
            </div>
            <div class="page_wrap">
                <ul class="icon_lst">
                    <li class="item1">
                        <a href="https://www.utour.go.kr/01338/01369/01371.web">
                            <div class="ico_box"><img src="${path}/include/source/menu1p02@2x.png" alt="관광안내지도"></div>
                            <span class="ico_txt">관광안내지도</span>
                        </a>
                    </li>
                    <li class="item2">
                        <a href="https://www.utour.go.kr/01338/01345/01346.web">
                            <div class="ico_box"><img src="${path}/include/source/menu1p06@2x.png" alt="해설신청"></div>
                            <span class="ico_txt">해설신청</span>
                        </a>
                    </li>
                    <li class="item3">
                        <a href="https://www.utour.go.kr/01352/01353/04781.web">
                            <div class="ico_box"><img src="${path}/include/source/menu1p05@2x.png" alt="관광불편신고"></div>
                            <span class="ico_txt">관광불편신고</span>
                        </a>
                    </li>
                    <li class="item4">
                        <a href="https://www.utour.go.kr/01352/01353/01354.web">
                            <div class="ico_box"><img src="${path}/include/source/menu1p01@2x.png" alt="관광 Q&A"></div>
                            <span class="ico_txt">관광 Q&A</span>
                        </a>
                    </li>
                    <li class="item5">
                        <a href="https://www.utour.go.kr/01338/01369/01373.web">
                            <div class="ico_box"><img src="${path}/include/source/menu1p04@2x.png" alt="관광지도신청"></div>
                            <span class="ico_txt">관광지도신청</span>
                        </a>                            
                    </li>
                    <li class="item6">
                        <a href="https://www.utour.go.kr/01338/01348/01349.web">
                            <div class="ico_box"><img src="${path}/include/source/menu1p03@2x.png" alt="교통안내"></div>
                            <span class="ico_txt">교통안내</span>
                        </a>
                    </li>
                    
            
                </ul>
                <ul class="news_lst">
                    <li class="col6">
                        <h3 class="news_tit">통영은 지금</h3>
                        <a href="https://www.utour.go.kr/01352/01358/01359.web" class="more"></a>
                        <ul class="noti_lst">
                            <li class="act">
                                <a href="">
                                    <h4 class="noti_tit">
                                        	3개 시·군(통영, 거제, 고성) 주요관광시설 지역민&연계할인 알림
                                    </h4>
                                    <p class="noti_com">연계 할인 정보
• 통영 문화사랑 음식점 당일티켓 지참 시 10%할인
• 경남관광기업지원센터 「도내 관광기업 지역인재 채용지원 사업」 참여기업 공개모집 알림
•「경남관광기업지원센터 관광 아카데미」 안내
• 관광약자 여행지원 수행기관 ·여행사 공모 안내
• 경남관광기업지원센터 관광일자리 잡페어 참여 구직자 모집 안내
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.badaland.com/01528/02258/01529.web?gcode=9586&idx=623592&amode=view&">
                                    <h4 class="noti_tit">웹방화벽 패치에 따른 통영시 홈페이지 일시중단 안내(2021.11.17. 18:00~19:00) </h4>
                                    <p class="noti_date">2022-01-14</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.utour.go.kr/01352/01358/01363.web?gcode=3187&idx=620418&amode=view&">
                                    <h4 class="noti_tit">경남관광기업지원센터 관광일자리 잡페어 참여 구직자 모집 안내</h4>
                                    <p class="noti_date">2022-01-14</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.utour.go.kr/01352/01358/01363.web?gcode=3187&idx=619524&amode=view&">
                                    <h4 class="noti_tit">관광약자 여행지원 수행기관 ·여행사 공모 안내</h4>
                                    <p class="noti_date">2022-01-14</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="col6">
                   		 <a href="https://www.utour.go.kr/01198/02297/02298.web">
                        <div class="al_box">
                            <img src="${path}/include/img/es.jpg" alt="통영추천여행지메인">
                            </a>
                        </div>
                        <div class="photo_box">
                            <ul class="photo_fr">
                                <li>
                                    <img src="${path}/include/img/11.jpg" alt="노을풍경" class="photo_img">
                                    <h4 class="photo_tit">통영 노을 풍경</h4>
                                    <p class="photo_com">2022-01-14</p>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </div>
	<div align="center">
		<!-- 1. 지도 노드 -->
		<div id="daumRoughmapContainer1642082127144"
			class="root_daum_roughmap root_daum_roughmap_landing"></div>
		<!--2. 설치 스크립트* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
		<script charset="UTF-8" class="daum_roughmap_loader_script"
			src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1642082127144",
				"key" : "28svr",
				"mapWidth" : "1400",
				"mapHeight" : "650"
			}).render();
		</script>
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
function resizeYoutube(){ $("iframe").each(function()
{ if( /^https?:\/\/www.youtube.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} }); }
</script>
</body>
</html>
