<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Hotel</title>

</head>
<body>
	<a href="/SpringHotel/user/login">로그인</a>

<h1>Welcome to Spring Hotel</h1>


	<ul>
        <li><a href="${pageContext.request.contextPath}/room/roomView">View Room View</a></li>
        <li><a href="${pageContext.request.contextPath}/review/reviewList">리뷰 리스트</a></li>
        <li><a href="${pageContext.request.contextPath}/review/reviewWriteForm">리뷰 작성</a></li>
    </ul>
<!-- 나머지 콘텐츠 -->
<div>
    <p>Spring Hotel에 오신 것을 환영합니다!</p>
</div>
</body>
</html>
