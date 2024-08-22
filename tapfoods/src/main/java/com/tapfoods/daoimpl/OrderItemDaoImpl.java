package com.tapfoods.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tapfoods.dao.OrderItemDao;
import com.tapfoods.model.OrderItem;

public class OrderItemDaoImpl implements OrderItemDao {

	String INSERT_QUERY = "INSERT into `orderitem` (`orderItemId` , `userId` , `menuId`, `name`,`rating`, `quantity` , `price`) values (?,?,?,?,?,?,?)";
	String SELECT_QUERY = "SELECT * from `menu` WHERE `orderItemId` = ?";
	String DELETE_QUERY = "DELETE from `menu` WHERE `orderItemId = ?";
	static final String UPDATE_QUERY = "UPDATE `orderItem` SET `userId` = ? ,`menuId` = ? ,`name` = ? , `rating` = ? ,`quantity` = ? , `price` = ? WHERE `orderItemId` = ?";
	String SELECTALL_QUERY = "SELECT * from `orderItem`";
	Connection connection = null;

	public OrderItemDaoImpl() {

		String url = "jdbc:mysql://localhost:3306/tapfoods";
		String username = "root";
		String password = "roor";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, username, password);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addOrderItem(OrderItem orderItem) {

		PreparedStatement prepareStatement = null;

		try {
			prepareStatement = connection.prepareStatement(INSERT_QUERY);

			prepareStatement.setInt(1, orderItem.getMenuId());
			prepareStatement.setInt(2, orderItem.getUserId());
			prepareStatement.setInt(3, orderItem.getMenuId());
			prepareStatement.setString(4, orderItem.getName());
			prepareStatement.setFloat(5, orderItem.getRating());
			prepareStatement.setInt(6, orderItem.getQuantity());
			prepareStatement.setDouble(7, orderItem.getPrice());

			prepareStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public OrderItem getOrderItem(int orderItemId) {

		PreparedStatement prepareStatement = null;
		ResultSet res = null;
		OrderItem orderItem = null;
		try {
			prepareStatement = connection.prepareStatement(SELECT_QUERY);

			prepareStatement.setInt(1, orderItemId);
			res = prepareStatement.executeQuery();

			if (res.next()) {

				int userId = res.getInt("userId");
				int menuId = res.getInt("menuId");
				String name = res.getString("name");
				float rating = res.getFloat("rating");
				int quantity = res.getInt("quantity");
				double price = res.getDouble("price");

				orderItem = new OrderItem(orderItemId, userId, menuId, name, rating, quantity, price);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orderItem;

	}

	@Override
	public void deleteOrderItem(int orderItemId) {

		PreparedStatement prepareStatement = null;
		try {
			prepareStatement = connection.prepareStatement(DELETE_QUERY);
			prepareStatement.setInt(1, orderItemId);
			prepareStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<OrderItem> getAll() {
		Statement statement = null;

		ResultSet res = null;

		ArrayList<OrderItem> orderItemList = new ArrayList<OrderItem>();
		try {
			statement = connection.createStatement();
			res = statement.executeQuery(SELECTALL_QUERY);

			while (res.next()) {

				int orderItemId = res.getInt("orderItemId");
				int userId = res.getInt("userId");
				int menuId = res.getInt("menuId");
				String name = res.getString("name");
				float rating = res.getFloat("rating");
				int quantity = res.getInt("quantity");
				double price = res.getDouble("price");

				OrderItem orderItem = new OrderItem(orderItemId, userId, menuId, name, rating, quantity, price);

				orderItemList.add(orderItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return orderItemList;
	}

	@Override
	public void UpdateOrderItem(OrderItem orderItem) {

		PreparedStatement prepareStatement = null;

		try {
			prepareStatement = connection.prepareStatement(UPDATE_QUERY);

			prepareStatement.setInt(1, orderItem.getUserId());
			prepareStatement.setInt(2, orderItem.getMenuId());
			prepareStatement.setString(3, orderItem.getName());
			prepareStatement.setFloat(4, orderItem.getRating());
			prepareStatement.setInt(5, orderItem.getQuantity());
			prepareStatement.setDouble(6, orderItem.getPrice());

			prepareStatement.setInt(8, orderItem.getOrderItemId());

			prepareStatement.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
