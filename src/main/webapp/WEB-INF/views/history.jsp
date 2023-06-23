<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf8"%>
<%@ page import="java.util.*"%>
<html>
<head>
<style>
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
/* .flex {
	display: flex;
	margin: 10; */
}
/* .book_noimg2 {
	border: thin solid black
} */
.book_title20 {
	border: thin solid black
}

.book_author20 {
	border: thin solid black
}

.book_publisher20 {
	border: thin solid black
}

.book_publish_date20 {
	border: thin solid black
}

.book_isbn20 {
	border: thin solid black
}

.book_introduction20 {
	border: thin solid black
}

.book_review10 {
	border: thin solid black
}

.book_money20 {
	border: thin solid black
}

/* .book_count2 {
	border: thin solid black
} */

/* .book_money5 {
	border: thin solid black
}

.book_remove20 {
	border: thin solid black
} */

/* .book_noimg1 {
	display: flex;
	height: 120px;
	width: 150px;
	margin: 10 0 0 20;
} */
.book_title10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 250;
	vertical-align: middle;
	border: thin solid black
}

.book_author10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 150;
	vertical-align: middle;
	border: thin solid black
}

.book_publisher10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 150;
	vertical-align: middle;
	border: thin solid black
}

.book_publish_date10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 80;
	vertical-align: middle;
	border: thin solid black
}

.book_isbn10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 100;
	vertical-align: middle;
	border: thin solid black
}

.book_introduction10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.book_review10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 100;
	vertical-align: middle;
	border: thin solid black
}

.book_money10 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 100;
	vertical-align: middle;
	border: thin solid black
}

.book_btn20 {
	display: flex;
	font-size: 15px;
	margin: 10;
	width: 100;
	vertical-align: middle;
	border: thin solid black;
}

.book_remove10 {
	isplay: flex;
	font-size: 20px;
	margin: 10;
	/* width: 200; */
	vertical-align: middle;
	border: thin solid black
}

.waku0 {
	display: flex;
	margin: 0 0 0 20;
	padding: 0;
	border: none;
	vertical-align: middle;
	border: thin solid black
}

.buttonRemove {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100px;
	margin: 0 auto;
	padding: .9em 2em;
	border: none;
	border-radius: 25px;
	box-shadow: 0 2px 3px rgb(0 0 0/ 25%), 0 2px 3px -2px rgb(0 0 0/ 15%);
	background-color: #fecb3e;
	color: #fff;
	font-weight: 600;
	/* font-size: 1em; */
}

.buttonRemove:hover {
	background-color: #eebb2e;
}
/* .buttonRestore{
	display: flex;
}
.buttonHistoryDelete{
	
} */
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
	</div>
	<main>
		<h1>削除済み履歴</h1>
	</main>
	<c:if test="${!empty resultMessage3}">
		<div class="error_msg">${resultMessage3}</div>
	</c:if>
	<c:forEach var="historyInfo" items="${historyList}">
		<table class="waku0" border="1" width="1400">
			<tr align="center">
				<th class="book_title20">名前</th>
				<th class="book_author20">著者</th>
				<th class="book_publisher20">出版社</th>
				<th class="book_publish_date20">出版日</th>
				<th class="book_isbn20">ISBN</th>
				<th class="book_introduction20">紹介</th>
				<th class="book_review20">評価</th>
				<th class="book_money20">金額</th>
				<th class="book_money20">復元</th>
				<th class="book_money20">削除</th>
			</tr>
			<tr align="center">
				<td class="book_title10">${historyInfo.title}</td>
				<td class="book_author10">${historyInfo.author}</td>
				<td class="book_publisher10">${historyInfo.publisher}</td>
				<td class="book_publish_date10">${historyInfo.publishDate}</td>
				<td class="book_isbn10">${historyInfo.isbn}</td>
				<td class="book_introduction10">${historyInfo.introduction}</td>
				<td class="book_review10">${historyInfo.review}</td>
				<td class="book_money10">${historyInfo.money}円</td>
				<td class="book_btn20"><form method="POST" action="restoreBook"
						name="restore">
						<input type="hidden" id="bookId" name="bookId"
							value="${historyInfo.bookId}">
						<button type="submit" id="restore-btn" class="buttonRestore">復元</button>
					</form></td>
				<td class="book_btn20"><form method="POST"
						action="deleteHistory" name="delete">
						<input type="hidden" id="bookId" name="bookId"
							value="${historyInfo.bookId}">
						<button type="submit" id="deleteHistory-btn"
							class="buttonHistoryDelete">削除</button>
					</form></td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>
