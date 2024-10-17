<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Review List</title>
    <link rel="stylesheet" href="/SpringHotel/resources/css/bootstrap.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/review.css">
</head>
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
         	<a class="navbar-brand" href="${pageContext.request.contextPath}/">Spring Hotel</a>
     	 </div>
     	  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         	<ul class="nav navbar-nav">
            	<li class="active"><a href="${pageContext.request.contextPath}/">HOME</a></li>
            	 <li><a href="${pageContext.request.contextPath}/room/roomView">객실 정보</a></li>
               <li><a href="reservation1.jsp">예약</a></li>
               <li><a href="reserveInfo.jsp">예약내역</a></li>
               <li><a href="inquiryList.jsp">Q&A</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
            	<li class="dropdown">
               		<a href="#" class="dropdown-toggle"
                  		data-toggle="dropdown" role="button" aria-haspopup="true"
                  		aria-expanded="false">접속하기<span class="caret"></span></a>
           			<ul class="dropdown-menu">
                	  	<li class="active"><a href="login.jsp">로그인</a></li>
                  		<li><a href="join.jsp">회원가입</a></li>
               		</ul>
            	</li>
         	</ul>
     	 </div> 
	</nav>
	
	
    <div class="container">
        <h2 class="text-center">Review List</h2>

        <table class="table table-striped table-bordered table-responsive">
            <thead class="thead-dark">
                <tr>
                    <th>Room ID</th>
                    <th>User Name</th>
                    <th>Rating</th>
                    <th>Comment</th>
                    <th>Logtime</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
					<c:forEach var="review" items="${reviews}">
					    <tr>
					        <td>${review.roomId}</td>
					        <td>${review.userName}</td> <!-- userId 대신 userName 출력 -->
					        <td>${review.rating}</td>
					        <td>${review.comment}</td>
					        <td>${review.logtime}</td>
					        <td>
					            <button class="btn btn-primary update-btn" data-id="${review.reviewId}">Update</button>
					        </td>
					        <td>
					            <button class="btn btn-danger delete-btn" data-id="${review.reviewId}">Delete</button>
					        </td>
					    </tr>
					</c:forEach>
            </tbody>
        </table>
        
        <div class="text-center">
            <input type="button" class="btn btn-success" value="Index" onclick="window.location.href='${pageContext.request.contextPath}/';">
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/review.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>

</body>
</html>