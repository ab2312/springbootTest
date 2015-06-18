package com.csst.hotelCrawler.entity;

import com.ccst.bigdata.entity.Pojo;

public class HotelInfo extends Pojo{

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.id
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private Integer id;
	/**
	 * 
	 */
	private String webhotelid;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.hotelName
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String hotelname;
	
	private String img;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.address
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String address;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.tel
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String tel;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.hotelUrl
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String hotelurl;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.price
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private Double price;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.score
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private Float score;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.hasWifi
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String haswifi;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.hasPark
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String haspark;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hotelInfo.hasBreakfast
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	private String hasbreakfast;	
	/**
	 * 
	 */
	 
	private String description;
	/**
	 * 
	 */
	
	private String datasource;
	
	private String downTown;
	
	private Double lat;
	
	private Double lng;
	
	private String geohash;
	/**
	 * @return the webhotelid
	 */
	public String getWebhotelid() {
		return webhotelid;
	}

	/**
	 * @param webhotelid the webhotelid to set
	 */
	public void setWebhotelid(String webhotelid) {
		this.webhotelid = webhotelid;
	}


	/**
	 * @return the datasource
	 */
	public String getDatasource() {
		return datasource;
	}

	/**
	 * @param datasource the datasource to set
	 */
	public void setDatasource(String datasource) {
		this.datasource = datasource;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.id
	 * @return  the value of hotelInfo.id
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.id
	 * @param id  the value for hotelInfo.id
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.hotelName
	 * @return  the value of hotelInfo.hotelName
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getHotelname() {
		return hotelname;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.hotelName
	 * @param hotelname  the value for hotelInfo.hotelName
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname == null ? null : hotelname.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.address
	 * @return  the value of hotelInfo.address
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.address
	 * @param address  the value for hotelInfo.address
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.tel
	 * @return  the value of hotelInfo.tel
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.tel
	 * @param tel  the value for hotelInfo.tel
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setTel(String tel) {
		this.tel = tel == null ? null : tel.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.hotelUrl
	 * @return  the value of hotelInfo.hotelUrl
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getHotelurl() {
		return hotelurl;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.hotelUrl
	 * @param hotelurl  the value for hotelInfo.hotelUrl
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setHotelurl(String hotelurl) {
		this.hotelurl = hotelurl == null ? null : hotelurl.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.price
	 * @return  the value of hotelInfo.price
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public Double getPrice() {
		return price;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.price
	 * @param price  the value for hotelInfo.price
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setPrice(Double price) {
		this.price = price;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.score
	 * @return  the value of hotelInfo.score
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public Float getScore() {
		return score;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.score
	 * @param score  the value for hotelInfo.score
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setScore(Float score) {
		this.score = score;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.hasWifi
	 * @return  the value of hotelInfo.hasWifi
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getHaswifi() {
		return haswifi;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.hasWifi
	 * @param haswifi  the value for hotelInfo.hasWifi
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setHaswifi(String haswifi) {
		this.haswifi = haswifi == null ? null : haswifi.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.hasPark
	 * @return  the value of hotelInfo.hasPark
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getHaspark() {
		return haspark;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.hasPark
	 * @param haspark  the value for hotelInfo.hasPark
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setHaspark(String haspark) {
		this.haspark = haspark == null ? null : haspark.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hotelInfo.hasBreakfast
	 * @return  the value of hotelInfo.hasBreakfast
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public String getHasbreakfast() {
		return hasbreakfast;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hotelInfo.hasBreakfast
	 * @param hasbreakfast  the value for hotelInfo.hasBreakfast
	 * @mbggenerated  Thu Apr 09 14:27:25 CST 2015
	 */
	public void setHasbreakfast(String hasbreakfast) {
		this.hasbreakfast = hasbreakfast == null ? null : hasbreakfast.trim();
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDownTown() {
		return downTown;
	}

	public void setDownTown(String downTown) {
		this.downTown = downTown;
	}

	public Double getLat() {
		return lat;
	}

	public void setLat(Double lat) {
		this.lat = lat;
	}

	public Double getLng() {
		return lng;
	}

	public void setLng(Double lng) {
		this.lng = lng;
	}

	public String getGeohash() {
		return geohash;
	}

	public void setGeohash(String geohash) {
		this.geohash = geohash;
	}
	
}