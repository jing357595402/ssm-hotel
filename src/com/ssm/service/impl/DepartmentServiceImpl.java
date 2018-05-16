package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.DepartmentMapper;
import com.ssm.mapper.UserMapper;
import com.ssm.pojo.Department;
import com.ssm.service.DepartmentService;



@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{
	
	@Autowired
	private DepartmentMapper departmentMapper;
	@Autowired
	private UserMapper userMapper;
	

	@Override
	public Department getDepartmentById(Integer departmentid) throws Exception {
		return departmentMapper.getDepartmentById(departmentid);
	}

	@Override
	public int add(Department department) throws Exception {
		// TODO Auto-generated method stub
		return departmentMapper.add(department);
	}

	@Override
	public List<Department> getAllDepartment() throws Exception {
		// TODO Auto-generated method stub
		List<Department> deps = departmentMapper.getAllDepartment();
		List<Department> deps2 = new ArrayList<Department>();
		for(Department dep : deps){
			dep.setManagerName(userMapper.getUserById(dep.getDepartmentManager()).getUserName());
			deps2.add(dep);
			
		}
		return deps2;
	}

	@Override
	public int modifyDepartment(Department department) throws Exception {
		// TODO Auto-generated method stub
		return departmentMapper.modifyDepartment(department);
	}

	@Override
	public int deleteDepartmentById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return departmentMapper.deleteDepartmentById(id);
	}
	

}
