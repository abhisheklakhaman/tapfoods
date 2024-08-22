package com.tapfoods.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tapfoods.daoimpl.UserDaoImpl;
import com.tapfoods.model.User;

@WebServlet("/CallingSignUpServlet")
public class SignUpServlet extends HttpServlet {

	private UserDaoImpl userDaoImpl;

	public void init() throws ServletException {
		userDaoImpl = new UserDaoImpl();

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		int phone = Integer.parseInt(req.getParameter("phone"));
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String address = req.getParameter("address");
		String role = req.getParameter("dropdown");

		if (name.isEmpty() || email.isEmpty() || username.isEmpty() || password.isEmpty() || role.isEmpty()) {
			resp.sendRedirect("Login.jsp?error=missingField");
			return;
		}

		String userName = generateUserName(name);

		User user = new User();

//		user.setUserId((generateUserName(userName));
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNo(phone);
		user.setUserName(userName);
		user.setPassword(password);
		user.setAddress(address);
		user.setRole(role);
		user.setCreatedDate(LocalDateTime.now());
		user.setLastlogin(LocalDateTime.now());

		userDaoImpl.addUser(user);

		resp.sendRedirect("Login.jsp");
	}

	String generateUserName(String name) {

		String baseUsername = name.replaceAll("\\s", "").toLowerCase();

		int c = 1;
		String username = baseUsername;

		while (userDaoImpl.isUserExists(username)) {
			username = baseUsername + c;
			c++;
		}
		return username;
	}

}
