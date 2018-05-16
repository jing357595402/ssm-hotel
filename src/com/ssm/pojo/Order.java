package com.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
	private Integer id;//订单id
	private String orderNumber;//订单编号
	private String roomCode;//订单房号
	
	private Date checkinDate;//入住日期
	private Date checkoutDate;//退房日期
	private Integer orderCustomer;//房客id
	private String CustomerName;//房客姓名
	private BigDecimal entilPrice;//订单总价
	private Integer createBy;//创建者
	private Date createDate;//创建日期
	private  Integer modifyBy;//修改者
	private Date modifyDate;//修改日期
	
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}
	public Date getCheckinDate() {
		return checkinDate;
	}
	public void setCheckinDate(Date checkinDate) {
		this.checkinDate = checkinDate;
	}
	public Date getCheckoutDate() {
		return checkoutDate;
	}
	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}
	public Integer getOrderCustomer() {
		return orderCustomer;
	}
	public void setOrderCustomer(Integer orderCustomer) {
		this.orderCustomer = orderCustomer;
	}
	public BigDecimal getEntilPrice() {
		return entilPrice;
	}
	public void setEntilPrice(BigDecimal entilPrice) {
		this.entilPrice = entilPrice;
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
