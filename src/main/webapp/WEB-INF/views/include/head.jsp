<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.board.example.dto.*" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	MemberDTO member = (MemberDTO) session.getAttribute("member");
%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>통영 관광문화</title>
<!-- 파비콘 설정 -->
<!-- <link rel="shortcut icon" href="./source/favicon.ico"> -->
<link rel="shortcut icon" href="${path}/include/source/geoje.ico">
<!-- 메타포 설정 -->
<meta name="title" content="통영 관광문화 홈페이지">
<meta name="keywords" content="통영관광문화, 통영시청 관광문화, 통영시 여행정보">
<meta name="description" content="통영관광문화 홈페이지">
<!-- 오픈그래프 설정 -->
<meta property="og:title" content="통영 관광문화 홈페이지">
<meta property="og:type" content="website">
<meta property="og:url" content="http://tour.jeoje.go.kr">
<meta property="og:description" content="통영 관광문화, 통영9경, 통영9품, 통영9미">
<meta property="og:image" content="${path}/include/source/site_thumb.jpg" />
<!-- 폰트 로딩 -->
<link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
<link href="${path}/include/datatables.min.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/include/css/fonts.css">
<!-- 필수 API 로딩 -->
<!-- 외부 스타일 연결 -->
<link rel="stylesheet" href="${path}/include/css/common.css">
<link rel="stylesheet" href="${path}/include/css/grid.css">
<script src="${path}/include/js/jquery-1.11.1.js"></script>
<script src="${path}/include/datatables.min.js"></script>
