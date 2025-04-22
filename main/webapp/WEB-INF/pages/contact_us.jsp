<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Contact Us</title>
	<style>
		body {
			font-family: 'Segoe UI', sans-serif;
			margin: 0;
			padding: 0;
		}
		
		.section-title {
			text-align: center;
			font-size: 2rem;
			margin: 30px 0 0;
			color: #2c2c74;
		}
		
		.contact-icons {
			display: flex;
			justify-content: space-around;
			background-color: #3f5494;
			color: white;
			padding: 40px 20px;
			flex-wrap: wrap;
		}
		
		.icon-box {
			text-align: center;
			margin: 10px;
		}
		
		.icon-box i {
			font-size: 30px;
			margin-bottom: 10px;
		}
		
		.social-section {
			background-color: #3f5494;
			color: white;
			text-align: center;
			padding: 10px 0 20px;
		}
		
		.social-icons i {
			font-size: 20px;
			margin: 0 10px;
		}
		
		.form-section {
			max-width: 800px;
			margin: 30px auto;
			padding: 0 20px;
		}
		
		.form-section h3 {
			text-align: center;
			color: #2c2c74;
			margin-bottom: 20px;
		}
		
		form .row {
			display: flex;
			flex-wrap: wrap;
			gap: 20px;
			margin-bottom: 15px;
		}
		
		.field {
			flex: 1;
			min-width: 200px;
			display: flex;
			flex-direction: column;
		}
		
		.field.full {
			flex: 1 1 100%;
		}
		
		label {
			margin-bottom: 5px;
			font-weight: 500;
			color: #333;
		}
		
		input, textarea {
			padding: 10px;
			font-size: 1rem;
			border: 1px solid #ccc;
			border-radius: 4px;
		}
		
		textarea {
			min-height: 150px;
			resize: vertical;
		}
		
		button {
			display: block;
			width: 100%;
			background-color: #2c2c74;
			color: white;
			padding: 12px;
			font-size: 1rem;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			margin-top: 10px;
		}
		
		button:hover {
			background-color: #1f2b5c;
		}
		
		.map-section iframe {
			margin-top: 0;
			display: block;
			border: none;
		}

	</style>
</head>
<body>
	<h2 class="section-title">CONTACT US</h2>
	
	<section class="contact-icons">
	
		<div class="icon-box">
			<i class="fas fa-phone"></i>
			<p>+977 9083712491<br>+977 9827985687</p>
		</div>
		
		<div class="icon-box">
			<i class="fas fa-map-marker-alt"></i>
			<p>Nakkhu Bazar,<br>Kathmandu, Nepal</p>
		</div>
		
		<div class="icon-box">
			<i class="fas fa-envelope"></i>
			<p>khargashidharth@gmail.com<br>notmuch123456789@gmail.com</p>
		</div>
	</section>
	
	<div class="social-section">
		<p>We are also available at:</p>
		
		<div class="social-icons">
			<i class="fab fa-facebook"></i>
			<i class="fab fa-instagram"></i>
		</div>
	</div>
	
	<section class="form-section">
		<h3>Get in touch with us.</h3>
		
		<form>
		
		<div class="row">
			<div class="field">
				<label for="first-name">First Name</label>
				<input type="text" id="first-name" placeholder="Enter your first name" required>
			</div>
			
			<div class="field">
				<label for="last-name">Last Name</label>
				<input type="text" id="last-name" placeholder="Enter your last name" required>
			</div>
		
		</div>
		
		<div class="row">
		
			<div class="field">
				<label for="email">Email Address</label>
				<input type="email" id="email" placeholder="example@gmail.com" required>
			</div>
			
			<div class="field">
				<label for="phone">Phone Number</label>
				<input type="text" id="phone" placeholder="98-XXXXXXXXXX" required>
			</div>
		</div>
		
		<div class="row">
			<div class="field full">
				<label for="subject">Subject</label>
				<input type="text" id="subject" placeholder="Enter message subject" required>
			</div>
		</div>
		
		<div class="row">
			<div class="field full">
				<label for="message">Message</label>
				<textarea id="message" placeholder="Enter your message" required></textarea>
			</div>
		</div>
		
		<button type="submit">Submit</button>
		</form>
	</section>
	
	<section class="map-section">
		<iframe
		src="https://maps.google.com/maps?q=Nakkhu%20Bazar,%20Kathmandu&t=&z=13&ie=UTF8&iwloc=&output=embed"
		width="100%"
		height="300"
		style="border:0;"
		>
		</iframe>
	</section>
</body>
</html>