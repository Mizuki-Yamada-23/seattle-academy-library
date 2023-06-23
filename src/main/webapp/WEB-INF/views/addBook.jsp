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
			<div class="logo">METATEAM Library 書籍追加画面へようこそ！</div>
		</div>
		<div class="right">
			<!-- 基本 -->
			<%-- <ul>
				<li><a href="<%=request.getContextPath()%>/home" class="menu">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/">ログアウト</a></li>
			</ul> --%>
			<!-- 基本 -->
		</div>
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
		<!-- スクリプト -->
		</div>
	</header>
	<main>
		<form action="<%=request.getContextPath()%>/insertBook" method="post"
			enctype="multipart/form-data" id="data_upload_form">
			<h1>書籍の追加</h1>
			<div class="content_body add_book_content">
				<div>
					<span>書籍の画像</span> <span class="care care1">任意</span>
					<div class="book_thumnail">
						<img class="book_noimg" src="resources/img/noImg.png">
					</div>
					<input type="file" accept="image/*" name="thumbnail" id="thumbnail">
				</div>
				<div class="content_right">
					<div>
						<c:if test="${!empty errorList}">
							<div class="error">
								<c:forEach var="error" items="${errorList}">
									<p>${error}</p>
								</c:forEach>
							</div>
						</c:if>
						<span>書籍名</span><span class="care care2">必須</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="title" value="${bookInfo.title}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="title" autocomplete="off">
						</c:if>
					</div>
					<div>
						<span>著者名</span><span class="care care2">必須</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="author" value="${bookInfo.author}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="author" autocomplete="off">
						</c:if>
					</div>
					<div>
						<span>出版社</span><span class="care care2">必須</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="publisher" value="${bookInfo.publisher}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="publisher">
						</c:if>
					</div>
					<div>
						<span>出版日</span><span class="care care2">必須</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="publishDate"
								value="${bookInfo.publishDate}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="publishDate">
						</c:if>
					</div>
					<div>
						<span>ISBN</span><span class="care care1">任意</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="isbn" value="${bookInfo.isbn}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="isbn">
						</c:if>
					</div>
					<div>
						<span>説明文</span><span class="care care1">任意</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="description"
								value="${bookInfo.description}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="description">
						</c:if>
					</div>
					<div>
						<span>金額</span><span class="care care1">任意</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="money" value="${bookInfo.money}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="money" value="0">
						</c:if>
					</div>
					<div>
						<span>お気に入り</span><span class="care care1">任意</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="favorite" value="${bookInfo.favorite}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="favorite">
						</c:if>
					</div>
					<div>
						<span>紹介</span><span class="care care1">任意</span>
						<c:if test="${!empty bookInfo}">
							<input type="text" name="introduction"
								value="${bookInfo.favorite}">
						</c:if>
						<c:if test="${empty bookInfo}">
							<input type="text" name="introduction">
						</c:if>
					</div>
					<div>
						<span class="care care1">任意</span> <input type="radio" name="save"
							value="新しく書籍が追加されました!" checked="checked">新しく書籍が追加されました<input
							type="radio" name="save" value="未読">未読 <input
							type="radio" name="save" value="読書中">読書中 <input
							type="radio" name="save" value="読了">読了
						<%-- </c:if> --%>
					</div>
					<div class="rate-form">
						<input id="star5" type="radio" name="review" value="★★★★★">
						<label for="star5">★</label> <input id="star4" type="radio"
							name="review" value="★★★★"> <label for="star4">★</label>
						<input id="star3" type="radio" name="review" value="★★★">
						<label for="star3">★</label> <input id="star2" type="radio"
							name="review" value="★★"> <label for="star2">★</label> <input
							id="star1" type="radio" name="review" value="★"> <label
							for="star1">★</label> <input id="star0" type="radio"
							name="review" value="" checked="checked"> <label
							for="star0"></label>
					</div>
					<input type="hidden" id="bookId" name="bookId"
						value="${bookInfo.bookId}">
				</div>
			</div>
			<div class="bookBtn_box">
				<button type="submit" id="add-btn" class="btn_addBook">登録</button>
			</div>
		</form>
	</main>
</body>
</html>