package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Customer;

@Repository("customerMapper")
public interface CustomerMapper {
	//添加客户
		public int add(Customer customer)throws Exception;
		
		//查询全部客户
		public List<Customer> getAllCustomer()throws Exception;
		//根据客户id查询客户
		public Customer getCustomerById(@Param("id")Integer id)throws Exception;
	    //更新客户
		public int modifyCustomer(Customer customer)throws Exception;
		//删除客户
		public int deleteCustomerById(@Param("id")Integer id)throws Exception;

}
