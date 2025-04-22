<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Verify Lawyers</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sidebar.css"/>
	<style>
		* {
			box-sizing: border-box;
			font-family: 'Arial', sans-serif;
			margin: 0;
			padding: 0;
		}
		
		body {
			background-color: #f4f6fc;
			display: flex;
			height: 100vh;
		}
		
		/* ========== VERIFY LAWYERS CONTAINER ========== */
		.verify-lawyers-container {
			background-color: #fff;
			padding: 25px;
			border-radius: 12px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.05);
			flex-grow: 1;
		}
		
		.verify-lawyers-container h2 {
			font-size: 24px;
			font-weight: bold;
			color: #1c2f50;
			margin-bottom: 20px;
			margin-left: 10px;
		}
		
		/* ========== TABLE ========== */
		.user-table {
			width: 100%;
			border-collapse: collapse;
		}
		
		.user-table th,
		.user-table td {
			text-align: left;
			padding: 12px 15px;
			border-bottom: 1px solid #dce1f1;
			font-size: 14px;
		}
		
		.user-table thead {
			background-color: #f4f6fc;
			color: #333;
		}
		
		/* ========== BUTTONS & TEXTAREA ========== */
		.user-table button {
			padding: 6px 12px;
			margin: 2px;
			border: none;
			border-radius: 6px;
			font-size: 13px;
			color: white;
			cursor: pointer;
			transition: background-color 0.2s ease;
		}
		
		.view-license-btn {
			background-color: #5944a8;
		}
		.view-license-btn:hover {
			background-color: #422f73;
		}
		
		.approve-btn {
			background-color: #28a745;
		}
		.approve-btn:hover {
			background-color: #1e7e34;
		}
		
		.reject-btn {
			background-color: #dc3545;
		}
		.reject-btn:hover {
			background-color: #a71d2a;
		}
		
		.user-table textarea {
			width: 100%;
			min-height: 40px;
			padding: 8px;
			font-family: inherit;
			font-size: 14px;
			border: 1px solid #dce1f1;
			border-radius: 6px;
			resize: vertical;
		}
	</style>
</head>
<body>
	<div class="sidebar">
		<button>Dashboard</button>
		<button>Manage Users</button>
		<button class="active">Verify Lawyers</button>
		<button>Manage Appointment</button>
		<button>Manage Cases</button>
		<button>Generate Report</button>
	</div>

	<div class="verify-lawyers-container">
		<h2>Verify Lawyers</h2>
		
		<table class="user-table">
			<thead>
				<tr>
					<th>No.</th>
					<th>User name</th>
					<th>License</th>
					<th>Internal Notes</th>
					<th>Actions</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>1</td>
					<td>Lawyer One</td>
					<td>
						<button class="view-license-btn">View License</button>
					</td>
					<td>
						<textarea placeholder="Type something...."></textarea>
					</td>
					<td>
						<button class="approve-btn">Approve</button>
						<button class="reject-btn">Reject</button>
					</td>
				</tr>
				
				<tr>
					<td>2</td>
					<td>Lawyer Two</td>
					<td>
						<button class="view-license-btn">View License</button>
					</td>
					<td>
						<textarea placeholder="Type something...."></textarea>
					</td>
					<td>
						<button class="approve-btn">Approve</button>
						<button class="reject-btn">Reject</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>