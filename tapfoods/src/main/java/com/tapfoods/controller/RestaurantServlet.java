package com.tapfoods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tapfoods.daoimpl.RestaurantDaoImpl;
import com.tapfoods.model.Restaurant;

@WebServlet("/CallingRestaurantServlet")
public class RestaurantServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RestaurantDaoImpl r = new RestaurantDaoImpl();
		List<Restaurant> all = r.getAll();

		HttpSession sess = req.getSession();
		sess.setAttribute("restaurantList", all);
//		req.setAttribute("restaurantList", all);
		RequestDispatcher rd = req.getRequestDispatcher("RestaurantMain.jsp");
		rd.forward(req, resp);
	}
}

//for (Restaurant res : all) {
//	System.out.println(res.getName());
//	System.out.println(res.getImagePath());
//	System.out.println(res.getRating());
//	System.out.println(res.getEta());
//	System.out.println(res.getAddress());
//	System.out.println(res.getCuisineType());
//	System.out.println(res.getIsActive());
//	System.out.println(res.getRestaurantOwnerId());
//}
