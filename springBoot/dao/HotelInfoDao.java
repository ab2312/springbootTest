package com.csst.hotelCrawler.dao;

import java.util.List;

import com.ccst.bigdata.dao.DAO;
import com.csst.hotelCrawler.entity.HotelInfo;
import com.csst.hotelCrawler.entity.vo.HotelInfoVo;

public interface HotelInfoDao extends DAO<HotelInfo>{

	void insert(HotelInfo record);
	
    List<HotelInfo> queryAll();
    
    List<HotelInfo>  queryAllId();
    
    HotelInfo  queryById(int id);
    
    List<HotelInfo> queryByDatasource(String datasource);
    
    List<HotelInfo> queryByLikeHotelInfo(HotelInfo hotelInfo);

    List<HotelInfo> queryOtherHotelInfo(HotelInfo hotelInfo);
    
    List<HotelInfoVo> queryMaxAndMinDate();
    
    void updateLocation(HotelInfo record);
    
    void updateGeohash(HotelInfo record);
    
    List<HotelInfo> querySubHotels(int hotelId);
}