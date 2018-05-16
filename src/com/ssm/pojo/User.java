package com.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;
/**
 * 用户实体类

 *
 */
public class User {
	private Integer id; //id 
	private String userCode; //用户编码
	private String userName; //用户姓名
	private String userPassword; //用户密码
	private Integer gender;  //用户性别
	private Date birthday;  //出生日期
	private String phone;   //电话
	private String address; //地址
	private Integer userDepartment;//部门Id
	private String departmentName;//部门名称
	private Integer userPosition;    //职位id
	private String positionName;//职位名称
	private BigDecimal positionWage;//职位工资
	private Integer wageCandition;//工资状态
	private Integer createdBy;   //创建者
	private Date creationDate; //创建日期
	private Integer modifyBy;     //修改者
	private Date modifyDate;   //修改日期
	
	public Integer getWageCandition() {
		return wageCandition;
	}
	public void setWageCandition(Integer wageCandition) {
		this.wageCandition = wageCandition;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public BigDecimal getPositionWage() {
		return positionWage;
	}
	public void setPositionWage(BigDecimal positionWage) {
		this.positionWage = positionWage;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getUserDepartment() {
		return userDepartment;
	}
	public void setUserDepartment(Integer userDepartment) {
		this.userDepartment = userDepartment;
	}
	public Integer getUserPosition() {
		return userPosition;
	}
	public void setUserPosition(Integer userPosition) {
		this.userPosition = userPosition;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
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
