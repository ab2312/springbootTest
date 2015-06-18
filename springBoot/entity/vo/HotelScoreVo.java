package com.csst.hotelCrawler.entity.vo;

import com.csst.hotelCrawler.entity.HotelScore;

public class HotelScoreVo extends HotelScore{
	 private double hot;
	 
	 private double pos;

	/**
	 * @return the pos
	 */
	public double getPos() {
		return pos;
	}

	/**
	 * @param pos the pos to set
	 */
	public void setPos(double pos) {
		this.pos = pos;
	}

	/**
	 * @return the hot
	 */
	public double getHot() {
		return hot;
	}

	/**
	 * @param hot the hot to set
	 */
	public void setHot(double hot) {
		this.hot = hot;
	}
}
