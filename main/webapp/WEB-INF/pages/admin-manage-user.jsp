<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Manage User</title>
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
		
		
		.manage-users-container {
			background-color: #fff;
			padding: 25px;
			border-radius: 12px;
			box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
			flex-grow: 1;
		}
		
		h2 {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 20px;
			margin-left: 10px;
		}
		
		.filters {
			display: flex;
			justify-content: flex-end;
			gap: 15px;
			margin-bottom: 20px;
		}
		
		.filters input,
		.filters select {
			padding: 8px 12px;
			border: 1.5px solid #a99fcf;
			border-radius: 6px;
			font-size: 14px;
			width: 200px;
		}
		
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
		
		
		.user-table button {
			padding: 6px 10px;
			margin: 2px;
			border: none;
			border-radius: 6px;
			font-size: 13px;
			color: white;
			cursor: pointer;
			background-color: #7e69ce;
			transition: background-color 0.2s ease, color 0.2s ease;
		}
		
		.user-table button:hover {
			background-color: #5944a8;
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
	
	<div class="manage-users-container">
		<h2>Manage Users</h2>
		
		<div class="filters">
			<input type="text" placeholder="Search user name">
			
			<select>
				<option value="" disabled selected>Select user type</option>
				<option value="admin">Admin</option>
				<option value="client">Client</option>
				<option value="lawyer">Lawyer</option>
			</select>
		</div>
	
		<table class="user-table">
			<thead>
				<tr>
					<th>No.</th>
					<th>User name</th>
					<th>Access</th>
					<th>Last Active</th>
					<th>Date Added</th>
					<th>Actions</th>
				</tr>
			</thead>
		
			<tbody>
			<tr>
				<td>1</td>
				<td>PBCartier</td>
				<td>admin</td>
				<td>2 mins ago</td>
				<td>01-02-2023</td>
				<td>
				<button>Details</button>
				<button>Activate / Deactivate</button>
				<button>Reset Password</button>
				</td>
			</tr>
			
			<tr>
				<td>2</td>
				<td>ColeJake</td>
				<td>client</td>
				<td>4 hrs ago</td>
				<td>02-01-2025</td>
				<td>
					<button>Details</button>
					<button>Activate / Deactivate</button>
					<button>Reset Password</button>
				</td>
			</tr>
			
			<tr>
				<td>3</td>
				<td>GiriShreejan</td>
				<td>Lawyer</td>
				<td>16 secs ago</td>
				<td>03-04-2024</td>
				<td>
					<button>Details</button>
					<button>Activate / Deactivate</button>
					<button>Reset Password</button>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
</body>
</html>