package jp.co.seattle.library.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jp.co.seattle.library.dto.BookDetailsInfo;
import jp.co.seattle.library.dto.BookInfo;
import jp.co.seattle.library.service.BooksService;

/**
 * Handles requests for the application home page.
 */
@Controller // APIの入り口
public class BuyBookController {
	final static Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private BooksService booksService;

	@RequestMapping(value = "/buyBook", method = RequestMethod.GET) // value＝actionで指定したパラメータ
	// RequestParamでname属性を取得
	public String buyBook(Locale locale, @RequestParam("buy") String buy, Model model) {

		List<BookInfo> bookList = booksService.getBuyBook(buy);

		//		ブックリストから書籍情報bookInfoを取り出す
		for (BookInfo book : bookList) {

			int subtotal = book.getMoney() * book.getNumber();

			BookDetailsInfo bookInfo = new BookDetailsInfo();
			bookInfo.setBookId(book.getBookId());
			bookInfo.setSubtotal(subtotal);
			booksService.subtotalBook(bookInfo);
			book.setSubtotal(subtotal);
		}
		////	logger.info("書きくけこ", locale);
		//		int subtotal = booksService.getSubTotal();
		//		model.addAttribute("subtotal", subtotal);
		model.addAttribute("bookList", bookList);

		try {
			int bookSum = booksService.getTotalAmount();
			model.addAttribute("bookSum", bookSum);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			model.addAttribute("resultMessage2", "カートに入れた書籍は0件です。");

		}

		return "buyBook";
	}

	//	@RequestMapping(value = "/countBook", method = RequestMethod.POST) // value＝actionで指定したパラメータ
	//	// RequestParamでname属性を取得
	//	public String countBook(Locale locale, @RequestParam("count") int count, Model model) {
	//
	//		BookDetailsInfo bookInfo = new BookDetailsInfo();
	//		bookInfo.setCount(count);
	//	}
	//
	//	int bookId = booksService.getCountBook(bookInfo);
	//	//		model.addAttribute("subtotal", subtotal);
	//	return"buyBook";

	@RequestMapping(value = "/removeBook", method = RequestMethod.POST)
	public String removeBook(Locale locale, int bookId, Model model) {

		try {
			booksService.getBought(bookId);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			//			e.printStackTrace();
			return "buyBook";
		}

		return "redirect:/buyBook?buy=buy";
	}
	//	@RequestMapping(value = "/countBook", method = RequestMethod.POST) // value＝actionで指定したパラメータ
	//	// RequestParamでname属性を取得
	//	public String countBook(Locale locale, @RequestParam("count") int count, Model model) {
	//
	//		BookDetailsInfo bookInfo = new BookDetailsInfo();
	//		bookInfo.setCount(count);
	//	}
	//
	//	int bookId = booksService.countBook(bookInfo);
	//	//		model.addAttribute("subtotal", subtotal);
	//	return"buyBook";

	@RequestMapping(value = "/numberBook", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String numberBook(Locale locale, @RequestParam("number") int number, @RequestParam("bookId") int bookId,
			Model model, RedirectAttributes redirectAttributes) {
		logger.info("Welcome numberBooks.java! The client locale is {}.", locale);

		
		System.out.println(number+"あいうえお");
		System.out.println(bookId+"書きくけこ");

		// パラメータで受け取った書籍情報をDtoに格納する。
		BookDetailsInfo bookInfo = new BookDetailsInfo();
		bookInfo.setBookId(bookId);
		bookInfo.setNumber(number);

		// 書籍情報を新規登録する
		booksService.numberBook(bookInfo);
		System.out.println(90);
		// 詳細画面に遷移する
		return "redirect:/buyBook?buy=buy";

	}

}