package jp.co.seattle.library.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;

import jp.co.seattle.library.dto.HistoryInfo;
import jp.co.seattle.library.rowMapper.HistoryInfoRowMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
//APIの入り口 APIとは、他のソフトウェアが外部から自分のソフトウェアへアクセスし利用できるようにしたもの
//ソフトウェアコンポーネントが互いにやりとりするのに使用するインタフェースの仕様
public class HistoryService {
	final static Logger logger = LoggerFactory.getLogger(HistoryService.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * ユーザー情報を登録する
	 * 
	 * @param userInfo ユーザー情報
	 */
	
//	historyテーブルから書籍情報を取得
	public List<HistoryInfo> getHistoryInfo() {
		List<HistoryInfo> getedHistoryList = jdbcTemplate.query(
				"Select * from history order by title asc",
				new HistoryInfoRowMapper());
		return getedHistoryList;
	}
	public void deleteHistory(int bookId) {
		// TODO 対象の書籍を削除するようにSQLを修正
		String sql = "DELETE FROM history WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);
	}
//復元
	public void insertBooks(int bookId) {
		String sql = "INSERT INTO books(id, title, author, publisher, publish_date, isbn, description, thumbnail_url, thumbnail_name, favorite, nice, introduction, save, review, money, buy, number, subtotal, reg_date, upd_date) SELECT id, title, author, publisher, publish_date, isbn, description, thumbnail_url, thumbnail_name, favorite, nice, introduction, save, review, money, buy, number, subtotal, reg_date, upd_date FROM history WHERE history.id = ?;";
		jdbcTemplate.update(sql, bookId);

	}
	

}
