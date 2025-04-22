<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Manage Case</title>
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
	
	.manage-cases-container {
		background-color: #fff;
		padding: 25px;
		border-radius: 12px;
		box-shadow: 0 2px 5px rgba(0,0,0,0.05);
		flex-grow: 1;
	}
	
	.manage-cases-container h2 {
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
		padding: 15px 15px;
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
	
	.view-btn {
		background-color: #5944a8;
	}
	
	.view-btn:hover {
		background-color: #422f73;
	}
	
	.reassign-btn {
		background-color: #5682C9;
	}
	
	.reassign-btn:hover {
		background-color: #5682C9;
	}
	
	.close-btn {
		background-color: #dc3545;
	}
	
	.close-btn:hover {
		background-color: #a71d2a;
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
	
	<div class="manage-cases-container">
		<h2>Manage Cases</h2>
		
		<div class = "filters">
			<input type="text" placeholder="Enter Case ID">
			<input type="text" placeholder="Enter Lawyer Name">
			<select>
				<option value="" disabled selected>Select status</option>
				<option value="open">Open</option>
				<option value="closed">Closed</option>
			</select>
		</div>
	
		<table class="user-table">
			<thead>
				<tr>
					<th>Case ID</th>
					<th>Case Title</th>
					<th>Lawyer name</th>
					<th>Documents</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>101</td>
					<td>Contract Dispute</td>
					<td>Shidharth</td>
					<td>
						<button class="view-btn">View documents</button>
					</td>
					<td>Open</td>
					<td>
						<button class="reassign-btn">Reaasign</button>
						<button class="close-btn">Close</button>
					</td>
				</tr>
				
				<tr>
					<td>444</td>
					<td>Land Dispute</td>
					<td>Shreejan</td>
					<td>
						<button class="view-btn">View documents</button>
					</td>
					<td>Closed</td>
					<td>
						<button class="reassign-btn">Reaasign</button>
						<button class="close-btn">Close</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>