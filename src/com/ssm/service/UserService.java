package com.ssm.service;

import java.util.List;

import com.ssm.pojo.User;


public interface UserService {
	
	//登录
	public User getLoginUser(String userCode,String userPassword,Integer userDepartment)throws Exception;
    //查询全部用户
    public List<User> getAllUser()throws Exception; 

  //注册
  	public int add(User user)throws Exception;
  	//通过用户id查询用户信息
  	public User getUserById(Integer id)throws Exception;
  	
  	//通过部门查询用户
  	public List<User> getUserByDp(Integer userDepartment)throws Exception;
  	//通过职位查找用户
  	public List<User> getUserByPs(Integer userPosition)throws Exception;
  	//通过姓名查找用户
  	public User getUserByName(String userName)throws Exception;
  	 //通过用户编码查询用户
  	public User geyUserByCode(String userCode)throws Exception;
  	//更新用户信息
  	public int modifyUser(User user)throws Exception;
  	//删除用户
  	public int deleteUserById(Integer id)throws Exception; 
      //修改密码
  	public int updatePwd(Integer id,String userPassword)throws Exception;
}
