package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Order;

@Repository("orderMapper")
public interface OrderMapper {
	//添加订单
	public int add(Order order)throws Exception;
	
	//查询全部Order
	public List<Order> getAllOrder()throws Exception;
	//根据订单号查询订单
	public Order getOrderByNumber(@Param("orderNumber")String orderNumber)throws Exception;
	//根据用户查询订单
	public List<Order> getOrderByCus(@Param("orderCustomer")Integer orderCustomer)throws Exception;
	//根据订单id查询订单
	public Order getOrderById(@Param("id")Integer id)throws Exception;
    //更新房间
	public int modifyOrder(Order order)throws Exception;
	//删除房间
	public int deleteOrderById(@Param("id")Integer id)throws Exception; 

}
