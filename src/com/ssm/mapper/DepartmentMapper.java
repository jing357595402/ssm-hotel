package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Department;


@Repository("departmentMapper")
public interface DepartmentMapper {
	//获取部门信息
	public Department getDepartmentById(@Param("departmentid")Integer departmentid) throws Exception;
	//添加房间类型
	public int add(Department department)throws Exception;
	
	//查询全部房间类型
	public List<Department> getAllDepartment()throws Exception;
    //更新房间类型
	public int modifyDepartment(Department department)throws Exception;
	//删除房间类型
	public int deleteDepartmentById(@Param("id")Integer id)throws Exception; 

}
