<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf8"%>
<%@ page import="java.util.*"%>
<html>
<head>
<style>
.search-form1 {
	display: flex;
}

.search-form-003 {
	display: flex;
	justify-content: space-between;
	align-items: center;
	overflow: hidden;
	border: 1px solid #a8c6fe;
	border-radius: 3px;
	/* margin: 0 0 0 auto; */
	width: 300;
}

.search-form-003 input {
	width: 30％;
	/* max-width: 100px; */
	height: 45px;
	padding: 5px 15px;
	border: none;
	box-sizing: border-box;
	font-size: 1em;
	outline: none;
}

.search-form-003 input::placeholder {
	color: #74a7fe;
}

.search-form-003 button {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 45px;
	border: none;
	background-color: transparent;
	cursor: pointer;
}

.search-form-003 button::after {
	width: 20px;
	height: 20px;
	background-image:
		url('data:image/svg+xml;charset=utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%3E%20%3Cpath%20d%3D%22M23.7%2020.8%2019%2016.1c-.2-.2-.5-.3-.8-.3h-.8c1.3-1.7%202-3.7%202-6C19.5%204.4%2015.1%200%209.7%200S0%204.4%200%209.7s4.4%209.7%209.7%209.7c2.3%200%204.3-.8%206-2v.8c0%20.3.1.6.3.8l4.7%204.7c.4.4%201.2.4%201.6%200l1.3-1.3c.5-.5.5-1.2.1-1.6zm-14-5.1c-3.3%200-6-2.7-6-6s2.7-6%206-6%206%202.7%206%206-2.6%206-6%206z%22%20fill%3D%22%2374a7fe%22%3E%3C%2Fpath%3E%20%3C%2Fsvg%3E');
	background-repeat: no-repeat;
	content: '';
}

.search-form-002 {
	display: flex;
	justify-content: space-between;
	align-items: center;
	overflow: hidden;
	border: 1px solid #a8c6fe;
	border-radius: 3px;
	margin: 0 0 0 auto;
	width: 200;
}

.search-form-002 input {
	width: 20em;
	max-width: 200px;
	height: 45px;
	padding: 5px 15px;
	border: none;
	box-sizing: border-box;
	font-size: 100%;
	outline: none;
}

.search-form-002 input::placeholder {
	color: #74a7fe;
}

.favoriteBtn {
	display: flex;
	/* justify-content: end; */
	writing-mode: horizontal-tb;
	margin: 10;
}

.favoriteBtn button {
	display: block;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	position: relative;
	width: 120px;
	/* margin: auto; */
	/* padding: 1rem 4rem; */
	font-weight: bold;
	color: #27acd9;
	background: #e1f3f9;
	transition: 0.3s ease-in-out;
	margin: 10 10 0 0;
	/* padding: 10; */
}

.btn_japaneseBook:before {
	content: '';
	position: absolute;
	top: -5px;
	left: -5px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	border: 2px solid #27acd9;
	transition: 0.2s;
}

.btn_japaneseBook:hover {
	background: #27acd9;
	color: #fff;
}

.btn_japaneseBook:hover::before {
	top: 0;
	left: 0;
}
/* //アニメ */
.btn_animeBook:before {
	content: '';
	position: absolute;
	top: -5px;
	left: -5px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	border: 2px solid #27acd9;
	transition: 0.2s;
}

.btn_animeBook:hover {
	background: #27acd9;
	color: #fff;
}

.btn_animeBook:hover::before {
	top: 0;
	left: 0;
}
/* //読んでいない本 */
.btn_notReadBook:before {
	content: '';
	position: absolute;
	top: -5px;
	left: -5px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	border: 2px solid #27acd9;
	transition: 0.2s;
}

.btn_notReadBook:hover {
	background: #27acd9;
	color: #fff;
}

.btn_notReadBook:hover::before {
	top: 0;
	left: 0;
}
/* //おすすめ本 */
.btn_goodBook:before {
	content: '';
	position: absolute;
	top: -5px;
	left: -5px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	border: 2px solid #27acd9;
	transition: 0.2s;
}

.btn_goodBook:hover {
	background: #27acd9;
	color: #fff;
}

.btn_goodBook:hover::before {
	top: 0;
	left: 0;
}
/* //いいね */
.checkbox02 {
	float: left;
	width: 100%;
	margin: 0 0 50px 0;
	border-spacing: 0;
}

.checkbox02 dl {
	width: 100%;
	border: 1px solid #e4e4e4;
}

.checkbox02 dl dt {
	width: 10%;
	padding: 2%;
	display: inline-block;
	vertical-align: middle;
}

.checkbox02 dl dd {
	width: 81%;
	padding: 2%;
	display: inline-block;
	vertical-align: middle;
	border-left: 1px dotted #e4e4e4;
}

.checkbox02 dl.disabled, .checkbox02 dl:disabled {
	background: #efefef;
	cursor: not-allowed;
}

.checkbox02 input[type=checkbox] {
	display: none;
}

input[type="checkbox"].checkbox02:checked+label {
	background: #31A9EE;
	color: #ffffff;
}

.check_label:hover {
	background-color: #E2EDF9;
}

.check_label {
	display: block;
	float: left;
	margin: 5px;
	width: 120px;
	height: 45px;
	text-align: center;
	line-height: 45px;
	padding-left: 5px;
	padding-right: 5px;
	cursor: pointer;
	color: #31A9EE;
	border: 2px solid #006DD9;
	border-radius: 5px;
}

/* .goodButton label input { */
/* display: none; */ /* デフォルトのinputは非表示にする */
/* } */

/* .goodButton label span {  */
/* color: #333;  */ /* 文字色を黒に */
/* font-size: 14px;  */ /* 文字サイズを14pxに */
/* border: 1px solid #333; */ /* 淵の線を指定 */
/* border-radius: 20px;  */ /* 角丸を入れて、左右が丸いボタンにする */
/* padding: 5px 20px;  */ /* 上下左右に余白をトル */
/* } */

/* .goodButton label input:checked+span{ */
/* color: #FFF; */ /* 文字色を白に */
/* background: #FBB; */ /* 背景色を薄い赤に */
/* border: 1px solid #FBB;  */ /* 淵の線を薄い赤に */
/* } */
.good {
	margin-right: 5px; /* ボタン同士の間隔 */
}

.good input {
	display: none; /* デフォルトのinputは非表示にする */
}

.good span {
	color: #333; /* 文字色を黒に */
	font-size: 14px; /* 文字サイズを14pxに */
	border: 1px solid #333; /* 淵の線を指定 */
	border-radius: 20px; /* 角丸を入れて、左右が丸いボタンにする */
	padding: 5px 20px; /* 上下左右に余白をトル */
}

.good input:checked+span {
	color: #FFF; /* 文字色を白に */
	background: #FBB; /* 背景色を薄い赤に */
	border: 1px solid #FBB; /* 淵の線を薄い赤に */
}

/*その他と主な共通部分は省略*/
.btn-tag {
	color: #fff;
	border-bottom: 5px solid #db9014;
	background: #f39800;
	width: 200;
	height: 50;
	font-size: 20;
	position: absolute;
	right: 10;
}

.btn-tag:before {
	border-right: 2px solid rgba(255, 255, 255, .5);
}

.btn-tag:hover {
	margin-top: 3px;
	border-bottom: 2px solid #db9014;
	background: #ffa50e;
}
/* /いいねボタン大元 */

.iine {
	display: flex;
}

.btn_niceBook {
	display: block;
	position: relative;
	text-decoration: none;
	height: 50px;
	width: 200px;
	line-height: 28px;
	text-align: center;
	color: #e4016f;
	font-weight: bold;
	text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.7);
	box-shadow: 0 2px 3px #ccc;
	border-top: 2px solid #d10065;
	border-bottom: 2px solid #d10065;
	background: #e4016f;
	background: -webkit-gradient(linear, left top, left bottom, from(#ff69b1),
		to(#e4016f));
	background: -moz-linear-gradient(top, #ff69b1, #e4016f);
	background: -o-linear-gradient(top, #ff69b1, #e4016f);
	background: -ms-linear-gradient(top, #ff69b1, #e4016f);
	background: linear-gradient(top, #ff69b1, #e4016f);
	filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,
		startColorstr='#ff69b1', endColorstr='#e4016f');
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#ff69b1', endColorstr='#e4016f')";
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

.btn_niceBook {
	display: block;
	padding: 2px 0;
	border-top: 2px solid #ffc1df;
	margin: 0 10 0;
}

.btn_niceBook:active { /* クリックした時 */
	-ms-transform: translateY(2px);
	-webkit-transform: translateY(2px);
	transform: translateY(2px);
	box-shadow: none;
}

/* 読書 */
.tab-switching {
	margin: 10px 0 20px;
	border-radius: 5px;
	overflow: hidden;
	display: block;
	flex-wrap: wrap;
	/* box-shadow: 0 3px 10px -2px rgba(0, 0, 0, .2); */
}

.tab-switching label {
	width: calc(100%/ 4);
	padding: 10px;
	text-align: center;
	background: #eee;
	transition: .5s;
	border-right: 1px solid #ddd;
	box-sizing: border-box;
	cursor: pointer;
}

#tab1:checked ~ .tab-switching label[for="tab1"], #tab2:checked ~
	.tab-switching label[for="tab2"], #tab3:checked ~ .tab-switching label[for="tab3"],
	.tab-switching label:hover {
	background: #aaa; /* 選択・マウスオーバー時のタブの色。お好きな色に */
}

.tab-switching label, .tab-switching label:last-of-type {
	border-right: none;
}

.tab-cont, input[name="tab_item"] {
	display: none;
}

@
keyframes show {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
#tab1:checked ~ .tab-cont.tb1, #tab2:checked ~ .tab-cont.tb2, #tab3:checked 
	 ~ .tab-cont.tb3 {
	display: block;
	animation: show 1s;
}

.box-015 {
	position: relative;
	max-width: 160px;
	margin: 1em auto;
	padding: 1em 2.5em 1em 1.5em;
	border-radius: 3px;
	box-shadow: 0 2px 3px rgb(0 0 0/ 20%);
	background-color: #e0efff;
	color: #333333;
	font-size: 50%;
}

.box-015::before, .box-015::after {
	position: absolute;
	content: '';
}

.box-015::before {
	top: -15px;
	right: 10px;
	height: 50px;
	width: 15px;
	border: 3px solid #999;
	border-radius: 10px;
	box-shadow: 1px 1px 2px rgb(0 0 0/ 30%);
	transform: rotate(10deg);
}

.box-015::after {
	top: 0;
	width: 10px;
	right: 20px;
	border: solid 5px #e0efff;
}
/* /* 評価 */
.button-058 {
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	min-width: 250px;
	margin: 1.2em auto;
	padding: .9em 2em;
	border: none;
	border-radius: 5px;
	background-color: #3a88fe;
	color: #fff;
	font-weight: 600;
	font-size: 1em;
}

.button-058:hover {
	background-color: #1579c0;
}

.button-058 span {
	display: flex;
	justify-content: center;
	align-items: center;
	position: absolute;
	top: -1.75em;
	left: -2.5em;
	padding: 1em 1.5em;
	border-radius: 50%;
	background-color: #fff;
	color: #3a88fe;
	font-size: .7em;
}

.button-058 span::after {
	position: absolute;
	bottom: .3em;
	right: 0;
	width: 1.5em;
	height: 1.5em;
	background-color: #fff;
	clip-path: polygon(40% 0, 100% 100%, 0% 90%);
	content: '';
}

.button-058 {
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	min-width: 250px;
	margin: 1.2em auto;
	padding: .9em 2em;
	border: none;
	border-radius: 5px;
	background-color: #3a88fe;
	color: #fff;
	font-weight: 600;
	font-size: 1em;
	margin: 0 0 auto 20;
}

.button-058:hover {
	background-color: #1579c0;
}

.button-058 span {
	display: flex;
	justify-content: center;
	align-items: center;
	position: absolute;
	top: -1.75em;
	left: -2.5em;
	padding: 1em 1.5em;
	border-radius: 50%;
	background-color: #cfdafc;
	color: #3a88fe;
	font-size: .7em;
}

.button-058 span::after {
	position: absolute;
	bottom: .3em;
	right: 0;
	width: 1.5em;
	height: 1.5em;
	background-color: #cfdafc;
	clip-path: polygon(40% 0, 100% 100%, 0% 90%);
	content: '';
}

.book_save {
	font-size: 13px;
}

.books {
	display: inline-block;
	margin: 10px;
	padding: 20px;
	line-height: 1.5;
	background: #FFCC66;
}

.book_thumnail a {
	left: 10;
}

/* スクリプト */
@charset "UTF-8";

.layer {
	background: rgba(0, 0, 0, .2);
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: -1;
	opacity: 0;
	visibility: hidden;
	transition: opacity 1s linear, visibility 1s linear, z-index 1s linear;
}

.layer.is-open {
	z-index: 999;
	opacity: 1;
	visibility: visible;
}

.layer.is-open .modal {
	opacity: 1;
	visibility: visible;
}

.modal__button-wrap {
	position: absolute;
	right: 10px;
	top: -28px;
	display: inline-flex;
}

.close-button {
	position: relative;
	width: 39px;
	height: 39px;
	background: orange;
	border-radius: 50%;
	padding: 0;
	border: transparent;
	cursor: pointer;
}

.close-button span {
	width: 25px;
	height: 2px;
	background: #fff;
	display: inline-block;
	position: absolute;
	left: calc(50% - 12px);
	top: 50%;
	border-radius: 20px;
}

.close-button span:nth-child(1) {
	transform: rotate(45deg) translate(-1px, -1px);
}

.close-button span:nth-child(2) {
	transform: rotate(-45deg) translate(1px, -1px);
}

.modal {
	position: relative;
	margin-right: auto;
	margin-left: auto;
	width: 80%;
	min-width: 440px;
	opacity: 0;
	visibility: hidden;
	transition: visibility .7s linear, opacity .7s linear;
}

.modal__inner {
	margin-top: 125px;
	margin-bottom: 125px;
	position: relative;
	margin-left: auto;
	margin-right: auto;
	background: #fff;
	box-shadow: 3px 4px 4px rgba(0, 0, 0, 0.25);
	border-radius: 13px;
	display: block;
	padding: 21px 8px 21px;
	height: auto;
}

.modal__content {
	padding-top: 15px;
	padding-bottom: 23px;
}

.modal__button-area {
	max-width: 843px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 17px;
	padding-top: 15px;
}

.button1 {
	background: #faec6e;
	border-radius: 12px;
	box-shadow: 2px 4px 6px 3px rgba(0, 0, 0, .24);
	border: 1px solid orange;
	font-size: 10px;
	line-height: 1.6;
	display: block;
	padding: 7px 10px;
	color: #f08f30;
	text-align: center;
	cursor: pointer;
	margin: 10;
	width: 11qx;
}
/* ho-mu */
@charset "UTF-82";

.layer2 {
	background: rgba(0, 0, 0, .2);
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: -1;
	opacity: 0;
	visibility: hidden;
	transition: opacity 1s linear, visibility 1s linear, z-index 1s linear;
}

.layer2.is-open {
	z-index: 999;
	opacity: 1;
	visibility: visible;
}

.layer2.is-open .modal2 {
	opacity: 1;
	visibility: visible;
}

.modal2__button-wrap {
	position: absolute;
	right: 10px;
	top: -28px;
	display: inline-flex;
}

.close-button2 {
	position: relative;
	width: 39px;
	height: 39px;
	background: orange;
	border-radius: 50%;
	padding: 0;
	border: transparent;
	cursor: pointer;
}

.close-button2 span {
	width: 25px;
	height: 2px;
	background: #fff;
	display: inline-block;
	position: absolute;
	left: calc(50% - 12px);
	top: 50%;
	border-radius: 20px;
}

.close-button2 span:nth-child(1) {
	transform: rotate(45deg) translate(-1px, -1px);
}

.close-button2 span:nth-child(2) {
	transform: rotate(-45deg) translate(1px, -1px);
}

.modal2 {
	position: relative;
	margin-right: auto;
	margin-left: auto;
	width: 80%;
	min-width: 440px;
	opacity: 0;
	visibility: hidden;
	transition: visibility .7s linear, opacity .7s linear;
}

.modal2__inner {
	margin-top: 125px;
	margin-bottom: 125px;
	position: relative;
	margin-left: auto;
	margin-right: auto;
	background: #fff;
	box-shadow: 3px 4px 4px rgba(0, 0, 0, 0.25);
	border-radius: 13px;
	display: block;
	padding: 21px 8px 21px;
	height: auto;
}

.modal2__content {
	padding-top: 15px;
	padding-bottom: 23px;
}

.modal2__button-area {
	max-width: 843px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 17px;
	padding-top: 15px;
}

.button2 {
	background: #FF9999;
	border-radius: 12px;
	box-shadow: 2px 4px 6px 3px rgba(0, 0, 0, .24);
	border: 1px solid #f41699;
	font-size: 16px;
	line-height: 1.6;
	display: block;
	padding: 2px 20px;
	color: #f41699;
	text-align: center;
	cursor: pointer;
	margin: 10;
	width: 11q0;
}
/* 購入 */
.niceBuy {
	display: flex;
}

.button-buy {
	margin: 0 0 0 120;
}

.button-051 {
	/*  display: flex; */
	justify-content: center;
	position: relative;
	/* width: 200px; */
	/* margin: 0 auto;
    padding: .9em 2em; */
	border: none;
	border-bottom: 2px solid #e6edf3;
	background-color: transparent;
	color: #333;
	font-weight: 600;
	font-size: 1em;
}

.button-051::after {
	position: absolute;
	bottom: -3px;
	left: 0;
	transform: scaleX(0);
	transform-origin: center left;
	width: 100%;
	height: 2px;
	background-color: #2589d0;
	content: '';
	transition: transform .3s ease;
}

.button-051:hover::after {
	transform: scaleX(1);
}
</style>
<title>ホーム｜シアトルライブラリ｜シアトルコンサルティング株式会社</title>
<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP"
	rel="stylesheet">
<link href="<c:url value="/resources/css/default.css" />"
	rel="stylesheet" type="text/css">
<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	rel="stylesheet">
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet"
	type="text/css">
</head>
<body class="wrapper">
	<span id="view_time"></span>

	<script type="text/javascript">
		document.getElementById("view_time").innerHTML = getNow();

		function getNow() {
			var now = new Date();
			var year = now.getFullYear();
			var mon = now.getMonth() + 1; //１を足すこと
			var day = now.getDate();
			var hour = now.getHours();
			var min = now.getMinutes();
			var sec = now.getSeconds();
			//出力用
			var s = year + "年" + mon + "月" + day + "日" + hour + "時" + min + "分"
					+ sec + "秒";
			return s;
		}
	</script>
	<header>
		<div class="left">
			<img class="mark" src="resources/img/logo.png" />
			<div class="logo">METATEAM Library へようこそ！！</div>
		</div>
		<div class="right">
			<!-- スクリプト -->
			<!-- ho-mu -->
		</div>
		<div class="layer2 js-modal2">
			<div class="modal2">
				<div class="modal2__inner">
					<div class="modal2__button-wrap">
						<button class="close-button2 js-close-button2">
							<span></span> <span></span>
						</button>
					</div>
					<div class="modal2__contents">
						<div class="modal2__content">本当に一覧画面に戻りますか？はいorいいえを押してください。</div>
						<a href="<%=request.getContextPath()%>/home" class="menu">はい</a> <a
							class="modalNot2">いいえ</a>
					</div>
				</div>
			</div>
		</div>
		<button class="button2 js-modal-button2">HOME</button>
		<script>
  const modalBook = document.querySelector('.js-modal2');
  const modalBookButton = document.querySelector('.js-modal-button2');
  const modalNot2 = document.querySelector('.modalNot2');


  const modalBookClose = document.querySelector('.js-close-button2');

  modalBookButton.addEventListener('click', () => {
    modalBook.classList.add('is-open');

  });

  modalBookClose.addEventListener('click', () => {
    modalBook.classList.remove('is-open');

  });
  modalNot2.addEventListener('click', () => {
	    modalBook.classList.remove('is-open');

	  });
  </script>
		<!-- ログアウト -->
		</div>
		<div class="layer js-modal">
			<div class="modal">
				<div class="modal__inner">
					<div class="modal__button-wrap">
						<button class="close-button js-close-button">
							<span></span> <span></span>
						</button>
					</div>
					<div class="modal__contents">
						<div class="modal__content">本当にログアウトしますか？はいorいいえを押してください。</div>
						<a href="<%=request.getContextPath()%>/">はい</a> <a
							class="modalNot">いいえ</a>
					</div>
				</div>
			</div>
		</div>
		<button class="button1 js-modal-button">ログアウト</button>
		<script>
  const modal = document.querySelector('.js-modal');
  const modalButton = document.querySelector('.js-modal-button');
  const modalNot = document.querySelector('.modalNot');


  const modalClose = document.querySelector('.js-close-button');

  modalButton.addEventListener('click', () => {
    modal.classList.add('is-open');

  });

  modalClose.addEventListener('click', () => {
    modal.classList.remove('is-open');

  }); 
  modalNot.addEventListener('click', () => {
	    modal.classList.remove('is-open');

	  }); 
  
  </script>
		<%-- <ul>
				<li><a href="<%=request.getContextPath()%>/home" class="menu">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/">ログアウト</a></li>
			</ul> --%>
		</div>
	</header>
	</div>
	<main>
		<div class="search-form1">
			<h1>Home</h1>
			<a href="<%=request.getContextPath()%>/addBook" class="btn_add_book">書籍の追加</a>
			<form action="https://www.google.co.jp/search" method="GET"
				class="search-form-002">
				<label> <input type="text" name="q" size="30"
					placeholder="Google">
				</label>
			</form>
			<form action="homeHome" method="POST" class="search-form-003">
				<label> <input type="text" name="bookTitle"
					placeholder="キーワードを入力">
				</label>
				<button type="submit" aria-label="検索"></button>
			</form>
		</div>
		<form method="GET" action="buyBook">
			<input type="hidden" name="buy" value="buy">
			<button type="submit" class="btn btn-tag">カートを見る→</button>
		</form>
		<form method="GET" action="historyBook">
			<input type="hidden" name="historyId" value="${historyInfo.bookId}">
			<button class="button-051">削除した書籍の履歴を見る</button>
		</form>
		<div class="favoriteBtn">
			<form method="post" action="favoriteBooks">
				<input type="hidden" name="favorite" value="💙">
				<button type="submit" class="btn_japaneseBook">💙国語</button>
			</form>
			<form method="post" action="favoriteBooks">
				<input type="hidden" name="favorite" value="⭐️">
				<button type="submit" class="btn_animeBook">⭐アニメ</button>
			</form>
			<form method="post" action="favoriteBooks">
				<input type="hidden" name="favorite" value="🔺">
				<button type="submit" class="btn_notReadBook">🔺読んでいない本</button>
			</form>
			<form method="post" action="favoriteBooks">
				<input type="hidden" name="favorite" value="✌️">
				<button type="submit" class="btn_goodBook">✌️おすすめ本</button>
			</form>
		</div>
		<div class="iine">
			<form method="post" action="reviewBook">
				<input type="hidden" name="review" value="review">
				<button type="submit" class="button-058">
					<span>評価順</span> 評価をみる
				</button>
			</form>
			<form method="post" action="niceBook">
				<input type="hidden" name="nice" value="nice">
				<button type="submit" class="btn_niceBook">♡いいね</button>
			</form>
		</div>
		<div class="content_body">
			<c:if test="${!empty resultMessage}">
				<div class="error_msg">${resultMessage}</div>
			</c:if>
			<div>
				<div class="booklist">
					<c:forEach var="bookInfo" items="${bookList}">
						<div class="books">
							<form method="get" class="book_thumnail" action="editBook">
								<a href="javascript:void(0)" onclick="this.parentNode.submit();">
									<c:if test="${empty bookInfo.thumbnail}">
										<img class="book_noimg" src="resources/img/noImg.png">
									</c:if> <c:if test="${!empty bookInfo.thumbnail}">
										<img class="book_noimg" src="${bookInfo.thumbnail}">
									</c:if>
								</a> <input type="hidden" name="bookId" value="${bookInfo.bookId}">
							</form>
							<!-- ボタンしき読書 -->
							<%-- <c:if test="${bookInfo.read.equals('yet')}">
								<form method="GET" action="notRead" name="notread">
									<p align="justify">
										<button type=submit class="button-064">未読</button>
										<input type="hidden" name="bookId" value="${bookInfo.bookId}">
									</p>
								</form>
							</c:if>
							<c:if test="${bookInfo.read.equals('now')}">
								<form method="GET" action="reading" name="readIng">
									<p align="justify">
										<button type=submit class="button-064">読書中</button>
										<input type="hidden" name="bookId" value="${bookInfo.bookId}">
									</p>
								</form>
							</c:if>
							<c:if test="${bookInfo.read.equals('ok')}">
								<form method="GET" action="readend" name="readEnd">
									<p align="justify">
										<button type=submit class="button-064">読了</button>
										<input type="hidden" name="bookId" value="${bookInfo.bookId}">
									</p>
								</form>
							</c:if> --%>
							<div class="nice">
								<c:if test="${!(bookInfo.nice.equals('nice'))}">
									<form method="GET" action="nices" name="nice">
										<p align="justify">
											<button type=submit class="button-064">♡</button>
											<input type="hidden" name="bookId" value="${bookInfo.bookId}">
										</p>
									</form>
								</c:if>
								<c:if test="${bookInfo.nice.equals('nice')}">
									<form method="GET" action="buts" name="but">
										<p align="justify">
											<button type=submit class="button-064">💟</button>
											<input type="hidden" name="bookId" value="${bookInfo.bookId}">
										</p>
									</form>
								</c:if>
								<c:if test="${!(bookInfo.buy.equals('buy'))}">
									<form method="GET" action="buy" name="buy">
										<p align="justify">
											<button type=submit class="button-buy">購入</button>
											<input type="hidden" name="bookId" value="${bookInfo.bookId}">
										</p>
									</form>
								</c:if>
								<c:if test="${bookInfo.buy.equals('buy')}">
									<form method="GET" action="bought" name="bought">
										<p align="justify">
											<button type=submit class="button-buy">購入済み</button>
											<input type="hidden" name="bookId" value="${bookInfo.bookId}">
										</p>
									</form>
								</c:if>
							</div>
							<ul>
								<li class="book_save">${bookInfo.save}</li>
								<li class="book_title">${bookInfo.title}</li>
								<li class="book_author">${bookInfo.author}(著)</li>
								<li class="book_publisher">出版社：${bookInfo.publisher}</li>
								<li class="book_publish_date">出版日：${bookInfo.publishDate}</li>
								<li class="book_review">金額：${bookInfo.money}円</li>
								<li class="book_review">評価：${bookInfo.review}</li>
							</ul>
							<div class="box-015">${bookInfo.introduction}</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</main>
</body>
</html>
