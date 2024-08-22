package com.tapfoods.dao;

import java.util.List;

import com.tapfoods.model.OrderItem;

public interface OrderItemDao {

	
	void addOrderItem(OrderItem orderItem);
	OrderItem getOrderItem(int orderItemId);
	void UpdateOrderItem(OrderItem orderItem);
	void deleteOrderItem(int orderItemId);
	List<OrderItem>getAll();

}
