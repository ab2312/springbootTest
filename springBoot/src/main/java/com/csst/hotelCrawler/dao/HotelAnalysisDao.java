package com.csst.hotelCrawler.dao;

import java.util.List;

import com.csst.hotelCrawler.entity.HotelAnalysis;

public interface HotelAnalysisDao {

	List<HotelAnalysis> queryByHotelId(int[] ids);
}
