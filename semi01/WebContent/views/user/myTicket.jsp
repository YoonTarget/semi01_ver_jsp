<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<style>
    /* 마이티켓 시작 */
    div {
        /* border: 1px solid red; */
    }
    .background {
        background-color: #f8f8f8;
        height: 800px;
        /* border: 1px solid red; */
    }
    .outer {
        /* border: 1px solid red; */
        /* background-color: #f8f8f8; */
        /* background-color: #f8f8f8; */
        width: 50%;
        height: 100%;
        margin: auto;
    }
    #myTicket-header {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
        text-align: center;
        padding-top: 10px;
    }
    #myTicket-header>img {
        width: 200px;
        height: 100px;
    }
    #myTicket-body {
        width: 100%;
        height: 80%;
        background-color: white;
		border-radius: 20px;
    }
    #myTicket-footer {
        width: 100%;
        height: 5%;
    }
    .float {
        float: left;
        height: 100%;
    }
    #left {
        width: 20%;
        padding-top: 40px;
        border-right: 2px solid #f8f8f8;
        /* border: 1px solid red; */
    }
    .tab {
        width: 100%;
        height: 10%;
        text-align: center;
        line-height: 5;
        font-size: 14px;
        color: #202020;
        /* border: 1px solid red; */
    }
    .tab:hover {
        cursor: pointer;
        opacity: 0.5;
    }
    .tab-inner {
        display: none;
        text-align: center;
        line-height: 2;
        font-size: 12px;
        color: #707070;
    }
    .tab-inner:hover {
        cursor: pointer;
        opacity: 0.5;
    }
    #right {
        width: 80%;
        /* border: 1px solid red; */
    }
    #right-top {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
    }
    #right-bottom {
        width: 100%;
        height: 85%;
        /* border: 1px solid red; */
    }
    #myTicket-title {
        /* border: 1px solid red; */
        width: 80%;
        height: 100%;
        margin: auto;
        border-bottom: 2px solid #8c8c8c;
    }
    #myTicket-title>h2 {
        color: #202020;
        font-weight: normal;
        line-height: 7;
        /* border: 1px solid red; */
    }
    #myTicket-content {
        width: 80%;
        height: 100%;
        margin: auto;
        /* border: 1px solid red; */
        line-height: 3;
    }
    .form-title {
        color: #707070;
        font-size: 15px;
    }
    .form-content>input {
        color: #202020;
        font-size: 14px;
        border-style: none;
    }
    button {
        background-color: #f8f8f8;
        color: #8c8c8c;
        border-color: #f8f8f8;
        border-radius: 5px;
    }
    /* //마이페이지 끝 */
</style>
</head>
<body>
    <%@ include file = "../common/header.jsp" %>
    
    <div class="background">

        <div class="outer">
    
            <div id="myTicket-header">
                <img src="resources/image/goldenLogo.png">
            </div>
    
            <div id="myTicket-body">
                
                <div id="left" class="float">

                    <div class="tab">마이페이지</div>
                    <div class="tab-inner">회원정보변경</div>
                    <div class="tab-inner">비밀번호변경</div>
                    <div class="tab-inner">회원탈퇴</div>
                    <div class="tab">마이티켓</div>
                    <div class="tab-inner">예매확인</div>
                    <div class="tab-inner">예매취소</div>
                    <div class="tab">마이리뷰</div>
                    <div class="tab-inner">한줄평조회</div>
                    <div class="tab-inner">한줄평작성</div>
                    <div class="tab">마이등급</div>
                    <div class="tab-inner">등급조회</div>

                </div>
                <div id="right" class="float">
                    <div id="right-top">
                        <div id="myTicket-title">
                            <h2>
                                마이티켓
                            </h2>
                        </div>
                    </div>
                    
                    <div id="right-bottom">
                        <div id="myTicket-content">
                            <form action="">
								<table id="myTicketForm">
									<tr>
										<td class="form-title" width="100">공연 제목</td>
										<td class="form-content">콘크리트 유토피아</td>
									</tr>
									<tr>
										<td class="form-title">공연 장소</td>
										<td class="form-content">CGV 고양백석, 1관</td>
									</tr>
									<tr>
										<td class="form-title">공연 일시</td>
										<td class="form-content">2023.08.13 (일) 11:00</td>
									</tr>
									<tr>
										<td class="form-title">관람 인원</td>
										<td class="form-content">성인 2명</td>
									</tr>
									<tr>
										<td class="form-title">예매 금액</td>
										<td class="form-content">30,000원 - 성인 2명(15000X2)</td>
									</tr>
									<tr>
										<td class="form-title">할인 금액</td>
										<td class="form-content">-15,000원</td>
									</tr>
									<tr>
										<td class="form-title">결제 수단</td>
										<td class="form-content">등급 할인, 카드 할인</td>
									</tr>
									<tr>
										<td class="form-title">결제 금액</td>
										<td class="form-content">15,000원</td>
									</tr>
								</table>
								
								<div align="center">
									<button type="button">한줄평 작성</button>
									<button type="button">예매취소</button>
								</div>
							</form>
                        </div>
                    </div>
                </div>

            </div>

            <div id="myTicket-footer"></div>
    
        </div>

    </div>

    <script>

        $(".tab").click(function() {

            $(this).nextUntil(".tab").slideToggle();

        });

    </script>

    <%@ include file = "../common/footer.jsp" %>
</body>
</html>