<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<style>
    /* 마이페이지 시작 */
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
    #myReview-header {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
        text-align: center;
        padding-top: 10px;
    }
    #myReview-header>img {
        width: 200px;
        height: 100px;
    }
    #myReview-body {
        width: 100%;
        height: 80%;
        /* border: 1px solid red; */
        background-color: white;
        border-radius: 20px;
        /* background-color: #f8f8f8; */
        /* background-color: white; */
    }
    #myReview-footer {
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
    #myReview-title {
        /* border: 1px solid red; */
        width: 80%;
        height: 100%;
        margin: auto;
        border-bottom: 2px solid #8c8c8c;
    }
    #myReview-title>h4 {
        color: #202020;
        font-weight: normal;
        line-height: 6;
        /* border: 1px solid red; */
    }
    #myReview-title>h4>span {
        color: #202020;
        font-size: 15px;
    }
    .myReview-content {
        width: 80%;
        height: 300px;
        margin: auto;
        line-height: 3;
        padding-top: 10px;
        padding-bottom: 10px;
        margin-top: 20px;
        /* border: 1px solid red; */
    }
    .myReview-content div {
        width: 100%;
    }
    #content-title {
        height: 20%;
        padding-top: 10px;
    }
    #content-text {
        padding-top: 10px;
        height: 80%;
    }
    #content-text>textarea {
        width: 100%;
        height: 100%;
        resize: none;
        border: 1px solid #ceccc0;
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
    
            <div id="myReview-header">
                <img src="resources/image/goldenLogo.png">
            </div>
    
            <div id="myReview-body">
                
                <div id="left" class="float">

                    <div class="tab">마이페이지</div>
                    <div class="tab-inner" onclick="myPage(1);">회원정보변경</div>
                    <div class="tab-inner" onclick="myPage(2);">비밀번호변경</div>
                    <div class="tab-inner" onclick="myPage(3);">회원탈퇴</div>
                    <div class="tab">마이티켓</div>
                    <div class="tab-inner" onclick="myTicket(1);">예매확인</div>
                    <div class="tab-inner" onclick="myTicket(2);">예매취소</div>
                    <div class="tab">마이리뷰</div>
                    <div class="tab-inner" onclick="myReview(1);">한줄평조회</div>
                    <div class="tab-inner" onclick="myReview(2);">한줄평작성</div>
                    <div class="tab">마이등급</div>
                    <div class="tab-inner" onclick="myLevel(1);">등급조회</div>

                </div>

                <script>

                    $(".tab").click(function() {
                                
                        $(this).nextUntil(".tab").slideToggle();

                    });

                    function myPage(num) {
                        
                        switch(num) {
                            case 1 :
                                location.href = "<%= contextPath %>/myPage.us";
                                break;
                            case 2 :
                                location.href = "<%= contextPath %>/myPage.us";
                                break;
                            case 3 :
                                location.href = "<%= contextPath %>/myPage.us";
                        }

                    }

                    function myTicket(num) {

                        if(num == 1) {
                            location.href = "<%= contextPath %>/myTicket.us";
                        }
                        else {
                            location.href = "<%= contextPath %>/myTicket.us";
                        }

                    }

                    function myReview(num) {
                        if(num == 1) {
                            location.href = "<%= contextPath %>/myReview.us";
                        }
                        else {
                            location.href = "<%= contextPath %>/myReview.us";
                        }
                    }

                    function myLevel(num) {
                        location.href = "<%= contextPath %>/myLevel.us";
                    }   


                </script>

                <div id="right" class="float">
                    <div id="right-top">
                        <div id="myReview-title">
                            <h4>
                                마이리뷰 <span>한줄평 수정</span>
                            </h4>
                        </div>
                    </div>
                    
                    <div id="right-bottom">

                        <div class="myReview-content" align="center">
                            
                            <form action="#" method="post">

                                <div id="content-title">
                                    <h4>짱구는 못말려 : 우비짱구의 대모험</h4>
                                </div>
                                <div id="content-text">
                                    <textarea name="reviewContent"></textarea>
                                </div>
                                <button>작성완료</button>

                            </form>
                            
                        </div>

                    </div>

                </div>

            </div>

            <div id="myReview-footer"></div>
    
        </div>

    </div>

    <%@ include file = "../common/footer.jsp" %>
</body>
</html>