<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
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
/* 削除 */
.layer7 {
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

.layer7.is-open {
	z-index: 999;
	opacity: 1;
	visibility: visible;
}

.layer7.is-open .modal7 {
	opacity: 1;
	visibility: visible;
}

.modal7__button-wrap {
	position: absolute;
	right: 10px;
	top: -28px;
	display: inline-flex;
}

.close-button7 {
	position: relative;
	width: 39px;
	height: 39px;
	background: orange;
	border-radius: 50%;
	padding: 0;
	border: transparent;
	cursor: pointer;
}

.close-button7 span {
	width: 25px;
	height: 2px;
	background: #fff;
	display: inline-block;
	position: absolute;
	left: calc(50% - 12px);
	top: 50%;
	border-radius: 20px;
}

.close-button7 span:nth-child(1) {
	transform: rotate(45deg) translate(-1px, -1px);
}

.close-button7 span:nth-child(2) {
	transform: rotate(-45deg) translate(1px, -1px);
}

.modal7 {
	position: relative;
	margin-right: auto;
	margin-left: auto;
	width: 80%;
	min-width: 440px;
	opacity: 0;
	visibility: hidden;
	transition: visibility .7s linear, opacity .7s linear;
}

.modal7__inner {
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

.modal7__content {
	padding-top: 15px;
	padding-bottom: 23px;
}

.modal7__button-area {
	max-width: 843px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 17px;
	padding-top: 15px;
}

.button7 {
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
/* 削除モーダル */
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
			<div class="logo">METATEAM Library 書籍編集画面へようこそ！</div>
		</div>
		<div class="right">
			<%-- <ul>
				<li><a href="<%=request.getContextPath()%>/home" class="menu">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/">ログアウト</a></li>
			</ul> --%>
		</div>
		<!-- スクリプト -->
		<!-- ho-mu -->
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
	</header>
	<main>
		<form action="<%=request.getContextPath()%>/updateBook" method="post"
			enctype="multipart/form-data" id="data_upload_form">
			<h1>書籍の編集</h1>
			<div class="content_body add_book_content">
				<div>
					<span>書籍の画像</span> <span class="care care1">任意</span>
					<div class="book_thumnail">
						<c:if test="${empty bookInfo.thumbnailUrl}">
							<img class="book_noimg" src="resources/img/noImg.png">
						</c:if>
						<c:if test="${!empty bookInfo.thumbnailUrl}">
							<img class="book_noimg" src="${bookInfo.thumbnailUrl}">
						</c:if>
					</div>
					<input type="file" accept="image/*" name=thumbnail id="thumbnail">
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
						<span>書籍名</span><span class="care care2">必須</span> <input
							type="text" name="title" value="${bookInfo.title}">
					</div>
					<div>
						<span>著者名</span><span class="care care2">必須</span> <input
							type="text" name="author" value="${bookInfo.author}">
					</div>
					<div>
						<span>出版社</span><span class="care care2">必須</span> <input
							type="text" name="publisher" value="${bookInfo.publisher}">
					</div>
					<div>
						<span>出版日</span><span class="care care2">必須</span> <input
							type="text" name="publishDate" value="${bookInfo.publishDate}">
					</div>
					<div>
						<span>ISBN</span><span class="care care1">任意</span> <input
							type="text" name="isbn" value="${bookInfo.isbn}">
					</div>
					<div>
						<span>説明文</span><span class="care care1">任意</span> <input
							type="text" name="description" value="${bookInfo.description}">
					</div>
					<div>
						<span>金額</span><span class="care care1">任意</span> <input
							type="text" name="money" value="${bookInfo.money}">
					</div>
					<div>
						<span>お気に入り</span><span class="care care1">任意</span> <input
							type="text" name="favorite" value="${bookInfo.favorite}">
					</div>
					<div>
						<span>紹介</span><span class="care care1">任意</span> <input
							type="text" name="introduction" value="${bookInfo.introduction}">
					</div>
					<div class="save_book">
						<span>読書状況</span><span class="care care1">任意</span> <input
							type="radio" name="save" value="未読">未読 <input
							type="radio" name="save" value="読書中">読書中
						<input type="radio" name="save" value="読了">読了
						<script>
 								// ページが読み込まれたときに保存された評価を反映する
									 window.addEventListener('DOMContentLoaded', function() {	
  									var savedSave = localStorage.getItem('save');
  									if (savedSave) {
   									document.querySelector('input[name="save"][value="' + savedSave
     									+ '"]').checked = true;
  									}
 									});

 									// 評価が変更されたときに保存する
 									document.addEventListener('change', function(event) {
  									var saveValue = event.target.value;
  									if (event.target.matches('input[name="save"]')) {
   									localStorage.setItem('save', saveValue);
  									}
 									});
							</script>
					</div>
					<div>
						<span>評価</span><span class="care care1">任意</span>
						<div class="rate-form">
							<input id="star5" type="radio" name="review" value="★★★★★">
							<label for="star5">★</label> <input id="star4" type="radio"
								name="review" value="★★★★"> <label for="star4">★</label>
							<input id="star3" type="radio" name="review" value="★★★">
							<label for="star3">★</label> <input id="star2" type="radio"
								name="review" value="★★"> <label for="star2">★</label>
							<input id="star1" type="radio" name="review" value="★">
							<label for="star1">★</label> <input id="star0" type="radio"
								name="review" value="︎"> <label for="star0">‍️</label>
						</div>
							<script>
 								// ページが読み込まれたときに保存された評価を反映する
									 window.addEventListener('DOMContentLoaded', function() {	
  									var savedReview = localStorage.getItem('review');
  									if (savedReview) {
   									document.querySelector('input[name="review"][value="' + savedReview
     									+ '"]').checked = true;
  									}
 									});

 									// 評価が変更されたときに保存する
 									document.addEventListener('change', function(event) {
  									var reviewValue = event.target.value;
  									if (event.target.matches('input[name="review"]')) {
   									localStorage.setItem('review', reviewValue);
  									}
 									});
							</script>
					</div>
				</div>
				<input type="hidden" id="bookId" name="bookId"
					value="${bookInfo.bookId}">
			</div>
			<div class="bookBtn_box">
				<button type="submit" id="add-btn" class="btn_updateBook">更新</button>
				<button type="button" class="btn_deleteBook">削除</button>
			</div>
		</form>
		<div class="layer7 js-modal7">
			<div class="modal7">
				<div class="modal7__inner">
					<div class="modal7__button-wrap">
						<button class="close-button7 js-close-button7">
							<span></span> <span></span>
						</button>
					</div>
					<div class="modal7__contents">
						<div class="modal7__content">本当に削除しますか？</div>
						<form method="post" action="deleteBook" name="delete">
							<input type="hidden" id="bookId" name="bookId"
								value="${bookInfo.bookId}">
							<button type="submit" id="delete-btn"
								class="button7 js-modal-button7">削除</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script>
		const modal7 = document.querySelector('.js-modal7');
		  const modalButton7 = document.querySelector('.btn_deleteBook');
		  const modalClose7 = document.querySelector('.js-close-button7');

		  modalButton7.addEventListener('click', () => {
		    modal7.classList.add('is-open');
		    console.log("open");

		  });

		  modalClose7.addEventListener('click', () => {
		    modal7.classList.remove('is-open');
		    console.log("close");

		  }); 
  		</script>
	</main>
</body>
</html>