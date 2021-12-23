<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<link type="text/css" rel="stylesheet"
	href="resources/css/layout/test02_header_style.css">
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

<nav class="navbar">
	<div class="navbar_logo">
		<a href="home"><abbr title="TodayGym">TodayGYM<span
				class="navbar_icon"><ion-icon name="bicycle-outline"></ion-icon></span>
		</abbr></a>
	</div>
	<div class="navbar_menu">
		<ul>
			<li><a href="">HOME</a></li>
			<li><a href="">ABOUT</a></li>
			<li><a href="">PROGRAM</a></li>
			<li><a href="">CONTACT</a></li>
			<li><a href="review">REVIEW</a></li>
		</ul>
	</div>
	<div class="navbar_sign">
		<ul>
			<li><a href="./memberJoin"><abbr title="회원가입"><span
						class="navbar_icon"><ion-icon name="person-add-outline"></ion-icon></span></abbr></a></li>
			<li><a href="./memberLogin"><abbr title="로그인"><span
						class="navbar_icon"><ion-icon name="lock-closed-outline"></ion-icon></span></abbr></a></li>
			<li><a href="#myPage"><abbr title="마이페이지"><span
						class="navbar_icon"><ion-icon name="person-circle-outline"></ion-icon></span></abbr></a></li>
			<li><a href="./logout"><abbr title="로그아웃"><span
						class="navbar_icon"><ion-icon name="lock-open-outline"></ion-icon></span></abbr></a></li>
		</ul>
	</div>
</nav>