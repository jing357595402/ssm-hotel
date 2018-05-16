package com.ssm.service;

import java.util.List;



import com.ssm.pojo.Department;

public interface DepartmentService {
	//获取部门信息
		public Department getDepartmentById(Integer departmentid) throws Exception;
		//添加房间类型
		public int add(Department department)throws Exception;
		
		//查询全部房间类型
		public List<Department> getAllDepartment()throws Exception;
	    //更新房间类型
		public int modifyDepartment(Department department)throws Exception;
		//删除房间类型
		public int deleteDepartmentById(Integer id)throws Exception; 
}
