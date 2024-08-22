<%@ page import="com.tapfoods.daoimpl.UserDaoImpl" %>
<%@ page import="com.tapfoods.model.Cart" %>

	<?xml version="1.0" encoding="UTF-8" ?>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Sign-Up</title>
	
	<style>
		body {
			font-family: Roboto, sans-serif;
			background-color: #B6BBC4;
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}
		
		form {
			background-color: #161A30;
			border-radius: 7px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			padding: 20px;
			width: 450px;
			margin-top: 50px;
			
		}
		
		
		h2 {
			text-align: center;
			color: #EFECEC;
		}
		
		h5, h6 {
			text-align: left;
			color: #EFECEC;
		}
		
		 h5 a{
	        	text-align: left;
				color: #EC994B;
	        }
		label {
			display: block;
			margin-bottom: 5px;
			color: #9BA4B5;
		}
		
		input[type="text"], input[type="email"], input[type="password"], input[type="tel"],
			input[type="submit"] {
			width: 100%;
			padding: 8px;
			margin-bottom: 10px;
			border: 2px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			font-size: 16px;
		}
		
		 select 
		 {
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    appearance: none;
		    /* Add custom styles */
		    padding: 10px;
		    border: 1px solid #ccc;
		    border-radius: 5px;
		    background-color: #fff;
		    cursor: pointer;
		 }
	  
	  	select:hover {
	    	background-color: #f0f0f0;
	  	}
		
		select:focus {
		    outline: none;
		    border-color: #333;
	  }
		
		input[type="submit"] {
			background-color: #14279B;
			color: white;
			border: none;
			cursor: pointer;
		}
		
		input[type="submit"]:hover {
			background-color: #14279B;
		}
		
		
		
		a {
			color: #E6E6E6;
			text-decoration: none;
		}
		
		a:hover {
			text-decoration: underline;
		}
		
		.terms {
			font-size: 12px;
			color: #666;
		}
		
		@media only screen and (max-width: 600px) {
			form {
				width: 80%;
			}
		}
	</style>
	</head>
	<body>
	
		
		<form action="CallingSignUpServlet" method="post">
				
				<h2>Sign Up</h2>
			 	<h5>Already have an account?  <a href="Login.jsp">Login to your account</a></h5>
				<label for ="name">Name:</label>
				<input type="text" id ="name" name="name" placeholder="Enter the Name" required></input>
				<br>
				</br>
				<label for ="email">Email:</label>
				<input type="email" id="email" name="email" placeholder="Enter the Email" required></input>
				<br>
				</br>
				<label for="phone">PhoneNo:</label> 
				<input type="tel" id="phone" name ="phone" placeholder="Enter the PhoneNo" required></input>
				<br>
				</br>
				<label for="address">Address:</label>
				<input type="text" id="address" name="address" placeholder="Enter the city name" required></input>
				<br></br>
				<label for="username">UserName:</label> 
				<input type="text" id="username" name="username" placeholder ="Enter the Usernane" required></input>
				<br>
				</br>
				<label for="password">Password:</label> 
				<input type="password" id ="password" name ="password" placeholder ="Enter the Password" required></input>
				<br>
				</br>
				
				
				<div class="dropdown">
				<select name="dropdown">
					<option value="disabled selected">Role</option>
					<div class="dropdown-content">
	  				<option value="Customer">Customer</option>
	  				<option value="RestaurantOwner">RestaurantOwner</option>
	  				<option value="DeliverAgent">DeliveryAgent</option>
	  				<option value="SystemAdmin">SystemAdmin</option>
	  				</div>
				</select>
			 	</div>
			 	
				<h5><a href="">Have referral code ?</a></h5>
				<input type="submit" value="Sign Up"></input>
				<br></br>
				<h6 class="terms">By creating an account, I accept the <a href="#">Terms and Conditions</a>  and <a href ="#"> Privacy Policy</a></h6>
		
		</form>
	</body>
	</html>