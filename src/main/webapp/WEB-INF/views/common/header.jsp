<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<nav class="navbar navbar-default">
	<div class="navbar-header">
        	<button type="button" class="navbar-toggle collapsed"
           	data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
           	aria-expanded="false">
           	<span class="icon-bar"></span>
           	<span class="icon-bar"></span>
           	<span class="icon-bar"></span>
        	</button>
		<a class="navbar-brand" href="/SpringHotel/">Spring HOTEL</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    	<ul class="nav navbar-nav">
    		<c:if test="${sessionScope.adminId != null}">
    			<li><a href="/SpringHotel/admin/checkUser">회원조회</a></li>
            	<li><a href="/SpringHotel/admin/updateRoom">객실 정보</a></li>
            	<li><a href="/SpringHotel/admin/checkReserve">예약내역</a></li>
            	<li><a href="/SpringHotel/admin/inquiryList">Q&A</a></li>
    		</c:if>
    		<!-- 로그인 전 && 사용자 로그인-->
    		<c:if test="${sessionScope.adminId == null}">
    			<li id="header-1"><a href="/SpringHotel/">HOME</a></li>
	          	<li id="header-2"><a href="/SpringHotel/room/roomView">객실 정보</a></li>
	            <li id="header-3"><a href="/SpringHotel/">예약</a></li>
	            <li id="header-4"><a href="/SpringHotel/">예약내역</a></li>
	            <li id="header-5"><a href="/SpringHotel/">Q&A</a></li>
    		</c:if>
        </ul>
        <ul class="nav navbar-nav navbar-right">
        	<c:if test="${sessionScope.userName == null && sessionScope.adminId == null}">
        		<li class="dropdown">
	          		<a href="#" class="dropdown-toggle"
	          			data-toggle="dropdown" role="button" aria-haspopup="true"
	          			aria-expanded="false">접속하기<span class="caret"></span>
	          		</a>
	         		<ul class="dropdown-menu">
	              		<li id="header-loginMenu"><a href="/SpringHotel/user/login">로그인</a></li>
	                	<li id="header-joinMenu"><a href="/SpringHotel/user/join">회원가입</a></li>
	                	<li id="header-adminMenu"><a href="/SpringHotel/admin/login">관리자</a></li>
	             	</ul>
	          	</li>
        	</c:if>
          	<c:if test="${sessionScope.userName != null}">
        		<li class="dropdown">
	          		<a href="#" class="dropdown-toggle"
	          			data-toggle="dropdown" role="button" aria-haspopup="true"
	          			aria-expanded="false">접속하기<span class="caret"></span>
	          		</a>
	         		<ul class="dropdown-menu">
	              		<li><a href="/SpringHotel/">${sessionScope.userName }</a></li>
	                	<li><a href="/SpringHotel/user/logout">로그아웃</a></li>
	             	</ul>
	          	</li>
        	</c:if>
        	<c:if test="${sessionScope.adminId != null}">
    			<li class="dropdown">
	          		<a href="#" class="dropdown-toggle"
	          			data-toggle="dropdown" role="button" aria-haspopup="true"
	          			aria-expanded="false">접속하기<span class="caret"></span>
	          		</a>
	         		<ul class="dropdown-menu">
	              		<li>관리자</li>
	                	<li><a href="/SpringHotel/user/logout">로그아웃</a></li>
	             	</ul>
	          	</li>
    		</c:if>
       	</ul>
   	 </div> 
</nav>
</body>