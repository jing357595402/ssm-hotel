package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.DepartmentMapper;
import com.ssm.mapper.PositionMapper;
import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;
import com.ssm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private PositionMapper positionMapper;
	@Autowired
	private DepartmentMapper departmentMapper;
	
	
	
	public int add(User user) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.add(user);
	}

	public User getLoginUser(String userCode, String userPassword,Integer userDepartment)
			throws Exception {
		// TODO Auto-generated method stub
		return userMapper.getLoginUser(userCode, userPassword,userDepartment);
	}

	public List<User> getAllUser() throws Exception {
		List<User> users = userMapper.getAllUser();
		List<User> users2 = new ArrayList<User>();
		for (User user : users) {
			user.setDepartmentName(departmentMapper.getDepartmentById(user.getUserDepartment()).getDepartmentName());
			user.setPositionName(positionMapper.getPositionById(user.getUserPosition()).getPositionName());
			user.setPositionWage(positionMapper.getPositionById(user.getUserPosition()).getPositionWage());
			users2.add(user);
			
		}
		
		return users2;
	
	}

	@Override
	public User getUserById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		User user = userMapper.getUserById(id);
		user.setDepartmentName(departmentMapper.getDepartmentById(user.getUserDepartment()).getDepartmentName());
		user.setPositionName(positionMapper.getPositionById(user.getUserPosition()).getPositionName());
		user.setPositionWage(positionMapper.getPositionById(user.getUserPosition()).getPositionWage());
		return user;
	}

	@Override
	public List<User> getUserByDp(Integer userDepartment) throws Exception {
		// TODO Auto-generated method stub
		List<User> users = userMapper.getUserByDp(userDepartment);
		List<User> users2 = new ArrayList<User>();
		for (User user : users) {
			user.setDepartmentName(departmentMapper.getDepartmentById(user.getUserDepartment()).getDepartmentName());
			user.setPositionName(positionMapper.getPositionById(user.getUserPosition()).getPositionName());
			user.setPositionWage(positionMapper.getPositionById(user.getUserPosition()).getPositionWage());
			users2.add(user);
			
		}
		
		return users2;
	}

	@Override
	public List<User> getUserByPs(Integer userPosition) throws Exception {
		// TODO Auto-generated method stub
		List<User> users = userMapper.getUserByPs(userPosition);
		List<User> users2 = new ArrayList<User>();
		for (User user : users) {
			user.setDepartmentName(departmentMapper.getDepartmentById(user.getUserDepartment()).getDepartmentName());
			user.setPositionName(positionMapper.getPositionById(user.getUserPosition()).getPositionName());
			user.setPositionWage(positionMapper.getPositionById(user.getUserPosition()).getPositionWage());
			users2.add(user);
			
		}
		
		return users2;
	}

	@Override
	public User getUserByName(String userName) throws Exception {
		// TODO Auto-generated method stub
		User user = userMapper.getUserByName(userName);
		user.setDepartmentName(departmentMapper.getDepartmentById(user.getUserDepartment()).getDepartmentName());
		user.setPositionName(positionMapper.getPositionById(user.getUserPosition()).getPositionName());
		user.setPositionWage(positionMapper.getPositionById(user.getUserPosition()).getPositionWage());
		return user;
	}

	@Override
	public User geyUserByCode(String userCode) throws Exception {
		// TODO Auto-generated method stub
		User user = userMapper.geyUserByCode(userCode);
		user.setDepartmentName(departmentMapper.getDepartmentById(user.getUserDepartment()).getDepartmentName());
		user.setPositionName(positionMapper.getPositionById(user.getUserPosition()).getPositionName());
		user.setPositionWage(positionMapper.getPositionById(user.getUserPosition()).getPositionWage());
		return user;
	}

	@Override
	public int modifyUser(User user) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.modifyUser(user);
	}

	@Override
	public int deleteUserById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.deleteUserById(id);
	}

	@Override
	public int updatePwd(Integer id, String userPassword) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.updatePwd(id, userPassword);
	}
    
}
