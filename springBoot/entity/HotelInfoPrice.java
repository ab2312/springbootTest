package com.csst.hotelCrawler.entity;

import java.util.Date;

import com.ccst.bigdata.entity.Pojo;

public class HotelInfoPrice extends Pojo {
	
	private int id;
	private String webHotelId;
	private String hotelName;
	private double price;
	private Date checkIn;
	private Date checkOut;
	private Date date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWebHotelId() {
		return webHotelId;
	}
	public void setWebHotelId(String webHotelId) {
		this.webHotelId = webHotelId;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}
	public Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
