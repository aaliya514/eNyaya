<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Manage Appointment</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sidebar.css" />
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
		
		.manage-appointments-container {
			background-color: #fff;
			padding: 25px;
			border-radius: 12px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.05);
			flex-grow: 1;
		}
		
		.manage-appointments-container h2 {
			font-size: 24px;
			font-weight: bold;
			color: #1c2f50;
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
		
		.reschedule-btn {
			background-color: #5682C9;
		}
		
		.reschedule-btn:hover {
			background-color: #5682C9;
		}
		
		.cancel-btn {
			background-color: #dc3545;
		}
		.cancel-btn:hover {
			background-color: #a71d2a;
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
	
	<div class="manage-appointments-container">
		<h2>Manage Appointments</h2>
	
		<div class = "filters">
			<input type="date" placeholder="Enter date">
			<input type="text" placeholder="Enter Client Name">
			<input type="text" placeholder="Enter Lawyer Name">
		
			<select>
				<option value="" disabled selected>Select status</option>
				<option value="completed">Completed</option>
				<option value="scheduled">Scheduled</option>
			</select>
		</div>
	
		<table class="user-table">
			<thead>
				<tr>
					<th>Date</th>
					<th>Client name</th>
					<th>Lawyer name</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>02-03-2024</td>
					<td>Colejake</td>
					<td>Shreejan</td>
					<td>Scheduled</td>
					<td>
					<button class="reschedule-btn">Reschedule</button>
					<button class="cancel-btn">Cancel</button>
					</td>
				</tr>
				
				<tr>
					<td>01-02-2023</td>
					<td>PBCartier</td>
					<td>Shidharth</td>
					<td>Completed</td>
					<td>
					<button class="reschedule-btn">Reschedule</button>
					<button class="cancel-btn">Cancel</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>