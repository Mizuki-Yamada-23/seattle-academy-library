package jp.co.seattle.library.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.seattle.library.dto.BookInfo;
import jp.co.seattle.library.service.BooksService;

/**
 * Handles requests for the application home page.
 */
@Controller // APIの入り口
public class HomeController {
	final static Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private BooksService booksService;

	/**
	 * Homeボタンからホーム画面に戻るページ
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String transitionHome(Model model) {
		//書籍の一覧情報を取得（タスク３）
		List<BookInfo> bookList = booksService.getBookList();
		System.out.println(bookList.get(1));

		if (!ObjectUtils.isEmpty(bookList)) {
			model.addAttribute("bookList", bookList);
			return "home";

		} else {
			model.addAttribute("resultMessage", "書籍データが0件です。");
			return "home";
		}
	}

	//	//いいね
	//	@RequestMapping(value = "/notRead", method = RequestMethod.GET)
	//	public String notRead(Locale locale, @RequestParam("bookId") int bookId,
	//			Model model) {
	//
	//		booksService.getNotRead(bookId);
	//		return "redirect:/home";
	//	}
	//
	//	@RequestMapping(value = "/reading", method = RequestMethod.GET)
	//	public String Reading(Locale locale, @RequestParam("bookId") int bookId,
	//			Model model) {
	//
	//		booksService.getReading(bookId);
	//		return "redirect:/home";
	//	}
	//試し中
	/**@RequestMapping(value = "/notRead", method = RequestMethod.GET)
	public String notRead(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {
	
		booksService.getNotRead(bookId);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/reading", method = RequestMethod.GET)
	public String Reading(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {
	
		booksService.getReading(bookId);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/readend", method = RequestMethod.GET)
	public String Readend(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {
	
		booksService.getReadEnd(bookId);
		return "redirect:/home";
	}*/

	//	試し中
	/**@RequestMapping(value = "/readEnd", method = RequestMethod.GET)
	public String readEnd(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {
	
		booksService.getReadEnd(bookId);
		return "redirect:/home";
	}*/

	//レビュー
	@RequestMapping(value = "/reviewBook", method = RequestMethod.POST)
	public String reviewBook(Model model) {

		List<BookInfo> bookList = booksService.getReviewBook();
		model.addAttribute("bookList", bookList);
		return "home";
	}
	
//	購入
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String buy(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {

		booksService.getBuy(bookId);
		return "redirect:/home";
	}

	@RequestMapping(value = "/bought", method = RequestMethod.GET)
	public String bought(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {

		try {
			booksService.getBought(bookId);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
		}
		return "redirect:/home";
	}

	//いいねボタン
	@RequestMapping(value = "/nices", method = RequestMethod.GET)
	public String nice(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {

		booksService.getNice(bookId);
		return "redirect:/home";
	}

	@RequestMapping(value = "/buts", method = RequestMethod.GET)
	public String but(Locale locale, @RequestParam("bookId") int bookId,
			Model model) {

		booksService.getBut(bookId);
		return "redirect:/home";
	}

	//検索
	@RequestMapping(value = "/homeHome", method = RequestMethod.POST)
	public String homeHome(Locale locale, @RequestParam("bookTitle") String title,
			Model model) {
		logger.info("Welcome homeHome! The client locale is {}.", locale);
		//検索窓
		List<BookInfo> bookList = booksService.getBookSearch(title);
		model.addAttribute("bookList", bookList);
		return "home";
	}

	//分類
	@RequestMapping(value = "/favoriteBooks", method = RequestMethod.POST)
	public String favoriteBooks(Locale locale, @RequestParam("favorite") String favorite,
			Model model) {
		logger.info("Welcome japanese! The client locale is {}.", locale);
		List<BookInfo> bookList = booksService.getFavoriteBook(favorite);
		model.addAttribute("bookList", bookList);
		return "home";
	}

	//分類いいね
	@RequestMapping(value = "/niceBook", method = RequestMethod.POST)
	public String niceBook(Locale locale, @RequestParam("nice") String nice,
			Model model) {
		logger.info("Welcome niceBook! The client locale is {}.", locale);
		List<BookInfo> bookList = booksService.getNiceBook(nice);
		model.addAttribute("bookList", bookList);
		return "home";
	}
}
