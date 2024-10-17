<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Room Detail</title>
    
    <!-- 리빌딩된 디자인에 필요한 스타일시트 추가 -->
    <link rel="stylesheet" href="/SpringHotel/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/SpringHotel/resources/css/footer.css">
    <link rel="icon" href="/SpringHotel/resources/static/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/roomDetail.css">
</head>
<body>
    <jsp:include page="../common/header.jsp" />

    <!-- 룸 상세 정보 섹션 -->
    <div class="container room-detail-container mt-5">
        <h2 class="text-center room-detail-title"><i class="fas fa-bed"></i> ${room.type} 상세 정보</h2>

        <!-- 객실 이미지 섹션 -->
        <div class="room-images">
            <div class="card mx-auto shadow-sm" style="max-width: 800px;"> <!-- 이미지 크기 고정 -->
                <img src="https://kr.object.ncloudstorage.com/springhotel/storage/${room.roomImg.imageFileName}" 
                     alt="${room.roomImg.imageOriginalFileName}" 
                     class="card-img-top img-fluid rounded">
            </div>
        </div>

        <!-- 객실 정보 섹션 -->
        <div class="room-details bg-light p-5 rounded shadow-sm">
            <div class="row">
                <div class="col-md-6">
                    <p><i class="fas fa-expand-arrows-alt"></i> 크기: ${room.size} m²</p>
                    <p><i class="fas fa-users"></i> 수용 인원: ${room.capacity}명</p>
                    <p><i class="fas fa-money-bill-wave"></i> 가격: ₩${room.price}</p>
                </div>
                <div class="col-md-6">
                    <p><i class="fas fa-info-circle"></i> 설명: ${room.description}</p>
                    <p><i class="fas fa-couch"></i> 구성: ${room.form}</p>
                    <p><i class="fas fa-mountain"></i> 전망: ${room.view}</p>
                    <p><i class="fas fa-bed"></i> 침대 유형: ${room.bedtype}</p>
                </div>
            </div>
        </div>

        <!-- 리뷰 관련 버튼 -->
        <div class="room-actions text-center mt-4">
            <a href="${pageContext.request.contextPath}/review/reviewList" class="btn btn-outline-secondary mr-2">리뷰 목록 보기</a>
            <a href="${pageContext.request.contextPath}/review/reviewWriteForm?roomId=${room.roomId}" class="btn btn-outline-primary">리뷰 작성하기</a>
        </div>

        <!-- 부가적인 룸 정보 섹션 -->
        <div class="additional-info mt-5 bg-white p-5 rounded shadow-sm text-center">
            <h3 class="mb-4">객실 부가 정보</h3>
            <p><strong>In Room:</strong> 55인치 스마트 TV, 무료 커피·차 티백 제공, 초고속 무선 인터넷 등.</p>
            <p><strong>In Hotel:</strong> 피트니스 센터, 실내 수영장 무료 이용, 신속한 체크인/체크아웃, 주차 서비스 등.</p>
        </div>
    </div>

    <!-- footer -->
    <jsp:include page="../common/footer.jsp" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/SpringHotel/resources/js/bootstrap.js"></script>
    <script src="/SpringHotel/resources/js/header.js?v=1.0"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
