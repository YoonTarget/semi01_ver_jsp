<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<style>
    /* 마이티켓 시작 */
    .background {
        background-color: #f8f8f8;
        height: 800px;
        border: 1px solid red;
    }
    .outer {
        border: 1px solid red;
        /* background-color: #f8f8f8; */
        /* background-color: #f8f8f8; */
        width: 50%;
        height: 100%;
        margin: auto;
    }
    #myPage-head {
        width: 100%;
        height: 20%;
        border: 1px solid red;
        text-align: center;
    }
    #myPage-head>img {
        width: 35%;
        height: 100%;
    }
    #myPage-body {
        width: 100%;
        height: 80%;
        border: 1px solid red;
        background-color: white;
        /* background-color: #f8f8f8; */
        /* background-color: white; */
    }
    .float {
        float: left;
        height: 100%;
    }
    #left {
        width: 20%;
        border: 1px solid red;
    }
    #top {
        width: 100%;
        height: 20%;
        border: 1px solid red;
    }
    #bottom {
        width: 100%;
        height: 80%;
        border: 1px solid red;
    }
    #right {
        width: 80%;
        border: 1px solid red;
    }
    #right>* {
        width: 100%;
        border: 1px solid red;
    }
    #myPage-title {
        font-weight: bold;
        height: 20%;
        line-height: 10px;
    }
    #myPage-content {
        height: 80%;
    }
    /* //마이티켓 끝 */
</style>
</head>
<body>
    <%@ include file = "../common/header.jsp" %>
    
    <div class="background">

        <div class="outer">
    
            <div id="myPage-head">
                <img src="resources/image/goldenLogo.png">
            </div>
    
            <div id="myPage-body">
                
                <div id="left" class="float">

                    <div id="top">

                    </div>
                    <div id="bottom">

                    </div>

                </div>
                <div id="right" class="float">
                    <h1 id="myPage-title">
                        마이페이지
                    </h1>
                    <form id="myPage-content" action="">
                        <table id="myPageForm">
                            <tr>
                                <th>*아이디</th>
                                <td colspan="3"><input type="text" name="userId" required value="princessrini" readonly></td>
                            </tr>
                            <tr>
                                <th>비밀번호</th>
                                <td colspan="3"><input type="password" name="userPwd" required value="riniprincess05"></td>
                            </tr>
                            <tr>
                                <th>*이름</th>
                                <td colspan="3"><input type="text" name="userName" required value="이리니" readonly></td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                                <td colspan="3"><input type="text" name="phone" value="010-1234-5678"></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td colspan="3"><input type="email" name="email" value="princessrini@gmail.com"></td>
                            </tr>
                            <tr>
                                <th>*생년월일</th>
                                <td colspan="3"><input type="number" name="birth" value="970505" readonly></td>
                            </tr>
                            <tr>
                                <th>*등급</th>
                                <td colspan="3"><input type="text" name="level" value="공주" readonly></td>
                            </tr>
                            <tr>
                                <th rowspan="3">관심있는 태그</th>
                                <td>
                                    <td>
                                        [영화]
                                    </td>
                                    <td>
                                        <select name="interest_movie">
                                            <option value="1">로맨스</option>
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
                                            <option value="7">사진전시</option>
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
                                            <option value="10">연극</option>
                                            <option value="11">클래식</option>
                                            <option value="12">콘서트</option>
                                        </select>
                                    </td>
                                </td>
                            </tr>
                        </table>
                        
                        <button type="submit">정보변경</button>
                        <button type="button">비밀번호 변경</button>
                        <button type="button">회원탈퇴</button>
                    </form>
                </div>

            </div>
    
        </div>

    </div>

    <%@ include file = "../common/footer.jsp" %>
</body>
</html>