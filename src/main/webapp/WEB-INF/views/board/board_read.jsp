<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 보기</title>
<%@ include file="../include/head.jsp" %>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${path}/include/common.css">
</head>
<style>
.title{text-align:center;}
table{width: 400px; height: 200px; margin-left: auto; margin-right: auto;}
td, th{text-align:center;}
</style>
<body>
<div class="wrap">
    <%@ include file="../include/menu.jsp" %>
    <div class="content">
	    <h2 class="title">글 상세보기</h2>
		<c:if test="${member.userid == 'admin'}">
	    	<a href="${path}/board/writer_page">글쓰기</a>
	    </c:if>
	    <table border="1" style="text-align:center">
	        <th> 정보 </th>
	        <th> 데이터 </th>
	        <tr>
	            <td>작성일자</td>
	            <td><fmt:formatDate value="${data.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
	            </td>
	        </tr>
	        <tr>
	            <td>글번호</td><td>${data.bno}</td>
	        </tr>
	        <tr>
	            <td>글제목</td><td>${data.title}</td>
	        </tr>
	        <tr>
	            <td>글내용</td><td>${data.content}</td>
	        </tr>
	        <tr><td>글쓴이</td><td>${data.writer}</td></tr>
	        <tr><td>조회수</td><td>${data.viewcnt}</td></tr>
	    </table>
		<c:if test="${member.userid == 'admin'}">
		    <a href="${path}/board/updatepage?bno=${data.bno}">수정</a>
		    <a href="${path}/board/delete.do?bno=${data.bno}">삭제</a>
	    </c:if>
	    <div style="text-align:center; margin-top:10px">
	    <a href="${path}/board/list.do">목록</a>
	    </div>
    </div>
   	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>