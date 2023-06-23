<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
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
	width: 11q0;
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
	font-size: 16px;
	line-height: 1.6;
	display: block;
	padding: 2px 20px;
	color: #f41699;
	text-align: center;
	cursor: pointer;
	margin: 10;
}
/* 評価 */
.rate-form {
	display: flex;
	flex-direction: row-reverse;
	justify-content: flex-end;
}

.rate-form input[type=radio] {
	display: none;
}

.rate-form label {
	position: relative;
	padding: 0 5px;
	color: #ccc;
	cursor: pointer;
	font-size: 35px;
}

.rate-form label:hover {
	color: #ffcc00;
}

.rate-form label:hover ~ label {
	color: #ffcc00;
}

.rate-form input[type=radio]:checked ~ label {
	color: #ffcc00;
}

.purchase13 {
	font-size: 190%;
	font-size: 120%;
	padding: 5px 0;
	max-width: 50.2%;
	text-indent: 1em;
	outline: none;
	display: block;
	border: solid 1px #707070;
	border-radius: 0.2em;
}

.label555 {
	display: block;
	/* margin: 10px; */
	width: 99.2%;
	font-weight: bold;
	text-shadow: 0px 0px 2px #707070;
}
</style>
<meta charset="UTF-8">
<title>書籍の追加｜シアトルライブラリ｜シアトルコンサルティング株式会社</title>
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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="resources/js/thumbnail.js"></script>
</head>
<body class="wrapper">
	<header>
		<div class="left">
			<img class="mark" src="resources/img/logo.png" />
			<div class="logo">METATEAM Library 購入者情報登録画面へようこそ！</div>
		</div>
		<div class="right"></div>
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
						<button class="close-button js-close-button"></button>
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
		</div>
	</header>
	<main>
		<div class="authorization_head">
			<img class="mark" src="resources/img/logo.png" />
			<div class="logo">Seattle Library</div>
		</div>
		<div class="purchase10">
			<div class="purchase11">
				<form method="post" action="purchaseAccount">
					<div class="title">購入者情報登録</div>
					<label class="label555">お名前</label>
					<input type="text" class="purchase13" id="purchaser" name="purchaser" autocomplete="off" required>
					<label class="label555">フリガナ</label>
					<input type="text" pattern="(?=.*?[\u30A1-\u30FC])[\u30A1-\u30FC\s]*" class="purchase13" id="furigana" name="furigana" autocomplete="off" required>
					<label class="label555">メールアドレス</label>
					<input type="email" class="purchase13" id="mail" name="mail" autocomplete="off" required>
					<label class="label555">電話番号</label>
					<input type="tel" pattern="\d{2,4}-\d{2,4}-\d{3,4}" class="purchase13" id="telephone" name="telephone" required>
					<label class="label555">郵便番号</label>
					<input type="text" pattern="\d{3}-?\d{4}" class="purchase13" id="post" name="post" autocomplete="postal-code" required>
					<label class="label555">ご住所</label>
					<input type="text" class="purchase13" id="address" name="address" placeholder="○○都○○区" autocomplete="off" required>
					<input type="text" class="purchase13" id="block" name="block" placeholder="番地・マンション名" autocomplete="off" required>
					<input type="submit" class="buttonpurchase" value="完了">
				</form>
			</div>
			<div class="authorization_navi"></div>
		</div>
		</form>
	</main>
</body>
</html>