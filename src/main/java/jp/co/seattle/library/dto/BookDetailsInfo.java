package jp.co.seattle.library.dto;

import org.springframework.context.annotation.Configuration;

import lombok.Data;

/**
 * 書籍詳細情報格納DTO
 *
 */
@Configuration
@Data
public class BookDetailsInfo {

	private int bookId;

	private String title;

	private String author;

	private String publisher;

	private String publishDate;

	private String thumbnailUrl;

	private String thumbnailName;

	private String isbn;

	private String description;

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

}