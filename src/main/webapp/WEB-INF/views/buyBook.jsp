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
.book_noimg2 {
	border: thin solid black
}

.book_title2 {
	border: thin solid black
}

.book_author2 {
	border: thin solid black
}

.book_publisher2 {
	border: thin solid black
}

.book_review1 {
	border: thin solid black
}

.book_money2 {
	border: thin solid black
}

.book_count2 {
	border: thin solid black
}

.book_money5 {
	border: thin solid black
}

.book_remove2 {
	border: thin solid black
}

.book_noimg1 {
	display: flex;
	height: 120px;
	width: 150px;
	margin: 10 0 0 20;
}

.book_title1 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 250;
	vertical-align: middle;
	border: thin solid black
}

.book_author1 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.book_publisher1 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.book_review1 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.book_money1 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.book_count1 {
	margin: 10;
	vertical-align: middle;
	border: thin solid black
}

.book_money51 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.book_remove1 {
	isplay: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.waku {
	display: flex;
	margin: 0 0 0 20;
	padding: 0;
	border: none;
	vertical-align: middle;
	border: thin solid black
}

.book_noimg3 {
	display: flex;
	height: 120px;
	width: 150px;
	/* margin: 10 0 0 20; */
}

.book_title3 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	/* border: thin solid black */
}

.book_author3 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	/* border: thin solid black */
}

.book_publisher3 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	/* border: thin solid black */
}

.book_review3 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	/* border: thin solid black */
}

.book_money3 {
	display: flex;
	font-size: 20px;
	margin: 10;
	width: 200;
	vertical-align: middle;
	border: thin solid black
}

.waku2 {
	display: flex;
	margin: 0 0 0 20;
	padding: 0;
	border: none;
	vertical-align: middle;
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
		<h1>カート中身</h1>
		<a href="<%=request.getContextPath()%>/purchaseBook"
			class="btn_purchase_book">購入画面へ進む</a>
	</main>
	<c:if test="${!empty resultMessage2}">
		<div class="error_msg">${resultMessage2}</div>
	</c:if>
	<c:forEach var="bookInfo" items="${bookList}">
		<table class="waku" border="1" width="1250">
			<tr align="center">
				<th class="book_noimg2"></th>
				<th class="book_title2">名前</th>
				<th class="book_author2">著者</th>
				<th class="book_publisher2">出版社</th>
				<th class="book_review2">評価</th>
				<th class="book_money2">金額</th>
				<th class="book_count2">個数</th>
				<th class="book_money5">小計</th>
				<th class="book_remove2">カートから削除する</th>
			</tr>
			<tr align="center">
				<td><c:if test="${empty bookInfo.thumbnail}">
						<img class="book_noimg1" src="resources/img/noImg.png">
					</c:if> <c:if test="${!empty bookInfo.thumbnail}">
						<img class="book_noimg1" src="${bookInfo.thumbnail}">
					</c:if></td>
				<td class="book_title1">${bookInfo.title}</td>
				<td class="book_author1">${bookInfo.author}(著)</td>
				<td class="book_publisher1">${bookInfo.publisher}</td>
				<td class="book_review1">${bookInfo.review}</td>
				<td class="book_money1">${bookInfo.money}円</td>
				<td class="book_count1"><form action="numberBook" method="POST">
				<input type="hidden" id="num" name="num"
							value="${bookInfo.number}">
						<label class="numberbox"><select name="number"
							onchange="saveSelection(this)">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
						</select>
						<script>
                     // ページが読み込まれたときに保存された選択状態を反映する
                     window.addEventListener('DOMContentLoaded',function() {
                          var savedSelection = localStorage.getItem('selectedNumber');
                          if (savedSelection) {
                           document.querySelector('select[name="number"]').value = savedSelection;
                           }
                         });
                     /* 画面で書籍の数字を受け取る
     				画面がわに書籍の数字を受け取るタグを作る
     				セレクトのオプション指定
     				jsで受け取る */
                     // 選択が変更されたときに保存する
                     function saveSelection(selectElement) {
                      var selectedNumber = selectElement.value;
                      localStorage.setItem('selectedNumber',selectedNumber);
                     }
                    </script>
                    <input type="hidden" id="bookId" name="bookId"
							value="${bookInfo.bookId}">
							<button type="submit" id="number-btn" class="buttonNumber">確定</button>
					</form></td>
				<td class="book_money51">${bookInfo.subtotal}円</td>
				<td class="book_remove1"><form method="POST"
						action="removeBook" name="remove">
						<input type="hidden" id="bookId" name="bookId"
							value="${bookInfo.bookId}">
						<button type="submit" id="remove-btn" class="buttonRemove">削除</button>
					</form></td>
			</tr>
		</table>
	</c:forEach>
	<table class="waku2" border="1" width="1250">
		<tr align="center">
			<th class="book_noimg2"></th>
			<th class="book_noimg2"></th>
			<th class="book_noimg2"></th>
			<th class="book_noimg2"></th>
			<th class="book_noimg2"></th>
			<th class="book_money2">合計金額</th>
		</tr>
		<tr align="center">
			<td class="book_noimg3"></td>
			<td class="book_title3"></td>
			<td class="book_author3"></td>
			<td class="book_publisher3"></td>
			<td class="book_review3"></td>
			<td class="book_money1">${bookSum}円</td>
		</tr>
	</table>
</body>
</html>
