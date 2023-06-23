package jp.co.seattle.library.dto;

import org.springframework.context.annotation.Configuration;

import lombok.Data;

/**
 * 書籍基本情報格納DTO
 */
@Configuration
@Data
public class HistoryInfo {

	private int bookId;

	private String title;

	private String author;

	private String publisher;

	private String publishDate;
	
	private String isbn;

	private String thumbnail;

	private String favorite;

	private String nice;

	//	private String read;

	private String introduction;

	private String save;

	private String review;

	private int money;

	private String buy;
	
	private int number;
	
	private int subtotal;

	public HistoryInfo() {

	}

	// コンストラクタ
	public HistoryInfo(int bookId, String title, String author, String publisher, String publishDate, String isbn, String thumbnail,
			String favorite, String introduction, String save, String review, int money, String buy, int number, int subtotal) {
		this.bookId = bookId;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.publishDate = publishDate;
		this.isbn = isbn;
		this.thumbnail = thumbnail;
		this.favorite = favorite;
		this.introduction = introduction;
		this.save = save;
		this.review = review;
		this.money = money;
		this.buy = buy;
		this.number = number;
		this.subtotal = subtotal;
	}

}