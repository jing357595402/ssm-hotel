package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ssm.mapper.CustomerMapper;
import com.ssm.pojo.Customer;
import com.ssm.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper customerMapper;

	@Override
	public int add(Customer customer) throws Exception {
		// TODO Auto-generated method stub
		return customerMapper.add(customer);
	}

	@Override
	public List<Customer> getAllCustomer() throws Exception {
		// TODO Auto-generated method stub
		return customerMapper.getAllCustomer();
	}

	@Override
	public Customer getCustomerById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return customerMapper.getCustomerById(id);
	}

	@Override
	public int modifyCustomer(Customer customer)
			throws Exception {
		// TODO Auto-generated method stub
		return customerMapper.modifyCustomer(customer);
	}

	@Override
	public int deleteCustomerById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return customerMapper.deleteCustomerById(id);
	}

}
