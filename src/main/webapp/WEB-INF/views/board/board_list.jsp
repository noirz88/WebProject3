<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판 목록</title>
<%@ include file="../include/head.jsp" %>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.blank { clear:both; float:none; width:100%; height:60px; }
.title{text-align:center;}
.container{width:100%;}
.vs{margin-top:-10px;}
.gnb:hover::before {margin-top:-12px;}
</style>
</head>
<body>
<div class="container">
	<%@ include file="../include/menu.jsp" %>
	<h2 class="title">목록</h2>
	<%-- <c:if test="${member.userid == 'admin'}"> --%>
		<a href="${path}/board/writer_page">글쓰기</a>
<%-- 	</c:if> --%>
	 <div class="table">
	<table class="table table-striped" id="data">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>	
			<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.bno}</td>
				<td><a href="${path}/board/read.do?bno=${row.bno}">${row.title}</a></td>
				<td>${row.writer}</td>
				<td>
					<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
				<td>${row.viewcnt}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<script>
	$(function(){
		$("#data").DataTable();		//#dataTable는 반드시 table 태그일 것.
	});
	</script>
	<div class="blank"></div>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>