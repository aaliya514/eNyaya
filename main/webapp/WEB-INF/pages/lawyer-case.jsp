<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lawyer Cases</title>
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
		<button>Cases</button>
		<button>Appointments</button>
		<button>Calendar</button>
	</div>
	
	<div class="manage-cases-container">
		<h2>Cases</h2>
		
		<table class="user-table">
			<thead>
				<tr>
					<th>No.</th>
					<th>Client ID</th>
					<th>Name</th>
					<th>Practice</th>
					<th>Date</th>
					<th>Status</th>
					<th>Description</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>1</td>
					<td>6TY789</td>
					<td>Ronaldo Giri</td>
					<td>xyz</td>
					<td>04-04-2004</td>
					<td>Completed</td>
					<td>Some description about the case</td>
				</tr>
				
				<tr>
					<td>4</td>
					<td>7X908</td>
					<td>Messi Bhattarai</td>
					<td>xyz</td>
					<td>01-02-2003</td>
					<td>Scheduled</td>
					<td>Some description about the case</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>