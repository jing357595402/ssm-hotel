package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


import com.ssm.pojo.User;

@Repository("userMapper")
public interface UserMapper {
	
	/**
	 * 
	 * @param userCode
	 * @return
	 * @throws Exception
	 */
	
	
	//登录
	public User getLoginUser(@Param("userCode")String userCode,@Param("userPassword")String userPassword,@Param("userDepartment")Integer userDepartment )throws Exception;
	//注册
	public int add(User user)throws Exception;
	//通过用户id查询用户信息
	public User getUserById(@Param("id")Integer id)throws Exception;
	//查询全部用户
	public List<User> getAllUser()throws Exception;  
	
	//通过部门查询用户
	public List<User> getUserByDp(@Param("userDepartment")Integer userDepartment)throws Exception;
	//通过职位查找用户
	public List<User> getUserByPs(@Param("userPosition")Integer userPosition)throws Exception;
	//通过姓名查找用户
	public User getUserByName(@Param("userName")String userName)throws Exception;
	 //通过用户编码查询用户
	public User geyUserByCode(@Param("userCode")String userCode)throws Exception;
	//更新用户信息
	public int modifyUser(User user)throws Exception;
	//删除用户
	public int deleteUserById(@Param("id")Integer id)throws Exception; 
    //修改密码
	public int updatePwd(@Param("id")Integer id,@Param("userPassword")String userPassword)throws Exception;
}
    
