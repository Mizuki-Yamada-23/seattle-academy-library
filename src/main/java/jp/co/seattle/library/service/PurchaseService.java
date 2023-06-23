package jp.co.seattle.library.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;

import jp.co.seattle.library.dto.PurchaseInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
//APIの入り口 APIとは、他のソフトウェアが外部から自分のソフトウェアへアクセスし利用できるようにしたもの
//ソフトウェアコンポーネントが互いにやりとりするのに使用するインタフェースの仕様
public class PurchaseService {
	final static Logger logger = LoggerFactory.getLogger(PurchaseService.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * ユーザー情報を登録する
	 * 
	 * @param userInfo ユーザー情報
	 */
	public void registPurchase(PurchaseInfo purchaseInfo) {

		// SQL生成
		String sql = "INSERT INTO purchase (Purchaser, furigana,mail,telephone,post,address,block) VALUES ('"
				+ purchaseInfo.getPurchaser() + "','"
				+ purchaseInfo.getFurigana() + "','" + purchaseInfo.getMail() + "','" + purchaseInfo.getTelephone()
				+ "','" + purchaseInfo.getPost() + "','" + purchaseInfo.getAddress() + "','" + purchaseInfo.getBlock()
				+ "')";

		jdbcTemplate.update(sql);
	}
}
	