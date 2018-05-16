package com.ssm.pojo;

import java.math.BigDecimal;

public class Room {
	private Integer id;//房间id
	private String roomCode;//房间编码
	private String roomName;//房间名称
	private Integer roomType;//房间类型id
	private String roomTypeName;//房间类型名称
	private BigDecimal roomPrice;//房间价格
	private Integer roomCandition;//房间状态
	private Integer roomCleaner;//打扫者id
	private String CleanerName;//打扫者名字

	
	
	public BigDecimal getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(BigDecimal roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getCleanerName() {
		return CleanerName;
	}
	public void setCleanerName(String cleanerName) {
		CleanerName = cleanerName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public Integer getRoomType() {
		return roomType;
	}
	public void setRoomType(Integer roomType) {
		this.roomType = roomType;
		
	}
	
	
	public String getRoomTypeName() {
		return roomTypeName;
	}
	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}
	public Integer getRoomCandition() {
		return roomCandition;
	}
	public void setRoomCandition(Integer roomCandition) {
		this.roomCandition = roomCandition;
	}
	public Integer getRoomCleaner() {
		return roomCleaner;
	}
	public void setRoomCleaner(Integer roomCleaner) {
		this.roomCleaner = roomCleaner;
	}

}
