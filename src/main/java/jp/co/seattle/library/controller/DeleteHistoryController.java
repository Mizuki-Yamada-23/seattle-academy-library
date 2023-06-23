package jp.co.seattle.library.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.seattle.library.service.HistoryService;

@Controller
public class DeleteHistoryController {
	final static Logger logger = LoggerFactory.getLogger(DeleteHistoryController.class);

	@Autowired
	private HistoryService historyService;
	
	@RequestMapping(value = "/restoreBook", method = RequestMethod.POST)
	public String restoreBook(Locale locale, int bookId, Model model) {
		
		// 書籍情報を削除する
		historyService.insertBooks(bookId);
		historyService.deleteHistory(bookId);
		// 一覧画面に遷移する
		return "redirect:/historyBook";
	}
	@RequestMapping(value = "/deleteHistory", method = RequestMethod.POST)
	public String deleteBook(Locale locale, int bookId, Model model) {
		
		// 書籍情報を削除する
		historyService.deleteHistory(bookId);
		// 一覧画面に遷移する
		return "redirect:/historyBook";
	}

}
