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
    <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>
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
                    <li><a href="member/logout.do">로그아웃</a></li>
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
                        <a href="${path}/introduceIsland" class="dp1">섬 소개</a>
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
            <!-- 배경 이미지로 채움 -->
            <div class="tit_box0">
            <h2 class="vs_tit0">관광·체험·축제</h2>
            <p class="vs_com0">아름다운 섬, 색다른 섬여행</p>
        </div>
        </figure>
        <div class="content_wrap">
            <div class="sub_box">
                <h2 class="sub_tit">관광·체험·축제</h2>
                <div class="bread_box">
                    <h3 class="cate_tit">통영 여행</h3>
                    <p class="bread"><a href="" class="home">홈</a> &gt; <a href="">관광·체험·축제</a> <!-- &gt; <span class="cur">섬 여행코스</span> --></p>
                    <ul class="sub_tit_ico_box">
                        <li><a href="" class="ico item1"></a></li>
                        <li><a href="" class="ico item2"></a></li>
                       <!--  <li><a href="" class="btn">정보수정요청</a></li> -->
                    </ul>
                </div>
            </div>
            <aside class="leftbar">
                <nav class="lnb">
                    <ul>
                        <li class="act"><a href="#page1">섬 여행코스</a></li>
                        <li><a href="#page2">관광명소</a></li>
                        <li><a href="#page3">경치</a></li>
                    </ul>
                </nav>
            </aside>
            <div class="page_box">
            <div class="wrap" id="page1">
            <h2 class="title">섬 탐방코스</h2>
            <ul class="lst3">
            <li>
            <a href="https://www.badaland.com/01483/01485/01486.web?idx=2016&amode=view">
                <div class="card_wrap"><img src="${path}/include/img/소매물도4.jpg" 
                alt="소매물도"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit"> 매물도 방면 코스 </h3>
                    <p class="card_com" style="text-align:center">통영8경 "소매물도에서 바라본 등대섬" <br>소매물도와 등대섬의 기암괴석과 총석단애가 <br>특히 절경이며,썰물일 때는 소매물도와 등대섬 <br>사이 50m 바닷길이 열리는데 하루에 두 번 크고 <br>작은 몽돌이 맨몸을 드러내면,걸어서 아름다운 <br>등대섬에 갈 수가 있다.</p>
                	<p style="font-size:12px; text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">경상남도 통영시 한산면 매죽리 소매물도</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/좌도2.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit"> 장사도상륙+한려수도 일주코스 </h3>
                    <p class="card_com" style="text-align:center">산정에 오르면 동.서.남으로 점점이 떠있는 <br>한려수도의 수려한 섬뿐만 아니라 한산대첩 <br>구국의 현장을 한눈에 조망할 수 있다.<br>볼거리와 먹거리가 많으며 전국의 송림을 즐길 수 있는 곳이며 도시의 각종 스트레스와 공해를 말끔히 털어버릴 수 있는 가장 안성맞춤인 코스이다. <br> </p>
                	<p style="font-size:12px; text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">경상남도 통영시 한산면 창좌리</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/제승당22.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">명승지 중의 명승지요</h3>
                    <p class="card_com" style="text-align:center">통영항에서 배를 타고 20여 분쯤 가면 한려수도 <br>관광 1번지 한산도제승당에 이른다.임진란 당시 <br>대밭을 육성하여 화살을 공급받던 섬이다. 한 <br>덩이의 돌로 조각한 것으로 유명한 제승당 입구의 거북등대는 오가는 선박의 길잡이로 한산 앞바다 영원한 지킴이로 굳건히 자리를 지키고 있다. </p>
                    <p style="font-size:12px; text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">경상남도 통영시 한산면 한산일주로 70</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/추봉도4.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">봉암수석으로 유명한 추봉도</h3>
                    <p class="card_com" style="text-align:center">추봉도는 전국적으로 「봉암수석」으로 유명하다.<br>특히 해안 곡면을 따라 펼쳐진 1km의 봉암몽돌해수욕장은 흔히 있는 모래해변과는 또 다른 멋을 <br>더해주는 해수욕장으로,해변을 따라 300m정도의 산책로가 있어 해수욕과 바다산책을 동시에 <br>즐길수 있는 곳이기도 하다.</p>
               		<p style="font-size:12px; text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">경상남도 통영시 한산면 추봉도</p>	
				</div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/천황산.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">천황산</h3>
                    <p class="card_com" style="text-align:center">사시사철 언제 찾아도 편안하게 쉬어갈 수 있는 <br>욕지도의 최고봉인 천황산은 해발 392m의 산으로 예로부터 마을 사람들이 산기슭의 제당에 천황산신을 모시고 제사를 지낸 것에서 유래했으며 <br>바다에서 밀려온 파도가 부서지는 해안절경을 <br>조망할 수 있는 것이다.  </p>
                    <p style="font-size:12px; text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">경상남도 통영시 욕지면 욕지도</p>	
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/연화사.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">연화대사와 사명대사의 수도성지</h3>
                    <p class="card_com" style="text-align:center" >1998년 8월 조계종 총무원장을 지낸 고산 스님이 도사가 머물며 수도했다는 산자락에 절집 ‘연화사’를 창건하였다. 400여 년전 연화도사, 사명대사, 자운선사 등이 이곳에서 수행하였다고 한다. 연화도에는 연화포구를 둘러싼 사방이 기암절벽으로 <br>형성되어 있다. </p>
                    <p style="font-size:12px; text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">경상남도 통영시 욕지면 욕지도</p>	
                </div>
            </a>
        </li>
            </ul>
            </div>	
             </div>
             <div align="center">
              <div id="map" style="width: 500px; height: 400px;"></div>

  <script type="text/javascript">
    var locations = [
      ['소매물도', 34.62754051353154, 128.550609269728],
      ['좌도', 34.7884530080403, 128.50282786735175],
      ['제승당', 34.793334747888, 128.47325475484578],
      ['추봉도', 34.76363554486176, 128.521386138595],
      ['천황산', 34.63644798363537, 128.2494426697328],
      ['연화사', 34.63644798363537, 128.2494426697328]
    ];

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 12,
      center: new google.maps.LatLng(34.85463633180435, 128.433168826736),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        id:i,
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
      if(marker)
      {
        marker.addListener('click', function() {
          map.setZoom(15);
          map.setCenter(this.getPosition());
        });
        }
    }
  </script>
   </div>
          <div class="page_box">
            <div class="wrap" id="page2">
            <h2 class="title">관광명소</h2>
            <p class="title_com">출렁다리</p>
            <ul class="lst3">
            <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/연대도에서본+출렁다리.jpg.small.jpg" 
                alt="연대도에서 본 출렁다리"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">연대도-만지도 출렁다리</h3>
                    <p class="card_com" style="font-size:14px">· 주소 : 경상남도 통영시 산양읍 저림리<br> · 관리기관 : 산양읍사무소 <br> · 문의전화 : 055-650-3500 <br> · 권역 : 산양권 <br>경남 해안에서는 처음 등장한 섬과 섬을 잇는 <br>출렁다리이며 산양읍 연대도와 만지도를 걸어서 <br>오갈 수 있다.</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/연화도출렁다리1.JPG" 
                alt="연화도출렁다리"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">연화도 출렁다리</h3>
                    <p class="card_com" style="font-size:13px">· 주소 : 경상남도 통영시 욕지면 연화리 연화도<br> · 관리기관 : 욕지면사무소 <br> · 문의전화 : 055-650-3580 <br> · 권역 : 욕지권 <br>연화도의 새로운 명물로 등장한 출렁다리는 총길이 44m로 일명 ‘돼지목’으로 불리는 험준한 협곡을 잇는 현수교 형식의 시설로 통영8경중의 하나인 용머리를 조망할 수 있다. </p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/출렁당리1.jpg" 
                alt="추도"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">욕지도 비렁길(출렁다리)</h3>
                    <p class="card_com" style="font-size:13px">· 주소 : 경상남도 통영시 욕지면<br> · 관리기관 : 욕지면사무소 <br> · 문의전화 : 055-650-3580 <br> · 권역 : 욕지권 <br>비렁길은 욕지도의 노적에서 혼곡 마을까지 이어지는 벼랑길이다. 비렁은 벼랑의 경상도 사투리로 욕지도 <br>주민들이 예부터 이용해온 벼랑길을 다듬어 950여m의 아찔한 해안산책로로 정비하였다. </p>
                </div>
            </a>
        </li>        
            </ul>
            </div>	
             </div>
             
              <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div align="center">
<div id="daumRoughmapContainer1641832113141" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1641832113141",
		"key" : "28r7g",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>
</div>  
           <div class="page_box">
            <div class="wrap" id="page3">
            <h2 class="title">경치</h2>
            <ul class="lst3">
            <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/jangsa01.jpg" 
                alt="장사도해상공원"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">장사도 해상공원</h3>
                    <p class="card_com" style="font-size:13px">· 주소 : 경상남도 통영시 한산면 장사도길 55<br> · 관리기관 : 장사도해상공원(주) <br> · 문의전화 : 055-633-0362 <br> · 권역 : 한산권 <br> · 이용시간 : 08:00 ~ 19:00(동절기 08:30~17:00) <br><br>푸른보석같은 한려수도의 아름다운 섬, 이른 봄 동백 필 때면 장사도는 온통 붉은 빛 장관을 연출한다.</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/당금마을.jpg" 
                alt="매물도 당금마을 이미지"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">매물도 당금마을</h3>
                    <p class="card_com" style="font-size:13px">· 주소 : 경상남도 통영시 한산면 당금길<br> · 관리기관 : 관광안내소 <br> · 문의전화 : 055-650-0580, 2570 <br> · 권역 : 한산권 <br><br>마을 안 문패마다, 산책하는 고갯길마다, 정겨움이 <br>느껴지는 돌담길이 있으며 한올 한올 새겨진 마을의 <br>이야기가 아름답다. </p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/새에덴동산.jpg" 
                alt="새에덴동산"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">새에덴동산</h3>
                    <p class="card_com" style="font-size:13px">· 주소 : 경남 통영시 욕지면 동항리<br> · 관리기관 : 관광안내소 <br> · 문의전화 : 055-650-0580, 2570 <br> · 권역 : 욕지권 <br><br>새에덴 동산은 유동마을 끝단에 위치하고 있으며 <br>최숙자, 윤지영 두 모녀의 땀방울로 조성되고 있는 <br>믿음의 동산이다. 욕지의 새로운 명소이다.</p>
                </div>
            </a>
        </li>
            </ul>
            </div>	
             </div>
             
             <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div align="center">
<div id="daumRoughmapContainer1641832093815" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1641832093815",
		"key" : "28r7f",
		"mapWidth" : "640",
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
</div>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
