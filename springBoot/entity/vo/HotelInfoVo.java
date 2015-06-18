package com.csst.hotelCrawler.entity.vo;

import java.util.Date;

import com.csst.hotelCrawler.entity.HotelInfo;

public class HotelInfoVo extends HotelInfo{
	
	private int maxPrice;
	
	private int minPrice;
	
	private Date maxDate;
	
	private Date minDate;

	/**
	 * @return the maxDate
	 */
	public Date getMaxDate() {
		return maxDate;
	}

	/**
	 * @param maxDate the maxDate to set
	 */
	public void setMaxDate(Date maxDate) {
		this.maxDate = maxDate;
	}

	/**
	 * @return the minDate
	 */
	public Date getMinDate() {
		return minDate;
	}

	/**
	 * @param minDate the minDate to set
	 */
	public void setMinDate(Date minDate) {
		this.minDate = minDate;
	}

	/**
	 * @return the maxPrice
	 */
	public int getMaxPrice() {
		return maxPrice;
	}

	/**
	 * @param maxPrice the maxPrice to set
	 */
	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	/**
	 * @return the minPrice
	 */
	public int getMinPrice() {
		return minPrice;
	}

	/**
	 * @param minPrice the minPrice to set
	 */
	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}
	
	

}
