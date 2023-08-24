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
    #myReview-title>h2 {
        color: #202020;
        font-weight: normal;
        line-height: 7;
        /* border: 1px solid red; */
    }
    .myReview-content {
        width: 80%;
        height: 200px;
        margin: auto;
        /* border: 1px solid red; */
        line-height: 3;
        border-bottom: 1px solid #ceccc0;
        padding-top: 10px;
        padding-bottom: 10px;
    }
    .myReview-content div {
        height: 100%;
        float: left;
    }
    .content-img {
        width: 30%;
        padding-right: 10px;
    }
    .content-img>img {
        width: 100%;
        height: 100%;
    }
    .content-text {
        width: 60%;
    }
    .content-delete {
        width: 10%;
        text-align: right;
    }
    .content-delete>button {
        background-color: white;
        border-color: white;
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
                        <div id="myReview-title">
                            <h2>
                                마이리뷰
                            </h2>
                        </div>
                    </div>
                    
                    <div id="right-bottom">

                        <div class="myReview-content">
                            
                            <div class="content-img">
                                <img src="resources/image/우비짱구.jpg">
                            </div>
                            <div class="content-text">
                                <table>
                                    <tr>
                                        <th colspan="3">
                                            <h2>짱구는 못말려 : 불고기 로드</h2>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td width="50" style="color: #707070;">user01</td>
                                        <td style="color: #8c8c8c;">|</td>
                                        <td style="color: #707070;">2023-08-24</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <p>너무너무 재미있었어요!!</p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="content-delete">
                                <button onclick="return ReviewDelete();">X</button>
                            </div>

                        </div>

                        <div class="myReview-content">
                            
                            <div class="content-img">
                                <img src="resources/image/회사원짱구.png">
                            </div>
                            <div class="content-text">
                                <table>
                                    <tr>
                                        <th colspan="3">
                                            <h2>짱구는 못말려 : 신입사원이 된 짱구</h2>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td width="50" style="color: #707070;">user02</td>
                                        <td style="color: #8c8c8c;">|</td>
                                        <td style="color: #707070;">2023-08-27</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <p>인생작입니다. 강추!!</p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="content-delete">
                                <button onclick="return ReviewDelete();">X</button>
                            </div>

                        </div>

                    </div>

                    <script>

                        function ReviewDelete() {

                            if(confirm("작성한 한줄평을 삭제하시겠습니까?")) {
                                location.href = "#";
                            }
                            else {
                                return false;
                            }

                        }

                    </script>

                </div>

            </div>

            <div id="myReview-footer"></div>
    
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