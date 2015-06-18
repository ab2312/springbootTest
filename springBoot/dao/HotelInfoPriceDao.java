package com.csst.hotelCrawler.dao;

import java.util.Date;
import java.util.List;

import com.ccst.bigdata.dao.DAO;
import com.csst.hotelCrawler.entity.HotelInfoPrice;

public interface HotelInfoPriceDao extends DAO<HotelInfoPrice> {
	
	public void insert(HotelInfoPrice record);
	
	public List<HotelInfoPrice> queryById(int[] ids);
		
    public void insertIntoHistory();
    
    public void delete();
    
    public void insertFromTmp();
    
    public void delTmp();
    
    public List<HotelInfoPrice> findTmpOne();
    
    public List<HotelInfoPrice> queryHistory(int id, String date);
}
