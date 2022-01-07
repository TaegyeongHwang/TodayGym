<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/cart_style.css">
	<script type="text/javascript">
		//전체선택
		$(document).ready(function() {
			$("#chkall").click(function() {
				if($("#chkall").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#chkall").prop("checked", false);
				else $("#chkall").prop("checked", true); 
			});
		});
		//전체선택(삭제)
		$(document).ready(function() {
			$("#chkall2").click(function() {
				if($("#chkall2").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#chkall2").prop("checked", false);
				else $("#chkall2").prop("checked", true); 
			});
		});
		$(function () {
			var msg = "${msg}";
			if(msg != ""){
				alert(msg)
			}
		})
	</script>
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section class="cart_section">
			<div class="cart_title">
				<h1>회원권 장바구니</h1>
			</div>
			<hr>
			<div class="cart_info">
			 <ul>
			 	<li class="cart_info_li">장바구니 상품은 최대 30일간 보관됩니다</li>
			 	<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
			 	<li>단순변심으로 인한 주문취소 및 변경 시 교환 환불이 어려울 수 있으니 꼭 다시 확인해 주시기 바랍니다.</li>
			 </ul>
			</div>
			<form action="./cartOrder" method="get">
			<div class="cart_info_table">
				<table class="table_title">
					<thead class="cart_head">
						<tr>
							<th class="thead_th1"> <input class="checkbox" type="checkbox" checked id="chkall"> </th>
							<th class="thead_th2" colspan="3"> 상품정보 </th>
							<th class="thead_th3"> 옵션 </th>
							<th class="thead_th4"> 상품금액 </th>
							<th class="thead_th5"> 비고 </th>
						</tr>
					</thead>
					<tbody class="cart_body">
						<c:forEach var="mycart" items="${mycart}">
						<tr>
							<td class="tbody_td11"> <input class="checkbox" type="checkbox" checked name="chk" value="${mycart.c_code}"> </td>
							<td class="tbody_td11"> <img src="${mycart.p_img}"></td>
							<td class="tbody_td11"><p id="point"><img src="resources/img/buy/buyDetail/buypoint.png"></p> ${mycart.p_subcate}</td>
							<td class="tbody_td1"> <button class="buttonx" type="button" onclick="delCheck(${mycart.c_code})"><img src="resources/img/cart/x.png"></button></td>
							<td class="tbody_td1"><span class="tTitle">${mycart.o_month} 이용권</span></td>
							<td class="tbody_td1">
							<span class="tPrice"><fmt:formatNumber type="number" maxFractionDigits="3" value="${mycart.o_price}"/>원</span>				
							</td>
							<td class="tbody_td11"> </td>							
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>	
				<div class="cart_delete">
					<div class="checkboxarea">
					</div>
					<div class="deletebuttonarea">
						<input class="deletebutton" type="button" value="전체상품 삭제" onclick="cartTDel()">	
					</div>
				</div>
				<div class="cart_calculator">
					<div class="cart_cal_sub">
						<div class="cart_price">
							<dl class="cart_price_sub">
								<dt>총 상품금액</dt>
								<dd>							
									<c:set var="total" value="0"/>
									<c:forEach var="mycart" items="${mycart}">
									<c:set var="total" value="${total + mycart.o_price}" />						
									</c:forEach>	
									<span>
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${total}" />
									</span>		
									<span>원</span>
								</dd>
							</dl>
						</div>
						<div class="cart_price">
							<dl class="cart_price_sub">
								<dt></dt>
								<dd>
									<span></span>
									<img src="resources/img/cart/minus.png">
								</dd>
							</dl>
						</div>
						<div class="cart_price">
							<dl class="cart_price_sub">
								<dt>할인예상금액</dt>
								<dd>
									<span class="sale">0</span>
									<span>원</span>
								</dd>
							</dl>
						</div>	
					</div>
					<div class="cart_cal_sub2">
						<span>총 주문금액</span>
						<c:set var="total" value="0"/>
						<c:forEach var="mycart" items="${mycart}">
						<c:set var="total" value="${total + mycart.o_price}" />						
						</c:forEach>	
						<span class="fPrice">
						<fmt:formatNumber type="number" maxFractionDigits="3" value="${total}" />
						</span>								
						<span>원</span>
					</div>
				</div>
			<div class="cart_button">
				<span class="cart_back" onclick="location.href='./product'">계속하기</span>
				<input type="submit" value="결제하기" class="ordermove">
			</div>
			</form>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
<script type="text/javascript">
	function delCheck(c_code) {
		var conf = confirm("해당 회원권을 장바구니에서 삭제하시겠습니까?");
		
		if(conf == true){
			location.href='./cartDelete?cCode=' + c_code;
		}
	}
	function cartTDel() {
		var conf = confirm("전체상품을 장바구니에서 삭제하시겠습니까?");
		
		if(conf == true){
			location.href='./cartTDel?=';
		}
	}
	
	
</script>
</html>