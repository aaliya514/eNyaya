<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/registration.css" >
	<style>
		* {
			box-sizing: border-box;
			margin: 0;
			padding: 0;
			font-family: 'Segoe UI', sans-serif;
		}
		
		body {
			background: linear-gradient(to right, #6b73ff, #000dff4b);
			height: 100vh;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		
		.container {
			display: flex;
			width: 90%;
			max-width: 1100px;
			height: 90%;
			background: white;
			border-radius: 25px;
			overflow: hidden;
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
		}
		
		.info-panel {
			flex: 1;
			background: linear-gradient(to bottom right, #4a60e6, #8e7df7);
			color: white;
			padding: 40px;
			display: flex;
			flex-direction: column;
			justify-content: center;
			border-top-left-radius: 25px;
			border-bottom-left-radius: 25px;
		}
		
		.info-panel h2 {a
			font-size: 24px;
			margin-bottom: 20px;
		}
		
		.info-panel p {
			font-size: 14px;
			line-height: 1.6;
		}
		
		.form-panel {
			flex: 1;
			padding: 40px;
			background: #f5f5f5;
			display: flex;
			flex-direction: column;
			justify-content: center;
			border-top-right-radius: 25px;
			border-bottom-right-radius: 25px;
			overflow-y: auto;
		}
		
		.form-panel h2 {
			text-align: center;
			margin-bottom: 20px;
		}
		
		.toggle-buttons {
			display: flex;
			justify-content: center;
			margin-bottom: 20px;
		}
		
		.toggle-buttons button {
			padding: 10px 20px;
			margin: 0 5px;
			border: 1px solid #ccc;
			background: white;
			border-radius: 20px;
			cursor: pointer;
			transition: 0.3s ease;
		}
		
		.toggle-buttons button.active {
			background: black;
			color: white;
		}
		
		form label {
			margin-top: 12px;
			font-size: 14px;
			color: #333;
			display: block;
		}
		
		form input {
			width: 100%;
			margin-top: 6px;
			margin-bottom: 10px;
			padding: 12px;
			border-radius: 8px;
			border: 1px solid #ccc;
			background: #ddd;
		}
		
		.split {
			display: flex;
			gap: 10px;
		}
		
		.split input {
			flex: 1;
		}
		
		.submit-btn {
			background: #4a60e6;
			color: white;
			padding: 12px;
			border: none;
			border-radius: 10px;
			margin-top: 15px;
			cursor: pointer;
			width: 100%;
			font-size: 16px;
			transition: background 0.3s;
		}
		
		.submit-btn:hover {
			background: #3949ab;
		}
		
		.login-link {
			text-align: center;
			margin-top: 10px;
			font-size: 14px;
		}
		
		.login-link a {
			color: #4a60e6;
			text-decoration: none;
		}
		
		.hidden {
			display: none;
		}
	</style>
</head>
<body>
	<div class="container">

		<!-- Left Side Text -->
		<div class="info-panel">
			<h2>Get the Legal Help<br>You Deserve</h2>
			<p>-- Anytime, Anywhere</p>
			<p>Access legal services and professional support with ease. Whether you're seeking justice or offering it, our platform connects clients with trusted lawyers in just a few clicks.</p>
		</div>
		
		<!-- Registration Form -->
		<div class="form-panel">
			<h2>Create an Account</h2>
		
			<div class="toggle-buttons">
				<button id="clientBtn" class="active" aria-pressed="true">Client</button>
				<button id="lawyerBtn" aria-pressed="false">Lawyer</button>
			</div>
		
			<form id="registrationForm" action="${pageContext.request.contextPath}/registration" method="post">

			
				<label for="name">Name</label>
				<input type="text" id="name" name="name" placeholder="Enter your name" required />
				
				<label for="email">Email</label>
				<input type="email" id="email" name="email" placeholder="Enter your email" required />
				
				<label for="phone">Phone</label>
				<input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required />
				
				<div id="dobGender" class="split">
					<div style="flex: 1;">
						<label for="dob">Date of Birth</label>
						<input type="date" id="dob" name="dob" />
					</div>
					<div style="flex: 1;">
						<label for="gender">Gender</label>
						<input type="text" id="gender" name="gender" placeholder="Gender" />
					</div>
				</div>
				
				<div id="lawyerFields" class="hidden">
					<div class="split">
						<div style="flex: 1;">
							<label for="license">License Number</label>
							<input type="text" id="license" name="license" placeholder="License Number" />
						</div>
						<div style="flex: 1;">
							<label for="province">Province</label>
							<input type="text" id="province" name="province" placeholder="Province" />
						</div>
					</div>
					
					<div class="split">
						<div style="flex: 1;">
							<label for="district">District</label>
							<input type="text" id="district" name="district" placeholder="District" />
						</div>
					</div>
				</div>
				
				<label for="password">Password</label>
				<input type="password" id="password" name="password" placeholder="Enter password" required />
				
				<label for="confirmPassword">Confirm Password</label>
				<input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm password" required />
				
				<button type="submit" class="submit-btn">Create an Account</button>
				
				<p class="login-link">Already have an account? <a href="${pageContext.request.contextPath}/login.jsp">Log In</a></p>

			</form>
		</div>
	</div>
	
	<%
    String error = request.getParameter("error");
    if ("email_exists".equals(error)) {
	%>
	    <p style="color:red;">This email is already registered.</p>
	<% 
	    } else if ("password_mismatch".equals(error)) {
	%>
	    <p style="color:red;">Passwords do not match.</p>
	<%
	    } else if ("phone".equals(error)) {
	%>
	    <p style="color:red;">Invalid phone number format.</p>
	<%
	    }
	%>
	
	

	<script>
		const clientBtn = document.getElementById("clientBtn");
		const lawyerBtn = document.getElementById("lawyerBtn");
		const lawyerFields = document.getElementById("lawyerFields");
		const dobGender = document.getElementById("dobGender");
	
		clientBtn.addEventListener("click", () => {
		  clientBtn.classList.add("active");
		  lawyerBtn.classList.remove("active");
		  lawyerFields.classList.add("hidden");
		  dobGender.classList.remove("hidden");
		});
	
		lawyerBtn.addEventListener("click", () => {
		  lawyerBtn.classList.add("active");
		  clientBtn.classList.remove("active");
		  lawyerFields.classList.remove("hidden");
		  dobGender.classList.add("hidden");
		});
	</script>
</body>
</html>