package com.ssm.pojo;





public class Department {
	private Integer departmentid;//部门id
	private String departmentCode;//部门编码
	private String departmentName;//部门名称
	private Integer departmentManager;//部门经理id
	private String ManagerName;//经理名字
	
	
	public Integer getDepartmentid() {
		return departmentid;
	}
	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}
	public Integer getDepartmentManager() {
		return departmentManager;
	}
	public void setDepartmentManager(Integer departmentManager) {
		this.departmentManager = departmentManager;
	}
	public String getManagerName() {
		return ManagerName;
	}
	public void setManagerName(String managerName) {
		ManagerName = managerName;
	}
	
	public String getDepartmentCode() {
		return departmentCode;
	}
	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	

}
