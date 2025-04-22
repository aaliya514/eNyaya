<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        /* Global Styling */
		body {
		    font-family: sans-serif;
		    background: linear-gradient(135deg, #a8dadc, #800080); 
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    min-height: 100vh;
		    margin: 0;
		}
		
		.container {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    width: 100%;
		    height: 100%;
		}
		
		.login-box {
		    background-color: #fff;
		    border-radius: 8px;
		    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
		    padding: 30px;
		    width: 400px;
		    text-align: center;
		}
		
		.logo {
		    margin-bottom: 20px;
		}
		
		.logo img {
		    max-width: 100px;
		    height: auto;
		}
		
		.login-form {
		    display: flex;
		    flex-direction: column;
		}
		
		.form-group {
		    margin-bottom: 20px;
		    text-align: left;
		}
		
		.form-group label {
		    display: block;
		    margin-bottom: 5px;
		    color: #333;
		    font-weight: bold;
		}
		
		.form-group input[type="email"],
		.form-group input[type="password"] {
		    width: calc(100% - 20px);
		    padding: 10px;
		    border: none;
		    border-radius: 20px; 
		    font-size: 16px;
		    background-color: #f0f0f0;
		}
		
		.remember-me-container {
		    text-align: left;
		    margin-bottom: 15px;
		    font-size: 14px;
		}
		
		.remember-me-container label input[type="checkbox"] {
		    margin-right: 5px;
		}
		
		.login-button {
		    background-color: #343a40;
		    color: white;
		    padding: 12px 20px;
		    border: none;
		    border-radius: 20px; 
		    cursor: pointer;
		    font-size: 16px;
		    font-weight: bold;
		    transition: background-color 0.3s ease;
		    margin-top: 15px;
		    margin-bottom: 15px;
		}
		
		.login-button:hover {
		    background-color: #23272b;
		}
		
		.links-below-button {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    font-size: 14px;
		}
		
		.links-below-button a {
		    text-decoration: underline;
		    color: black;
		}
		
		.links-below-button a:hover {
		    text-decoration: none;
		}
    </style>
</head>
<body>

<div class="container">
        <div class="login-box">
            <div class="logo">
                <img src="logo.png" alt="Logo">
            </div>
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="remember-me-container">
                    <label>
                        <input type="checkbox" name="remember"> Remember me
                    </label>
                </div>
                <button type="submit" class="login-button">Login</button>
                <div class="links-below-button">
                    <a href="register.jsp">Don't have an account? Register here</a>

                </div>
            </form>
        </div>
    </div>

        <%-- Show error message if login fails --%>
        <%
            String error = request.getParameter("error");
            if ("invalid".equals(error)) {
        %>
            <p class="error-message">Invalid email or password. Please try again.</p>
        <%
            } else if ("db_error".equals(error)) {
        %>
            <p class="error-message">There was an error connecting to the database. Please try again later.</p>
        <%
            }
        %>

        
  

</body>
</html>
    