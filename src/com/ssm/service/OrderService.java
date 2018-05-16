package com.ssm.service;

import java.util.List;
import com.ssm.pojo.Order;

public interface OrderService {
	//添加订单
	public int add(Order order)throws Exception;
	
	//查询全部Order
	public List<Order> getAllOrder()throws Exception;
	//根据订单号查询订单
	public Order getOrderByNumber(String orderNumber)throws Exception;
	//根据用户查询订单
	public List<Order> getOrderByCus(Integer orderCustomer)throws Exception;
	//根据订单id查询订单
	public Order getOrderById(Integer id)throws Exception;
    //更新房间
	public int modifyOrder(Order order)throws Exception;
	//删除房间
	public int deleteOrderById(Integer id)throws Exception; 


}
