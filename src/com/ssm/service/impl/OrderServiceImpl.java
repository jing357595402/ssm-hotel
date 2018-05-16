package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.OrderMapper;
import com.ssm.mapper.UserMapper;
import com.ssm.pojo.Order;
import com.ssm.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private UserMapper userMapper;
	

	@Override
	public int add(Order order) throws Exception {
		// TODO Auto-generated method stub
		return orderMapper.add(order);
	}

	@Override
	public List<Order> getAllOrder() throws Exception {
		// TODO Auto-generated method stub
		List<Order> orders = orderMapper.getAllOrder();
		List<Order> orders2= new ArrayList<Order>();
		for(Order order : orders){
			order.setCustomerName(userMapper.getUserById(order.getOrderCustomer()).getUserName());
			orders2.add(order);
		}
		return orders2;
	}

	@Override
	public Order getOrderByNumber(String orderNumber) throws Exception {
		// TODO Auto-generated method stub
		Order order = orderMapper.getOrderByNumber(orderNumber);
		order.setCustomerName(userMapper.getUserById(order.getOrderCustomer()).getUserName());
		
		return order;
	}

	@Override
	public List<Order> getOrderByCus(Integer orderCustomer) throws Exception {
		// TODO Auto-generated method stub
		List<Order> orders = orderMapper.getOrderByCus(orderCustomer);
		List<Order> orders2= new ArrayList<Order>();
		for(Order order : orders){
			order.setCustomerName(userMapper.getUserById(order.getOrderCustomer()).getUserName());
			orders2.add(order);
		}
		return orders2;
	}

	@Override
	public Order getOrderById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		Order order = orderMapper.getOrderById(id);
		order.setCustomerName(userMapper.getUserById(order.getOrderCustomer()).getUserName());
		
		return order;
	}

	@Override
	public int modifyOrder(Order order) throws Exception {
		// TODO Auto-generated method stub
		return orderMapper.modifyOrder(order);
	}

	@Override
	public int deleteOrderById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return orderMapper.deleteOrderById(id);
	}

}
