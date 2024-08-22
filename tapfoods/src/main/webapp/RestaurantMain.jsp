 <%@ page import="java.util.List" %>
    <%@ page import="com.tapfoods.model.Restaurant" %>
    <%@ page import="com.tapfoods.model.User" %>
    
    
    <% User user = (User)session.getAttribute("user");
    	boolean isLoggedIn = (user != null);
    %>

<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="https://fonts.cdnfonts.com/css/proxima-nova-condensed">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>Restaurant</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body,
html {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;

}

header {
            background-color: #161A30;
            color: white;
            padding: 20px;
            text-align: center;
        }
.container {
	max-width: 1200px;
	margin: 20px auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;

}

h1 {
	text-align: Center;
	font-family: "Times New Roman", Times, serif;
}

nav {
	background-color: #161A30;
	overflow: hidden;
	text-align: center;
	position: sticky;
	top: 0;
	width: 100%;
	z-index: 1000;
	padding: 5px 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.welcome-box {
    background-color: #C7C8CC;
    padding: 10px 20px;
    border-radius: 5px;
    display: inline-block;
    margin-right: 20px;
    float: left;
    
}

nav h2 {
  color: #0C0C0C;
  text-align: center;
  margin-left: 5px;
  font-size: 30px;
  padding: 5px 10px;
}

.welcome-box:hover{
	background-color: #ddd;
	color: black;
	cursor: pointer;

}
nav a {
	margin:0 10px;
	text-decoration: none;
	color: #0C0C0C;
	padding: 10px 20px;
	border-radius: 5px;
	background-color: #C7C8CC;
	float: right;
	display: block;
	text-align: center;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

nav a:hover {
	background-color: #ddd;
	color: black;
}

nav a.active {
  background-color: #28a745; /* Dark Green */
  color: white;
}

nav a.logout {
  float: right;
}

.container .restaurant {
	display: inline-block;
	vertical-align: top;
	/*overflow-x:auto; */
}

.restaurant {
	transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
	font-family: "arial", sans-serif;
	background: transparent;
	display: flex;
	flex-wrap: wrap;
	width: 300px;
	padding: 10px;
	box-sizing: border-box;
	margin-bottom: 20px;
	border-radius: 10px;
	box-shadow:0 4px 8px rgba(0,0,0,0.1);
	
}

.restaurant:hover {
	cursor: pointer;
	transform: scale(0.95);
	box-shadow:0 8px 16px rgba(0, 0,0,0.2);
}

.image-container {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	height: 200px;
	overflow: hidden;
	border-radius:10px;
}

.image-container img {
	max-width: 100%;
	max-height: 100%;
	display: block;
	width: 200px;
	height: 200px;
	border-radius: 5px;
	margin-bottom: 10px;
	object-fit: cover;
	image-rendering: pixelated;
	transition: transform 0.3s ease;
}

.image-container::after {
	content: "";
	position: absolute;
	top: 80%;
	left: 0;
	right: 0;
	border: none;
	border-radius: 0 0 20px 20px;
	bottom: 0;
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 1)100%);
}

.restaurant h3 {
	
	color: #333;
	margin-bottom: 10px;
	font-family: Arial, sans-serif;
}

.restaurant-name {
	
	font-weight: bold;
	font-size: 25px;
	margin: 0;
	color: #555;
	margin-bottom: 5px;
	text-align: center;
}

.info-row {
	display: flex;
	align-item: center;
	justify-content: space-between;
	font-size: 18px;

}


.rating {
	display: flex;
	align-item: start;
	margin-top: 5px;
	font-weight: 600;

}

.review-count {
	margin-left: 5px;
	font-weoght: 600;

}

.delivery-info {
	display: flex;
	align-items: center;
	margin-top: 5px;
}

.delivery-info i {
	margin-right: 5px;
}

.info-container {
	padding: 10px;
}

.info-container p {
	margin-bottom: 5px;
}


.bi-star-fill {
	color: green;
}

.bi-dot {
	font-size: 26px;
}

.submit-button {
	background-color: #C7C8CC;
	color: #0C0C0C;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
	font-size: 16px;
	justify-content: center;
	align-items: center;
	transition: background-color 0.3s ease;
}

.submit-button:hover {
	background-color: #0056b3;
	color:white;
}

.footer {

	left: 0;
	bottom: 0;
	background-color: #2A2F4F;
	color: white;
	text-align: center;
	padding: 8px 0;
}


@media screen and (max-width: 600px) {
  nav a {
    float: none;
    display: block;
    text-aligns: left;
  }
  
  nav a.logout {
    float: none;
    display: block;
    text-align: right;
  }
}



</style>



</head>
<body>
	<header>
	<h1>WELCOME TO TASTE TRIBE</h1>
	</header>

	<nav>
		<div class="welcome-box"> 
		<h2>Welcome <%= session.getAttribute("userName")%></h2>
		</div>
		<a href="Restaurant.jsp">Logout</a>
		<a href="Cart.jsp">View Cart</a>
	</nav>



	<div class="container">
	<%
	
	List<Restaurant> restaurants = (List<Restaurant>)session.getAttribute("restaurantList");
		
	if(restaurants != null && !restaurants.isEmpty())
	{
		for(Restaurant rl : restaurants){
	%>	
		
		<div class="restaurant">
			<div class="restItem">
			<form action="CallingMenuServlet" method="post"> 
				<input type="hidden" name="restaurantId" value="<%= rl.getRestaurantId() %>"></input>
				
				<div class="image-container">
					<img src="<%= rl.getImagePath() %>" alt="<%= rl.getName() %>"/>
				</div>
				<h3 class="restaurant-name"><b><%= rl.getName() %></b></h3>
				<div class="info-container">
					<div class="info-row">
						<div class="rating">
						<span class="rating-star"><i class="bi bi-star-fill star"></i></span>
						<span class="review-count">(<%= rl.getRating() %>)</span>
						</div>
						<div class="delivery-info"><i class="bi bi-dot"></i> <span><%= rl.getEta()%></span>
						</div>
					</div>
					<p> <%= rl.getCuisineType()%></p>
					<p> <%= rl.getAddress()%></p>
					
					<div class="info-container" style="text-align: center;">
						<input type="submit" value="View Menu" class="submit-button">
					</div>
				</div>
				
				</form>
				</div>
			</div>
		
		<% 	
		}
	}else{
	%>
			<p>No restaurant Available</p>
			
		<%
		}
		%>
	</div>
<footer class="footer">
    <p>&copy; 2024 Taste-tribe</p>
</footer>
</body>
</html>