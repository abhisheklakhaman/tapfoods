<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login-In</title>

<style>
 
        body {
            font-family: Roboto, sans-serif;
            background-image: url('#');
            background-size: cover;
            background-position: center;
            background-color: #B6BBC4; 
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .grid-container
        {
        	display:grid;
        	grid-template-columns: auto;
        	grid-template-rows:40px 100px;
        	gap:5px;
        	padding-bottom:400px;
        }
        
       
        form {
        	
            background-color: #161A30;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-left:25px;
            width: 300px;
            transition: transform 0.5s ease;
        }
        
        form:hover {
        	transform: translateY(-10px);
        	
        }
        
        h2 {
            text-align: center;
            color: #EFECEC;
            margin-bottom: 20px;
            font-size: 24px;
        }
        
       
        
        h5{
        	text-align: left;
			color: #E6E6E6;
			 margin-bottom: 10px;
    font-size: 16px;
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
        
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #1e2340;
    		color: #EFECEC;
        }
        
        input[type="submit"] {
            background-color: #14279B;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        input[type="submit"]:hover {
            background-color: #3E497A;
        }
        
        a {
	        color: #E6E6E6;
	        text-decoration:none;
	    }
	    
	    a:hover {
	        text-decoration: underline;
	    }
	    
	    .terms {
	        font-size: 12px;
	        color: #666;
	    }
	    
	    @media only screen and(max-width:600px){
	    
	    	form{
	    		width:80%;
	    	}
	    }
</style>
</head>
<body>

	<div class="grid-container">
	
	
	<div>
	
	<%
		String error = request.getParameter("error");
	if(error != null)
	{
		if(error.equals("max_attempts")) {%>
		<p>Maximum Login attempts reached. Please try again later.</p>
	<% }else if(error.equals("invalid_credientials")){ %>
		<p>Invalid credentials. Please check your userName and password.</p>
		<% 
		}		
	}
	%>
	</div>
	
	<div>

	<form action="LoginServlet" method="post">
	
	
	<h2>Login</h2>
	<h5>Or <a href="SignUp.jsp">Create account</a></h5>
	<label for="username">UserName:</label>
	<input type="text" id="username" name="username" required placeholder="Enter UserName"></input>
	<br>
	</br>
	<label for="password">Password:</label>
	<input type="password" id="password" name="password" required placeholder="Enter Password"></input>
	<br>
	</br>
	
	<input type="submit" value="Login"></input>
	<h6 class="terms">By clicking on Login, I accept the <a href="#">Terms and Conditions</a> and <a href ="#"> Privacy Policy</a></h6>
	</form>
	</div>
	</div>

</body>
</html>