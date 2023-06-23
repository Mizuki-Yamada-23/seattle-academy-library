package jp.co.seattle.library.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.seattle.library.dto.PurchaseInfo;
import jp.co.seattle.library.service.PurchaseService;

/**
 * アカウント作成コントローラー
 */
@Controller // APIの入り口
public class PurchaseController {
	final static Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private PurchaseService purchaseService;

	@RequestMapping(value = "/purchaseBook", method = RequestMethod.GET) // value＝actionで指定したパラメータ
	public String purAccount(Model model) {
		return "purchase";
	}

	/**
	 * 新規アカウント作成
	 *
	 * @param email            メールアドレス
	 * @NotEmpty (message = "正しいメールアドレスを入力してください。")
	 * @param password         パスワード
	 * @NotEmpty (message = "半角数字で入力してください。)
	 * @Size(min = 8, message = "パスワードは8文字以上で入力してください。)
	 * @param passwordForCheck 確認用パスワード
	 * @param model
	 * @return ホーム画面に遷移
	 */
	@Transactional
	@RequestMapping(value = "/purchaseAccount", method = RequestMethod.POST)
	public String purchaseAccount(Locale locale, @RequestParam("purchaser") String purchaser,
			@RequestParam("furigana") String furigana, @RequestParam("mail") String mail,
			@RequestParam("telephone") String telephone, @RequestParam("post") String post, @RequestParam("address") String address, @RequestParam("block") String block, Model model) {
		// デバッグ用ログ
		logger.info("Welcome purchaseAccount! The client locale is {}.", locale);

		// バリデーションチェック、パスワード一致チェック（タスク１）
		//		if (password.length() >= 8 && password.matches("[0-9a-zA-Z]+")) {
		//			if (password.equals(passwordForCheck)) {

		// パラメータで受け取ったアカウント情報をDtoに格納する。
		PurchaseInfo purchaseInfo = new PurchaseInfo();
		purchaseInfo.setPurchaser(purchaser);
		purchaseInfo.setFurigana(furigana);
		purchaseInfo.setMail(mail);
		purchaseInfo.setTelephone(telephone);
		purchaseInfo.setPost(post);
		purchaseInfo.setAddress(address);
		purchaseInfo.setBlock(block);
		purchaseService.registPurchase(purchaseInfo);
		return "redirect:/home";
	}
}
//			} else {
//				model.addAttribute("errorMessage", "パスワードが一致しません。");
//				return "createAccount";
//			}
//		} else {
//			model.addAttribute("errorMessage", "パスワードは８文字以上かつ半角英数字に設定してください。");
//			return "createAccount";
//		}
//}
//	}
