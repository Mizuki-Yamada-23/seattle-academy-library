package jp.co.seattle.library.dto;

import org.springframework.context.annotation.Configuration;

import lombok.Data;

/**
 * ユーザー情報格納DTO
 *
 */
@Configuration
@Data
public class PurchaseInfo {

	private int purchaserId;

	private String purchaser;

	private String furigana;

	private String mail;

	private String telephone;

	private String post;
	
	private String address;
	
	private String block;

	public PurchaseInfo() {

	}

	public PurchaseInfo(int purchaserId, String purchaser, String furigana, String mail, String telephone, String post, String address, String block) {
		this.purchaserId = purchaserId;
		this.purchaser = purchaser;
		this.furigana = furigana;
		this.mail = mail;
		this.telephone = telephone;
		this.post = post;
		this.address = address;
		this.block = block;
	}

}