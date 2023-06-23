package jp.co.seattle.library.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import jp.co.seattle.library.dto.BookDetailsInfo;
import jp.co.seattle.library.dto.BookInfo;
import jp.co.seattle.library.rowMapper.BookDetailsInfoRowMapper;
import jp.co.seattle.library.rowMapper.BookInfoRowMapper;

/**
 * 書籍サービス
 * 
 * booksテーブルに関する処理を実装する
 */
@Service
public class BooksService {
	final static Logger logger = LoggerFactory.getLogger(BooksService.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * 書籍リストを取得する
	 *
	 * @return 書籍リスト
	 */
	public List<BookInfo> getBookList() {

		// TODO 書籍名の昇順で書籍情報を取得するようにSQLを修正（タスク３）
		List<BookInfo> getedBookList = jdbcTemplate.query(
				"Select * from books order by title asc",
				new BookInfoRowMapper());

		return getedBookList;
	}

	/**
	 * 書籍IDに紐づく書籍詳細情報を取得する
	 *
	 * @param bookId 書籍ID
	 * @return 書籍情報
	 */
	public BookDetailsInfo getBookInfo(int bookId) {
		String sql = "SELECT id, title, author, publisher, publish_date, isbn, description, thumbnail_url, thumbnail_name, favorite, nice, introduction, save, review, money, buy, number, subtotal FROM books WHERE books.id = ? ORDER BY title ASC;";

		BookDetailsInfo bookDetailsInfo = jdbcTemplate.queryForObject(sql, new BookDetailsInfoRowMapper(), bookId);

		return bookDetailsInfo;
	}

	//レビュー
	public List<BookInfo> getReviewBook() {

		// TODO 
		List<BookInfo> getedReview = jdbcTemplate.query(
				"select * from books order by review desc;",
				new BookInfoRowMapper());

		return getedReview;
	}

	//読書
	/**public void getNotRead(int bookId) {
		String sql;
		sql = "UPDATE books SET read = 'now' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);
	}
	
	public void getReading(int bookId) {
		String sql;
		sql = "UPDATE books SET read = 'ok' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);
	
	}
	
	public void getReadEnd(int bookId) {
		String sql;
		sql = "UPDATE books SET read = 'yet' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);
	
	}*/

	public void insertHistoryBook(int bookId) {
		String sql = "INSERT INTO history(id, title, author, publisher, publish_date, isbn, description, thumbnail_url, thumbnail_name, favorite, nice, introduction, save, review, money, buy, number, subtotal, reg_date, upd_date) SELECT id, title, author, publisher, publish_date, isbn, description, thumbnail_url, thumbnail_name, favorite, nice, introduction, save, review, money, buy, number, subtotal, reg_date, upd_date FROM books WHERE books.id = ?;";
		jdbcTemplate.update(sql, bookId);

	}
	//いいねボタン
	public void getNice(int bookId) {
		String sql;
		sql = "UPDATE books SET nice = 'nice' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);

	}

	public void getBut(int bookId) {
		String sql;
		sql = "UPDATE books SET nice = 'but' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);

	}

	public List<BookInfo> getNiceBook(String nice) {

		// TODO 
		List<BookInfo> getedNiceBook = jdbcTemplate.query(
				"SELECT * FROM books WHERE nice = ?;",
				new BookInfoRowMapper(), nice);

		return getedNiceBook;
	}

	//	購入
	public void getBuy(int bookId) {
		String sql;
		sql = "UPDATE books SET buy = 'buy' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);

	}

	public void getBought(int bookId) throws Exception {
		String sql;
		sql = "UPDATE books SET buy = 'bought' WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);

	}

	//購入
	public List<BookInfo> getBuyBook(String buy) {

		List<BookInfo> getedBuyBook = jdbcTemplate.query(
				"SELECT * FROM books WHERE buy = ?;",
				new BookInfoRowMapper(), buy);

		return getedBuyBook;
	}

	public int getTotalAmount() throws Exception {

		int getedTotalAmount = jdbcTemplate.queryForObject(
				"SELECT SUM(subtotal) FROM books WHERE buy = 'buy';",
				int.class);

		return getedTotalAmount;
	}

	public void numberBook(BookDetailsInfo bookInfo) {
		String sql;
		sql = "UPDATE books SET number = ? WHERE id =?;";
		jdbcTemplate.update(sql, bookInfo.getNumber(), bookInfo.getBookId());
	}

	public void subtotalBook(BookDetailsInfo bookInfo) {
		String sql;
		sql = "UPDATE books SET subtotal = ? WHERE id =?;";
		jdbcTemplate.update(sql, bookInfo.getSubtotal(), bookInfo.getBookId());
	}

	//検索する
	public List<BookInfo> getBookSearch(String title) {

		// TODO 書籍名で検索
		List<BookInfo> getedBookSearch = jdbcTemplate.query(
				"SELECT * FROM books WHERE title LIKE concat('%',?,'%') OR favorite LIKE concat('%',?,'%') OR author LIKE concat('%',?,'%') OR publisher LIKE concat('%',?,'%') ORDER BY title;",
				new BookInfoRowMapper(), title, title, title, title);

		return getedBookSearch;
	}

	//分類
	public List<BookInfo> getFavoriteBook(String favorite) {

		// TODO 
		List<BookInfo> getedFavoriteBook = jdbcTemplate.query(
				"SELECT * FROM books WHERE favorite = ?;",
				new BookInfoRowMapper(), favorite);

		return getedFavoriteBook;
	}

	/**
	 * 書籍を登録する
	 *
	 * @param bookInfo 書籍情報
	 * @return bookId 書籍ID
	 */
	public void registBook(BookDetailsInfo bookInfo) {
		// TODO 取得した書籍情報を登録し、その書籍IDを返却するようにSQLを修正（タスク４）
		String sql = "INSERT INTO books (title,author,publisher,publish_date,thumbnail_name,thumbnail_url,isbn,description,favorite,introduction,save,review,money,number,subtotal,reg_date,upd_date) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now(),now()) RETURNING id;";
		jdbcTemplate.update(sql, bookInfo);
//		int bookId = jdbcTemplate.queryForObject(sql, int.class, bookInfo.getTitle(), bookInfo.getAuthor(),
//				bookInfo.getPublisher(), bookInfo.getPublishDate(), bookInfo.getThumbnailName(),
//				bookInfo.getThumbnailUrl(), bookInfo.getIsbn(), bookInfo.getDescription(), bookInfo.getFavorite(),
//				bookInfo.getIntroduction(), bookInfo.getSave(), bookInfo.getReview(), bookInfo.getMoney(),
//				bookInfo.getNumber(), bookInfo.getSubtotal());
//		return bookId;
	}

	/**
	 * 書籍を削除する
	 * 
	 * @param bookId 書籍ID
	 */
	public void deleteBook(int bookId) {
		// TODO 対象の書籍を削除するようにSQLを修正（タスク6）
		String sql = "DELETE FROM books WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);
	}

	/**
	 * 書籍情報を更新する
	 * 
	 * @param bookInfo
	 */
	public void updateBook(BookDetailsInfo bookInfo) {
		String sql;
		if (bookInfo.getThumbnailUrl() == null) {
			// TODO 取得した書籍情報を更新するようにSQLを修正（タスク５）
			sql = "UPDATE books SET title = ?,author = ?,publisher = ?,publish_date = ?,isbn = ?,description = ?,favorite = ?,nice = ?,introduction = ?,save = ?,review = ?,money = ?,buy = ?,upd_date = now() WHERE id = ?;";
			jdbcTemplate.update(sql, bookInfo.getTitle(), bookInfo.getAuthor(), bookInfo.getPublisher(),
					bookInfo.getPublishDate(), bookInfo.getIsbn(), bookInfo.getDescription(), bookInfo.getFavorite(),
					bookInfo.getNice(), bookInfo.getIntroduction(), bookInfo.getSave(), bookInfo.getReview(),
					bookInfo.getMoney(), bookInfo.getBuy(), bookInfo.getBookId());
		} else {
			// TODO 取得した書籍情報を更新するようにSQLを修正（タスク５）
			sql = "UPDATE books SET title = ?,author = ?,publisher = ?,publish_date = ?,thumbnail_name = ?,thumbnail_url = ?,isbn = ?,description = ?,favorite = ?,nice = ?,introduction = ?,save = ?,review = ?,money = ?,buy = ?,upd_date = now() WHERE id = ?;";
			jdbcTemplate.update(sql, bookInfo.getTitle(), bookInfo.getAuthor(), bookInfo.getPublisher(),
					bookInfo.getPublishDate(), bookInfo.getThumbnailName(), bookInfo.getThumbnailUrl(),
					bookInfo.getIsbn(), bookInfo.getDescription(), bookInfo.getFavorite(), bookInfo.getNice(),
					bookInfo.getIntroduction(), bookInfo.getSave(), bookInfo.getReview(), bookInfo.getMoney(),
					bookInfo.getBuy(), bookInfo.getBookId());
		}
	}
}
