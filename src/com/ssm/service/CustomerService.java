package com.ssm.service;

import java.util.List;



import com.ssm.pojo.Customer;

public interface CustomerService {
	//添加客户
	public int add(Customer customer)throws Exception;
			
	//查询全部客户
	public List<Customer> getAllCustomer()throws Exception;
	//根据客户id查询客户
	public Customer getCustomerById(Integer id)throws Exception;
	//更新客户
	public int modifyCustomer(Customer customer)throws Exception;
	//删除客户
	public int deleteCustomerById(Integer id)throws Exception;
}
