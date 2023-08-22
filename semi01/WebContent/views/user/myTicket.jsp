<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<link href="../../resources/image/logo2.png" rel="shortcut icon" type="image/x-icon">
<style>
	/* 마이티켓 시작 */
	#myTicket {
		width: 60%;
		height: 500px;
		border: 1px solid red;
		background-color: lightgray;
		margin: auto;
	}
	#myTicketTitle {
		font-weight: bold;
		margin: 20px;
	}
	/* //마이티켓 끝 */
</style>
</head>
<body>
	<%@ include file = "/views/common/header.jsp" %>

	<div id="myTicket" align="center">
		<br>
	    <div id="myTicketTitle">
	        마이티켓
	    </div>
	    <form action="">
	        <table id="myTicketForm">
	            <tr>
	                <th>공연 제목</th>
	                <td><input type="text" name="title" value="콘크리트 유토피아" readonly></td>
	            </tr>
	            <tr>
	                <th>공연 장소</th>
	                <td><input type="text" name="place" value="CGV 고양백석, 1관" readonly></td>
	            </tr>
	            <tr>
	                <th>공연 일시</th>
	                <td><input type="text" name="time" value="2023.08.13 (일) 13:50" readonly></td>
	            </tr>
	            <tr>
	                <th>관람 인원</th>
	                <td><input type="text" name="audience" value="성인 2명" readonly></td>
	            </tr>
	            <tr>
	                <th>관람 좌석</th>
	                <td><input type="text" name="seat" value="I열 018번, I열 019번" readonly></td>
	            </tr>
	            <tr>
	                <th>예매 금액</th>
	                <td><input type="text" name="priceOrigin" value="30,000원 - 성인 2명(15000X2)" readonly></td>
	            </tr>
	            <tr>
	                <th>할인 금액</th>
	                <td><input type="text" name="discount" value="-15,000원" readonly></td>
	            </tr>
	            <tr>
	                <th>결제 수단</th>
	                <td><input type="text" name="payTool" value="멤버십 혜택, 신용카드" readonly></td>
	            </tr>
	            <tr>
	                <th>결제 금액</th>
	                <td><input type="text" name="payPrice" value="15,000원" readonly></td>
	            </tr>
	        </table>
	        
	        <button type="button">한줄평 작성</button>
	        <button type="button">예매취소</button>
	    </form>
		<br>
	</div>
	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>