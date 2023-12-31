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
        font-size: 15px;
        font-weight: bold;
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
    .content-img>a {
        width: 100%;
        height: 100%;
    }
    .content-img>a>img {
        width: 100%;
        height: 100%;
    }
    .content-img>a>img:hover {
        width: 100%;
        height: 100%;
        opacity: 0.7;
    }
    .content-text {
        width: 60%;
    }
    .content-text>table {
    	line-height: 4;
    }
    .content-text a:hover {
    	opacity: 0.5;
    }
    .content-delete {
        width: 10%;
        text-align: right;
    }
    .content-delete>button {
        background-color: white;
        border-color: white;
    }
    .content-delete>button:hover {
    	cursor: pointer;
    	opacity: 0.5;
    }
    .myReview-content button {
        margin: 10px;
        display: inline;
        height: 35px;
        padding: 0 12px;
        line-height: 32px;
        border-radius: 3px;
        border: 1px solid #bbb;
        box-sizing: border-box;
        background-color: #f9f9f9;
        text-decoration: none;
        text-align: center;
        font-size: 13px;
        color: #202020;
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
                    <div class="tab-inner" onclick="myMenu(1);">회원정보조회</div>
                    <div class="tab">마이티켓</div>
                    <div class="tab-inner" onclick="myMenu(2);">예매조회</div>
                    <div class="tab">마이리뷰</div>
                    <div class="tab-inner" onclick="myMenu(3);">한줄평조회</div>
                    <div class="tab-inner" onclick="myMenu(2);">한줄평작성</div>
                    <div class="tab">마이등급</div>
                    <div class="tab-inner" onclick="myMenu(4);">등급조회</div>

                </div>

                <script>

                    $(".tab").click(function() {
                                
                        $(this).nextUntil(".tab").slideToggle();

                    });

                    function myMenu(num) {
                    	
                    	switch(num) {
                    	case 1 :
                    		location.href = "<%= contextPath %>/myPage.us";
                    		break;
                    	case 2 :
                    		location.href = "<%= contextPath %>/myTicket.us";
                    		break;
                    	case 3 :
                    		location.href = "<%= contextPath %>/myReview.us";
                    		break;
                    	case 4 :
                    		location.href = "<%= contextPath %>/myLevel.us";
                    		
                    	}

                    }

                </script>


                <div id="right" class="float">
                    <div id="right-top">
                        <div id="myReview-title">
                            <h4>
                                마이리뷰 <span>한줄평 조회</span>
                            </h4>
                        </div>
                    </div>
                    
                    <div id="right-bottom">

                        <div class="myReview-content">
                            
                            <div class="content-img">
                                <a href="#"><img src="resources/image/우비짱구.jpg"></a>
                            </div>
                            <div class="content-text">
                                <table>
                                    <tr>
                                        <th colspan="3">
                                            <h5>짱구는 못말려 : 우비짱구의 대모험</h5>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td width="50" style="color: #707070;">us**01</td>
                                        <td style="color: #8c8c8c;">|</td>
                                        <td style="color: #707070;">2023-08-24</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <p>너무너무 재미있었어요!!</p>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<td colspan="3">
                                    		<a href="<%= contextPath %>/updateReview.us">수정하기</a>
                                    	</td>
                                    </tr>
                                </table>
                            </div>

                            <div class="content-delete">
                                <button class="close" onclick="return reviewDelete();">X</button>
                            </div>

                            <script>

                                function reviewDelete() {
        
                                    if(confirm("작성한 한줄평을 삭제하시겠습니까?")) {
                                        location.href = "#";
                                    }
                                    else {
                                        return false;
                                    }
        
                                }
        
                            </script>

                        </div>

                        <div class="myReview-content">
                            
                            <div class="content-img">
                                <a href="#"><img src="resources/image/회사원짱구.png"></a>
                            </div>
                            <div class="content-text">
                                <table>
                                    <tr>
                                        <th colspan="3">
                                            <h5>짱구는 못말려 : 신입사원이 된 짱구</h5>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td width="50" style="color: #707070;">us**01</td>
                                        <td style="color: #8c8c8c;">|</td>
                                        <td style="color: #707070;">2023-07-27</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <p>인생작입니다. 강추!!</p>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<td colspan="3">
                                    		<a href="#">수정하기</a>
                                    	</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="content-delete">
                                <button class="close" onclick="return ReviewDelete();">X</button>
                            </div>

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