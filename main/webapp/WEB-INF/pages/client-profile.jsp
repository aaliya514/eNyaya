<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Profile</title>
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
	
	.profile-container {
		background-color: #fff;
		padding: 30px;
		border-radius: 8px;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
		width: 400px; /* Adjust width as needed */
	}
	
	.profile-header {
		display: flex;
		align-items: center;
		margin-bottom: 20px;
	}
	
	.profile-icon-container {
		background-color: #2c3e50; /* Dark blue background */
		color: #fff;
		border-radius: 50%;
		width: 70px;
		height: 70px;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 2.5em; /* Adjust icon size */
		margin-right: 20px;
	}
	
	.profile-details {
		display: grid;
		grid-template-columns: auto auto; /* Two columns for labels and values */
		gap: 10px 20px; /* Row and column gap */
	}
	
	.edit-profile-button {
		background-color: #e0e0e0;
		color: #333;
		border: none;
		padding: 10px 15px;
		border-radius: 5px;
		cursor: pointer;
		font-size: 0.9em;
	}

</style>
</head>
<body>
	<div class="sidebar">
        <button>User Profile</button>
        <button>Cases</button>
        <button>Appointments</button>
    </div>

    <div class="container">
        <div class="profile-container">
            <h2>Edit Profile</h2>

            <form action="${pageContext.request.contextPath}/update-client-profile" method="post">
                <input type="hidden" name="client_id" value="${client.client_id}" />

                <label>Full Name:</label>
                <input type="text" name="name" value="${client.name}" required />

                <label>Email:</label>
                <input type="email" name="email" value="${client.email}" required />

                <label>Date of Birth:</label>
                <input type="date" name="dob" value="${client.dob}" required />

                <label>Gender:</label>
                <input type="text" name="gender" value="${client.gender}" required />

                <label>Phone:</label>
                <input type="tel" name="phone" value="${client.phone}" required />

                <label>Address:</label>
                <textarea name="address">${client.address}</textarea>

                <button type="submit">Update Profile</button>
            </form>
        </div>
    </div>
</body>
</html>