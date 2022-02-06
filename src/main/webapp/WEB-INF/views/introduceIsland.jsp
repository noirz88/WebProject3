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
 <script src="https://code.jquery.com/jquery-latest.js"></script>
 <link rel="stylesheet" href="${path}/include/bx/jquery.bxslider.css">
 <script src="${path}/include/bx/jquery.bxslider.js"></script>
 <!-- 외부 스타일 연결 -->
 <link rel="stylesheet" href="${path}/include/css/common.css">
 <link rel="stylesheet" href="${path}/include/css/common3.css">
 <link rel="stylesheet" href="${path}/include/grid.css">
<style>
.vs{background-image:url("${path}/include/img/g.jpg");}
</style>
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
                            <li><a href="https://goodprice.go.kr/user/cmm/main/mainPage.do;jsessionid=4C275130CAC952439955A9018FA019C2">가격인하업소</a>
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
        <figure class="vs" id="vs">
        <div class="tit_box0">
            <h2 class="vs_tit0">섬소개</h2>
            <p class="vs_com0">한려수도의 비경, 보석 같은 바다 섬</p>
        </div>
        </figure>
        <div class="content_wrap">
            <div class="sub_box">
                <h2 class="sub_tit">섬 소개</h2>
                <div class="bread_box">
                    <h3 class="cate_tit">통영 여행</h3>
                    <p class="bread"><a href="" class="home">홈</a> &gt; <a href="">섬소개</a> <!-- &gt; <span class="cur">테마별 섬</span> --></p>
                    <ul class="sub_tit_ico_box">
                        <li><a href="" class="ico item1"></a></li>
                        <li><a href="" class="ico item2"></a></li>
                    </ul>
                </div>
            </div>
            <aside class="leftbar">
                <nav class="lnb">
                    <ul>
                        <li class="act"><a href="#page1">테마별 섬</a></li>
                        <li><a href="#page2">권역별 섬</a></li>
                        <li><a href="#page3">무인도 섬</a></li>
                    </ul>
                </nav>
            </aside>
				<div class="page_box">
					<div class="wrap" id="page1">
						<h2 class="title">인기만점 대표 섬(테마별 섬)</h2>
						<ul class="lst3">
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/sub1.jpg" alt="매물도 풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">빛 과 바람의 섬! 머물수록 좋은 매물도</h3>
									<p class="card_com">
										<br>· 권역 : 한산권<br> · 위치: 경상남도 통영시 한산면 매죽리 매물도<br>
										· 면적 : 1.413km2 <br> · 인구 : 58세대 134명 <br>(※ 면적.인구 :
										2015년 통계연보자료)<br> · 특징 : 소매물도와 해안암벽이 장관이다.
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/g.jpg" alt="비진도풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">행복하게 여유있게 머무를 수 있는 섬!</h3>
									<p class="card_com">
										<br>· 권역 : 한산권<br> · 위치: 경상남도 통영시 한산면 비진리 비진도<br>
										· 면적 : 2.773km2 <br> · 인구 : 104세대 184명 <br>(※ 면적.인구
										: 2015년 통계연보자료)<br> · 특징 : 산호빛 바다가 펼쳐진 비진도 섬
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/y.jpg" alt="욕지도풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">한려수도의 보석같은 섬! 욕지도</h3>
									<p class="card_com">
										<br>· 권역 : 욕지권<br> · 위치: 경상남도 통영시 욕지면 욕지도<br> ·
										면적 : 12.743km2 <br> · 인구 : 855세대 1,527명 <br>(※ 면적.인구
										: 2015년 통계연보자료)<br> · 특징 :태고의 신비를 간직한 해양웰빙휴양의 섬
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/16.jpg" alt="한산도">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">이충무공의 숨결이 서려 있는 한산도</h3>
									<p class="card_com">
										<br>· 권역 : 한산권<br> · 위치: 경상남도 통영시 한산면 한산도<br> ·
										면적 : 14.721km2 <br> · 인구 : 614세대 1,083명 <br>(※ 면적.인구
										: 2015년 통계연보자료)<br> · 특징 : 국난을 극복한 유서깊은 사적지
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/009.jpg" alt="제승당">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">한산 앞바다의 영원한 지킴이</h3>
									<p class="card_com">
										<br>· 권역 : 한산권<br> · 위치: 경상남도 통영시 한산면 한산일주로 70<br>
										· 면적 : 2.773km2 <br> · 인구 : 104세대 184명 <br>(※ 면적.인구
										: 2015년 통계연보자료)<br> · 특징 : 임진란 충무공이 군사를 진두지휘하던 곳
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/12.jpg" alt="연화도">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">피서하기 좋은 섬!</h3>
									<p class="card_com">
										<br>· 권역 : 욕지권<br> · 위치: 경상남도 통영시 욕지면 연화리<br> ·
										면적 : 1.720km2 <br> · 인구 : 101세대 175명 <br>(※ 면적.인구 :
										2015년 통계연보자료)<br> · 특징 : 전국 제일의 바다낚시터가 유명함
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- 1. 지도 노드 -->
				<div align="center">
					<div id="daumRoughmapContainer1641542509268"
						class="root_daum_roughmap root_daum_roughmap_landing"></div>
				</div>
				<!-- 2. 설치 스크립트 * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
				<script charset="UTF-8" class="daum_roughmap_loader_script"
					src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1641542509268",
						"key" : "28qch",
						"mapWidth" : "840",
						"mapHeight" : "360"
					}).render();
				</script>
				<div class="page_box">
					<div class="wrap" id="page2">
						<h2 class="title">권역별 섬</h2>
						<p class="title_com">산양권</p>
						<ul class="lst3">
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/oh.jpg" alt="오곡도">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">빛 과 바람의 섬! 머물수록 좋은 매물도</h3>
									<p class="card_com">
										<br>· 권역 : 한산권<br> · 위치: 경상남도 통영시 한산면 매죽리 매물도<br>
										· 면적 : 1.413km2 <br> · 인구 : 58세대 134명 <br>(※ 면적.인구 :
										2015년 통계연보자료)<br> · 특징 : 소매물도와 해안암벽이 장관이다.
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/ohb.jpg" alt="오비도">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">행복하게 여유있게 머무를 수 있는 섬!</h3>
									<p class="card_com">
										<br>· 권역 : 한산권<br> · 위치: 경상남도 통영시 한산면 비진리 비진도<br>
										· 면적 : 2.773km2 <br> · 인구 : 104세대 184명 <br>(※ 면적.인구
										: 2015년 통계연보자료)<br> · 특징 : 산호빛 바다가 펼쳐진 비진도 섬
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/img/ko.jpg" alt="추도">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">한려수도의 보석같은 섬! 욕지도</h3>
									<p class="card_com">
										<br>· 권역 : 욕지권<br> · 위치: 경상남도 통영시 욕지면 욕지도<br> ·
										면적 : 12.743km2 <br> · 인구 : 855세대 1,527명 <br>(※ 면적.인구
										: 2015년 통계연보자료)<br> · 특징 :태고의 신비를 간직한 해양웰빙휴양의 섬
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- 1. 지도 노드 -->
				<div align="center">
					<div id="daumRoughmapContainer1641547338650"
						class="root_daum_roughmap root_daum_roughmap_landing"></div>
				</div>
				<!--2. 설치 스크립트* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
				<script charset="UTF-8" class="daum_roughmap_loader_script"
					src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1641547338650",
						"key" : "28qe6",
						"mapWidth" : "840",
						"mapHeight" : "360"
					}).render();
				</script>
				<div class="page_box">
					<div class="wrap" id="page3">
						<h2 class="title">산양권(무인도 섬)</h2>
						<ul class="lst3">
							<li>
								<div class="card_wrap">
									<img src="${path}/include/source/mm.jpg" alt="매물도 풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">무인도 - 구을비도</h3>
									<p class="card_com">
										<br>통영 남쪽, 남해 동부 끝자락에 외로이 떠있는 <br>구을비도, 아홉 마리의 새가
										하늘을 나는 형상을 <br>하고 있다 해서 구을비라 불리고 있다. 굴비섬을 <br>끼고 보는
										일출은 자연이 빚어내는 하나의 작품이다. 수평선 너머 홍도가 어슴푸레 보일 때쯤이면 <br>부지런한
										갈매기들이 해마중을 나온다.
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/source/mm2.jpg" alt="소덕도풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">무인도 - 소덕도</h3>
									<p class="card_com">
										<br>소덕도는 시스택, 해식곡 등 다양한 지형으로 경관이 매우 우수하고, 멸종위기야생생물 Ⅰ급인
										수달이 서식하며, 다양한 상록활엽수림을 비롯하여 <br>식물구계학적 특정식물이 다수 분포하는 등 식물<br>다양성이
										풍부하여 독도 등 도서지역의 생태계<br>보전에 관한 특별법에 특정도서로 지정되었다
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/source/ss.jpg" alt="무인도송도">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">무인도 - 송도</h3>
									<p class="card_com">
										<br>한산도에서 임시 배편을 이용해 비산도로 향하는 뱃길은 아기자기한 섬들로 둘러싸여 조화롭기 <br>그지없다.한려수도의
										아름다움을 간직한 통영은 <br>어디를 둘러봐도 맑고 청정한 푸른 바다와 신선한 해산물, 섬마을
										사람들의 넉넉한 인심이 찾는 이의 마음을 푸근하게 한다.송도는 참 아름답다
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/source/yo.jpg" alt="어유도풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">무인도 - 어유도</h3>
									<p class="card_com">
										<br>어유도는 지형·경관이 우수하고, 상록활엽수림이 우수하고, 콩짜개덩굴, 야고 군락 등 희귀식물이
										<br>생육하고 있으며, 흑비둘기·황조롱이가 서식하고 있어 독도 등 도서지역의 생태계보전에 관한 <br>특별법에
										의거 특정도서로 지정되었다.
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/source/you.jpg" alt="연도풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">무인도 - 연도</h3>
									<p class="card_com">
										<br>섬이 솔개같이 생겼다고 해서 '소리도'라 불리다가 솔개 '연(鳶)'자를 '연도'가 되었다.
										신석기시대 <br>토기가 발견되었고, 삼국시대에는 유배지에서 <br>탈출한 사람이 땟목을 타고
										넘어와 이곳에서 <br>살기 시작했다.
									</p>
								</div>
							</li>
							<li>
								<div class="card_wrap">
									<img src="${path}/include/source/jam.jpg" alt="잠도 풍경">
								</div>
								<div class="card_tit_box">
									<h3 class="card_tit">무인도 - 잠도</h3>
									<p class="card_com">
										<br>섬의 형상이 ‘커다란 새 한 마리가 바다에 앉았다 날개를 퍼덕이며 비스듬히 날아오르는 것 같다’
										<br>하여 이름 붙여진 섬 ‘잠도’섬은 최고 높은 지점이 60m가 채 안 되는 야트막한 구릉으로
										이루어졌으며 마을을 중심으로 나지막한 평지가 있는 것이 <br>전부인 작은 섬이다.
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- 1. 지도 노드 -->
				<div align="center">
					<div id="daumRoughmapContainer1641736738169"
						class="root_daum_roughmap root_daum_roughmap_landing"></div>
				</div>
				<!--2. 설치 스크립트 * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
				<script charset="UTF-8" class="daum_roughmap_loader_script"
					src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1641736738169",
						"key" : "28qmy",
						"mapWidth" : "840",
						"mapHeight" : "360"
					}).render();
				</script>
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
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>