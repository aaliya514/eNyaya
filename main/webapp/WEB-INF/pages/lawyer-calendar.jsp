<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
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
		
		.container {
			background-color: #fff;
			padding: 25px;
			border-radius: 12px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.05);
			flex-grow: 1;
		}
		
		.container h2 {
			font-size: 24px;
			font-weight: bold;
			color: #1c2f50;
			margin-bottom: 20px;
			margin-left: 10px;
		}
		
		.container h1 {
			font-size: 15px;
			margin-bottom: 20px;
			margin-left: 10px;
		}
		
		/* ========== TABLE ========== */
		table {
			width: 1000px;
			height: 400px; /* Adjust as needed */
			border-collapse: collapse;
			font-family: sans-serif;
		}
		
		th, td {
			border: 1px solid #ccc;
			padding: 8px;
			text-align: center;
		}
		
		th {
			background-color: #f0f0f0;
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
	
	<div class="container">
		<h2>Calendar</h2>
		
		<h1>April 2025</h1>
	
		<table>
		
			<thead>
				<tr>
					<th>Sun</th>
					<th>Mon</th>
					<th>Tue</th>
					<th>Wed</th>
					<th>Thur</th>
					<th>Fri</th>
					<th>Sat</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>5</td>
				</tr>
			
				<tr>
					<td>6</td>
					<td>7</td>
					<td>8</td>
					<td>9</td>
					<td>10</td>
					<td>11</td>
					<td>12</td>
				</tr>
			
				<tr>
					<td>13</td>
					<td>14</td>
					<td>15</td>
					<td>16</td>
					<td>17</td>
					<td>18</td>
					<td>19</td>
				</tr>
			
				<tr>
					<td>20</td>
					<td>21</td>
					<td>22</td>
					<td>23</td>
					<td>24</td>
					<td>25</td>
					<td>26</td>
				</tr>
			
				<tr>
					<td>27</td>
					<td>28</td>
					<td>29</td>
					<td>30</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>