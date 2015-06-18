package com.csst.hotelCrawler.dao;

import java.util.List;

import com.csst.hotelCrawler.entity.CommentStatistic;

public interface CommentStatisticDao {
    List<CommentStatistic> queryByhotelId(int hotelId);
    
    void  recomputeStatistic();
    
    void deleteAll();
}