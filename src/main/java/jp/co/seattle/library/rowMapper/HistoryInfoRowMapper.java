package jp.co.seattle.library.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.RowMapper;

import jp.co.seattle.library.dto.HistoryInfo;

@Configuration
public class HistoryInfoRowMapper implements RowMapper<HistoryInfo> {

	@Override
	public HistoryInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
		// Query結果（ResultSet rs）を、オブジェクトに格納する実装
		HistoryInfo historyInfo = new HistoryInfo();

		// bookInfoの項目と、取得した結果(rs)のカラムをマッピングする
		historyInfo.setBookId(rs.getInt("id"));
		historyInfo.setTitle(rs.getString("title"));
		historyInfo.setAuthor(rs.getString("author"));
		historyInfo.setPublisher(rs.getString("publisher"));
		historyInfo.setPublishDate(rs.getString("publish_date"));
		historyInfo.setThumbnail(rs.getString("thumbnail_url"));
		historyInfo.setFavorite(rs.getString("favorite"));
		historyInfo.setNice(rs.getString("nice"));
		historyInfo.setIntroduction(rs.getString("introduction"));
		historyInfo.setSave(rs.getString("save"));
		historyInfo.setReview(rs.getString("review"));
		historyInfo.setMoney(rs.getInt("money"));
		historyInfo.setBuy(rs.getString("buy"));
		historyInfo.setNumber(rs.getInt("number"));
		historyInfo.setSubtotal(rs.getInt("subtotal"));
		return historyInfo;
	}

}