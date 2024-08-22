# TapFoods

TapFoods is a food delivery application that allows users to browse restaurants, place orders, and track their order status. The application includes user registration and login, with encrypted credentials for secure access.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies](#technologies)
## Features

- **User Registration:** Users must register with a username and password, which are securely encrypted.
- **User Login:** Users log in using their credentials to access personalized features.
- **Browse Hotels:** Users can view hotel names and pictures, both before and after logging in.
- **Order Food:** Logged-in users can select a hotel and place an order.
- **Order Tracking:** Users receive an order ID and can check the status of their orders.

## Installation

1. Clone the repository:

  
   git clone https://github.com/abhisheklakhaman/tapfoods.git
   cd tapfoods

2. Set up the environment:

Ensure you have Java, MySQL, and a servlet container (like Apache Tomcat) installed.
Set up the MySQL database by running the provided SQL scripts located in the /sql directory.
Configure the database connection settings in the web.xml or other configuration files as needed.
3. Build the project:

  mvn clean install
  gradle build
4. Run the project:
  Deploy the project on your servlet container and access it via your web browser at http://localhost:8080/tapfoods.
  
**Usage**

Access the application:

  Navigate to http://localhost:8080/tapfoods.
  Browse available hotels and view their details.
  Register a new account if you don't have one, or log in with your existing credentials.
  Place an order:
  After logging in, select a hotel, choose your desired food items, and place an order.
  Note the order ID provided for tracking your order status.
  

## Technologies ## 

  Backend: Java Servlets
  Frontend: JSP, HTML, CSS
  Database: MySQL
  Server: Apache Tomcat
