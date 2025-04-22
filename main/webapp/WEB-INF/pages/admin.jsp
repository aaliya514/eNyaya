<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Home Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sidebar.css" />
	<style>
		* {
			box-sizing: border-box;
			font-family: 'Arial', sans-serif;
			margin: 0;
			padding: 0;
		}
		
		body {
			display: flex;
			background-color: #f4f6fc;
			height: 100vh;
		}
		
		.main-content {
			flex-grow: 1;
			padding: 30px;
		}
		
		.greeting {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 20px;
			margin-left: 10px;
		}
		
		.stats {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
			gap: 20px;
			margin-bottom: 30px;
		}
		
		.card {
			background-color: white;
			border-radius: 12px;
			padding: 20px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.05);
		}
		
		.card h4 {
			font-size: 14px;
			color: #3a4b70;
			margin-bottom: 10px;
		}
		
		.card p {
			font-size: 24px;
			font-weight: bold;
			color: #3a4b70;
		}
		
		.logs {
			background-color: white;
			padding: 20px;
			border-radius: 12px;
		}
		
		.logs h3 {
			color: #1c2f50;
			font-size: 16px;
			margin-bottom: 10px;
		}
		
		.log-entry {
			display: flex;
			justify-content: space-between;
			padding: 8px 0;
			font-size: 14px;
			border-top: 1px solid #dce1f1;
		}
		
		.log-entry:first-child {
			border-top: none;
		}
	</style>
</head>
<body>

	<div class="sidebar">
		<button>Dashboard</button>
		<button>Manage Users</button>
		<button>Verify Lawyers</button>
		<button>Manage Appointment</button>
		<button>Manage Cases</button>
		<button>Generate Report</button>
	</div>
	
	<div class="main-content">
		<div class="greeting">Hi! Admin XYZ</div>
	
		<div class="stats">
		
			<div class="card">
				<h4>Total Admin</h4>
				<p>5</p>
			</div>
		
			<div class="card">
				<h4>Total Client</h4>
				<p>60</p>
			</div>
		
			<div class="card">
				<h4>Total Lawyer</h4>
				<p>30</p>
			</div>
			
			<div class="card">
				<h4>Total Appointment</h4>
				<p>100</p>
			</div>
		
			<div class="card">
				<h4>Total Case</h4>
				<p>100</p>
			</div>
		
			<div class="card">
				<h4>Completed Case</h4>
				<p>75</p>
			</div>
		
			<div class="card">
				<h4>Ongoing Case</h4>
				<p>20</p>
			</div>
			
			<div class="card">
				<h4>Cancelled Case</h4>
				<p>5</p>
			</div>
		</div>
	
		<div class="logs">
			<h3>SYSTEM LOGS</h3>
			
			<div class="log-entry"><span>1. New User created.</span><span>2hrs ago.</span></div>
			<div class="log-entry"><span>2. User colejake@gmail requesting access.</span><span>13hrs ago.</span></div>
			<div class="log-entry"><span>3. User pbcarti@yahoo session has ended.</span><span>1 day ago.</span></div>
			<div class="log-entry"><span>4. Case #101 has been completed.</span><span>1 day ago.</span></div>
			<div class="log-entry"><span>5. New User created.</span><span>1 day ago.</span></div>
			<div class="log-entry"><span>6. User rockyasap@hotmail has cancelled the request.</span><span>2 days ago.</span></div>
			<div class="log-entry"><span>7. New User created.</span><span>2 days ago.</span></div>
			<div class="log-entry"><span>8. User rockyasap@hotmail has cancelled the request.</span><span>2 days ago.</span></div>
			<div class="log-entry"><span>9. New User created.</span><span>2 days ago.</span></div>
		</div>
	</div>
</body>
</html>