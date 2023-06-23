package jp.co.seattle.library.commonutil;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import jp.co.seattle.library.dto.BookDetailsInfo;

@Service
public class BookUtil {
	final static Logger logger = LoggerFactory.getLogger(BookUtil.class);
	private static final String REQUIRED_ERROR = "未入力の必須項目があります";
	private static final String ISBN_ERROR = "ISBNの桁数または半角数字が正しくありません";
	private static final String PUBLISHDATE_ERROR = "出版日は半角数字のYYYYMMDD形式で入力してください";
	private static final String FAVORITE_ERROR = "💙国語⭐アニメ️🔺読んでいない本✌️おすすめ本️から選んでください";
	/**private static final String MONEY_ERROR = "金額は半角数字で入力してください";*/

	/**
	 * 登録前のバリデーションチェック
	 *
	 * @param bookInfo 書籍情報
	 * @return errorList エラーメッセージのリスト
	 */
	public List<String> checkBookInfo(BookDetailsInfo bookInfo) {

		//TODO　各チェックNGの場合はエラーメッセージをリストに追加（タスク４）
		List<String> errorList = new ArrayList<>();
		// 必須チェック
		if (isEmptyBookInfo(bookInfo)) {
			errorList.add(REQUIRED_ERROR);
		}
		// ISBNのバリデーションチェック
		if (!isValidIsbn(bookInfo.getIsbn())) {
			errorList.add(ISBN_ERROR);
		}
		// 出版日の形式チェック
		if (!checkDate(bookInfo.getPublishDate())) {
			errorList.add(PUBLISHDATE_ERROR);
		}

		if (!checkFavorite(bookInfo.getFavorite())) {
			errorList.add(FAVORITE_ERROR);
		}

		/**if (!bookMoney(bookInfo.getMoney())) {
			errorList.add(MONEY_ERROR);
		}*/

		return errorList;
	}

	/**
	 * 日付の形式が正しいかどうか
	 * 
	 * @param publishDate
	 * @return
	 */
	private static boolean checkDate(String publishDate) {
		try {
			DateFormat formatter = new SimpleDateFormat("yyyyMMdd");
			formatter.setLenient(false); // ←これで厳密にチェックしてくれるようになる
			//TODO　取得した日付の形式が正しければtrue（タスク４）
			Date publishDate2 = (Date) formatter.parse(publishDate);
			String publishDate3 = formatter.format(publishDate2);
			if (publishDate.equals(publishDate3)) {
				return true;
			} else {
				return false;
			}
		} catch (Exception p) {
			p.printStackTrace();
			return false;
		}
	}

	/**
	 * ISBNの形式チェック
	 * 
	 * @param isbn
	 * @return ISBNが半角数字で10文字か13文字かどうか
	 */
	private static boolean isValidIsbn(String isbn) {
		//TODO　ISBNが半角数字で10文字か13文字であればtrue（タスク４）
		if (!isbn.isEmpty()) {
			if (isbn.matches("^[0-9]+$") && (isbn.length() == 10 || isbn.length() == 13)) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	}

	/**
	 * 必須項目の存在チェック
	 * 
	 * @param bookInfo
	 * @return タイトル、著者、出版社、出版日のどれか一つでもなかったらtrue
	 */
	private static boolean isEmptyBookInfo(BookDetailsInfo bookInfo) {
		//TODO　タイトル、著者、出版社、出版日のどれか一つでもなかったらtrue（タスク４）
		if (StringUtils.isEmpty(bookInfo.getTitle()) || StringUtils.isEmpty(bookInfo.getAuthor())
				|| StringUtils.isEmpty(bookInfo.getPublisher()) || StringUtils.isEmpty(bookInfo.getPublishDate())) {
			return true;
		} else {
			return false;
		}
	}

	private static boolean checkFavorite(String favorite) {
		//TODO 💙⭐️🔺✌️のみ表示
		String str1 = "💙";
		String str2 = "⭐️";
		String str3 = "🔺";
		String str4 = "✌️";
		if (!favorite.isEmpty()) {
			if (str1.matches(favorite) || str2.matches(favorite) || str3.matches(favorite) || str4.matches(favorite)) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	}

	/**private static boolean bookMoney(int money) {
		//TODO　半角数字であればtrue
		if (!money.isEmpty()) {
			if (money.matches("^[0-9]+$")) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	}*/
}
