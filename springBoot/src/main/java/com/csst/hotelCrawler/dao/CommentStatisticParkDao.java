package com.csst.hotelCrawler.dao;

import java.util.List;
import com.csst.hotelCrawler.entity.CommentStatisticPark;

public interface CommentStatisticParkDao {
	 public List<CommentStatisticPark> queryParkComment(int id);
}