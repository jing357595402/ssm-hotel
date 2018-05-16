package com.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;


public class Roomtype {
	private Integer id;//房间类型id
	private String roomtypeCode;//房间类型编码
	private String roomtypeName;//房间类型名称
	private String roomMessage;//房间信息
	private String roomImages;//房间图片
	private BigDecimal roomtypePrice;//房间类型价格
	private Integer createBy;//创建者
	private Date createDate;//创建日期
	private Integer modifyBy;//更新者
	private Date modifyDate;//更新日期
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRoomtypeCode() {
		return roomtypeCode;
	}
	public void setRoomtypeCode(String roomtypeCode) {
		this.roomtypeCode = roomtypeCode;
	}
	public String getRoomtypeName() {
		return roomtypeName;
	}
	public void setRoomtypeName(String roomtypeName) {
		this.roomtypeName = roomtypeName;
	}
	public String getRoomMessage() {
		return roomMessage;
	}
	public void setRoomMessage(String roomMessage) {
		this.roomMessage = roomMessage;
	}
	public String getRoomImages() {
		return roomImages;
	}
	public void setRoomImages(String roomImages) {
		this.roomImages = roomImages;
	}
	public BigDecimal getRoomtypePrice() {
		return roomtypePrice;
	}
	public void setRoomtypePrice(BigDecimal roomtypePrice) {
		this.roomtypePrice = roomtypePrice;
	}
	public Integer getCreateBy() {
		return createBy;
	}
	public void setCreateBy(Integer createBy) {
		this.createBy = createBy;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(Integer modifyBy) {
		this.modifyBy = modifyBy;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
 
}
