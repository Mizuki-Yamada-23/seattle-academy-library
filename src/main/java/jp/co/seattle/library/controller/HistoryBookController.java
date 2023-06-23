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

import jp.co.seattle.library.dto.HistoryInfo;
import jp.co.seattle.library.service.HistoryService;

/**
 * Handles requests for the application home page.
 */
@Controller // APIの入り口
public class HistoryBookController {
	final static Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private HistoryService historyService;

	@RequestMapping(value = "/historyBook", method = RequestMethod.GET) // value＝actionで指定したパラメータ
	// RequestParamでname属性を取得
	public String leaveBook(Locale locale, Model model) {

		List<HistoryInfo> historyList = historyService.getHistoryInfo();

//			HistoryInfo historyInfo = new HistoryInfo();
//		    historyInfo.setTitle(title);
		
//		model.addAttribute("historyList", historyList);
		
		if (!ObjectUtils.isEmpty(historyList)) {
			model.addAttribute("historyList", historyList);
			return "history";

		} else {
			model.addAttribute("resultMessage3", "削除した書籍は0件です。");

		}
		return "history";
	}
}