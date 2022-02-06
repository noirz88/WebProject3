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
<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
</head>
<style>
.vs{background-image:url("${path}/include/img/g.jpg");}
</style>
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
            <!-- 배경 이미지로 채움 -->
            <div class="tit_box0">
            <h2 class="vs_tit0">숙박·음식·쇼핑</h2>
            <p class="vs_com0">아름다운 섬, 색다른 섬여행</p>
        </div>
        </figure>
        <div class="content_wrap">
            <div class="sub_box">
                <h2 class="sub_tit">숙박·음식·쇼핑</h2>
                <div class="bread_box">
                    <h3 class="cate_tit">통영 여행</h3>
                    <p class="bread"><a href="" class="home">홈</a> &gt; <a href="">숙박·음식·쇼핑</a> <!-- &gt; <span class="cur">숙박</span> --></p>
                    <ul class="sub_tit_ico_box">
                        <li><a href="" class="ico item1"></a></li>
                        <li><a href="" class="ico item2"></a></li>
                        <!-- <li><a href="" class="btn">정보수정요청</a></li> -->
                    </ul>
                </div>
            </div>
            <aside class="leftbar">
                <nav class="lnb">
                    <ul>
                        <li class="act"><a href="#page1">숙박</a></li>
                        <li><a href="#page2">음식</a></li>
                        <li><a href="https://goodprice.go.kr/user/cmm/main/mainPage.do;jsessionid=4C275130CAC952439955A9018FA019C2">가격인하업소</a></li>
                    </ul>
                </nav>
            </aside>
            <div class="page_box">
            <div class="wrap" id="page1">
            <h2 class="title">산양권</h2>
            <ul class="lst3">
            <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/펜션1.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">한산호텔</h3>
                    <p class="card_com" style="text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">통영에 자리한 한산 호텔에서는 무료 Wi-Fi, 바다 전망을 갖춘 객실을 이용하실 수 있습니다. <br>숙소는 병선마당에서 6분 거리에 있습니다. 해당 <br>3성급 호텔에는 수하물 보관소 등이 완비되어 있습니다. 가족 객실 이용이 가능한 호텔입니다. 한산 호텔의 객실에는 주전자 등이 갖춰져 있습니다. </p>
                    <p style="font-size:12px; text-align:center">경남 통영, 항남동 151-86</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/펜션2.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">통영 바다사랑 펜션</h3>
                    <p class="card_com" style="text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">통영 내에 위치한 통영 바다사랑 펜션에서 머물러보세요. 숙소는 병선마당에서 6km, 거류체육공원에서 25km 거리에 있으며, 무료 Wi-Fi, 에어컨이 완비된 객실을 제공합니다. 투숙객은 테라스 등이 마련된 정원을 이용할 수 있습니다. 구내에는 전용 주차장이 마련되어 있습니다. </p>
                    <p style="font-size:12px; text-align:center">경남 통영, 산양읍 삼칭이해안길 226-2 </p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/펜션3.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">통영 원게스트하우스</h3>
                    <p class="card_com" style="text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">통영 원게스트하우스는 통영 스카이라인 루지와 한려수도 조망 케이블카에서 650m 거리에 있습니다. 매일 토스트, 시리얼, 커피로 구성된 간단한 조식이 제공됩니다. 각 객실에 옷걸이 및 샤워 시설이 완비된 전용 욕실이 있습니다. 게스트하우스 전역에서 무료 Wi-Fi의 이용이 가능합니다.  </p>
                    <p style="font-size:12px; text-align:center">경남 통영, 데메3길 27-35 </p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/펜션4.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">통영 별자리 펜션</h3>
                    <p class="card_com" style="text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">통영 내에 위치한 통영 별자리 펜션에서 머물러보세요. 숙소는 병선마당에서 9km 거리에 있으며, 정원 전망, 무료 Wi-Fi, 무료 전용 주차장 등을 제공합니다. 객실에는 에어컨, 각종 시설을 갖춘 주방, 평면 TV, 샤워 시설, 슬리퍼, 헤어드라이어 등을 구비한 전용 욕실이 마련되어 있습니다.</p>
                    <p style="font-size:12px; text-align:center">경남 통영, 산양읍 신전리 1411 </p>	
				</div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/펜션5.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">클럽이에스 통영리조트</h3>
                    <p class="card_com" style="text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">통영에 자리한 클럽이에스 통영리조트에서는 레스토랑, 무료 전용 주차장, 바, 정원 등을 이용하실 수 있습니다. 해당 숙소에는 투숙객을 위한 ATM(현금 지급기), 테라스 등이 구비되어 있습니다. 숙소에는 야간 오락거리, 24시간 프런트  <br>데스크 등이 구비되어 있습니다.</p>
                    <p style="font-size:12px; text-align:center">경남 통영, 산양읍 척포길 628-113  </p>		
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/펜션6.jpg" 
                alt=""></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">통영 에이스 호텔</h3>
                    <p class="card_com" style="text-align:center"><img src="${path}/include/source/ic100mapmarker1here1.png" alt="위치아이콘" style="width:30px">통영에 자리한 숙박시설인 통영 에이스 호텔에서 머물러보세요. 숙소는 병선마당에서 13분 <br>거리, 거류산성에서 20km, 거류체육공원에서 25km 거리에 있습니다. 모든 숙박 옵션에는 에어컨, <br>전자레인지, 냉장고, 주전자, 비데, 목욕 가운, <br>옷장 등이 완비되어 있습니다.</p>
                    <p style="font-size:12px; text-align:center">경남 통영, 장좌로 30  </p>	
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
      ['한산호텔',34.83989829476907, 128.4221792819384],
      ['통영 바다사랑 펜션', 34.82055419855478, 128.43899912611553],
      ['통영 원게스트하우스', 34.82913020043107, 128.42211312426707],
      ['별자리 펜션', 34.80250152339606, 128.40696848378593],
      ['통영이에스리조트', 34.7657882760734, 128.40959521077167],
      ['통영 에이스 호텔', 34.855158941653094, 128.43296688739272]
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
            <h2 class="title">음식</h2>
            <p class="title_com">통영 대표 맛집</p>
            <ul class="lst3">
            <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/음식1.jpg" 
                alt="통영 어촌싱싱해물탕"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">어촌싱싱해물탕</h3>
                    <p class="card_com" style="font-size:14px">· 주소 : 경상남도 통영시 도천동 1003<br> · 전화번호 : 055-646-1982 <br><br>통영 바다가 한눈에 보이는 해안가에 위치한 해물탕 전문점 ‘어촌 싱싱 회해물탕’입니다. 대표 메뉴는 문어, 전복, 꽃게, 각종 조개 등 싱싱한 해물을 냄비가 넘칠 정도로 제공되는 ‘해물탕’입니다.</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/음식2.jpg" 
                alt="통영 분소식당"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">통영 분소식당</h3>
                    <p class="card_com" style="font-size:14px">· 주소 : 경상남도 통영시 서호동 177-430<br> · 전화번호 : 055-644-0495 <br><br>통영 서호시장 내에 위치한 '분소식당'. 콩나물과 미나리를 넣고 맑게 끓여낸 '복국'과 물메기 <br>살코기와 내장, 모자반을 넣어 담백하게 끓여낸 <br>'물메기탕'이 인기 메뉴입니다. </p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="card_wrap"><img src="${path}/include/img/음식3.jpg" 
                alt="통영 울산다찌"></div>
                <div class="card_tit_box">
                    <h3 class="card_tit">울산다찌</h3>
                    <p class="card_com" style="font-size:14px">· 주소 : 경상남도 통영시 봉평동 447<br> · 전화번호 : 055-645-1350 <br><br>메뉴는 가격에 따라 기본, 매물도, 비진도 등이 있으며 기본 주문 시 소주 세 병이 포함된 한 상이 나옵니다. 이후로는 소주 1병 추가 시  산낙지, 장어내장, 오징어 회 등이 계속해서 나오는 방식입니다. </p>
                </div>
            </a>
        </li>        
            </ul>
            </div>	
             </div>
             
              <div align="center">
              <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1641904431914" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1641904431914",
		"key" : "28rt4",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>
   </div>
           <div class="page_box">
            <div class="wrap" id="page3">
            <h2 class="title">가격인하업소 링크 연결</h2>
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
    </div>    <footer class="ft fix">
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
