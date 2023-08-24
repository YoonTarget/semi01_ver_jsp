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
    #myPage-header {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
        text-align: center;
        padding-top: 10px;
    }
    #myPage-header>img {
        width: 200px;
        height: 100px;
    }
    #myPage-body {
        width: 100%;
        height: 80%;
        /* border: 1px solid red; */
        background-color: white;
        /* background-color: #f8f8f8; */
        /* background-color: white; */
    }
    #myPage-footer {
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
    #myPage-title {
        /* border: 1px solid red; */
        width: 80%;
        height: 100%;
        margin: auto;
        border-bottom: 2px solid #8c8c8c;
    }
    #myPage-title>h4 {
        color: #202020;
        font-weight: normal;
        line-height: 6;
        /* border: 1px solid red; */
    }
    #myPage-content {
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
    
            <div id="myPage-header">
                <img src="resources/image/goldenLogo.png">
            </div>
    
            <div id="myPage-body">
                
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
                        <div id="myPage-title">
                            <h4>
                                마이페이지
                            </h4>
                        </div>
                    </div>
                    
                    <div id="right-bottom">
                        <div id="myPage-content">
                            <form action="#">
                                <table id="myPageForm">
                                    <tr>
                                        <td class="form-title">*아이디</td>
                                        <td colspan="3" class="form-content"><input type="text" name="userId" required value="user01" readonly></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">이름</td>
                                        <td colspan="3" class="form-content"><input type="text" name="userName" required value="홍길동"></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">전화번호</td>
                                        <td colspan="3" class="form-content"><input type="text" name="phone" value="010-1234-5678"></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">이메일</td>
                                        <td colspan="3" class="form-content"><input type="email" name="email" value="user01@gmail.com"></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">*생년월일</td>
                                        <td colspan="3" class="form-content"><input type="text" name="birth" value="1999-01-01" readonly></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">*등급</td>
                                        <td colspan="3" class="form-content"><input type="text" name="level" value="아이언" readonly></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3" class="form-title">관심있는 태그</td>
                                        <td>
                                            <td>
                                                [영화]
                                            </td>
                                            <td>
                                                <select name="interest_movie">
                                                    <option value="1" selected>로맨스</option>
                                                    <option value="2">공포/스릴러</option>
                                                    <option value="3">코미디</option>
                                                    <option value="4">액션</option>
                                                </select>
                                            </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <td>
                                                [전시]
                                            </td>
                                            <td>
                                                <select name="interest_display">
                                                    <option value="5">그림전시</option>
                                                    <option value="6">작품전시</option>
                                                    <option value="7" selected>사진전시</option>
                                                    <option value="8">체험전시</option>
                                                </select>
                                            </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <td>
                                                [공연]
                                            </td>
                                            <td>
                                                <select name="interest_show">
                                                    <option value="9">뮤지컬</option>
                                                    <option value="10" selected>연극</option>
                                                    <option value="11">클래식</option>
                                                    <option value="12">콘서트</option>
                                                </select>
                                            </td>
                                        </td>
                                    </tr>
                                </table>
                                
                                <div align="center">
                                    <button type="submit">정보변경</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

            </div>

            <div id="myPage-footer"></div>
    
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