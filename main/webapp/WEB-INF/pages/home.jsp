<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
<header>
    <div class="top-bar">
      <div class="logo">⚖️ Online Legal Aid System</div>
      <nav>
        <a href="#">Find Lawyers</a>
        <a href="#">Court</a>
        <a href="#">About Us</a>
        <a href="#">Contact Us</a>
      </nav>
      <div class="auth-links">
        <a href="#">Log In</a> |
        <a href="#">Register</a>
      </div>
    </div>
    <div class="search-section">
      <input type="text" placeholder="Search Lawyer" />
      <input type="text" placeholder="City, District or Province" />
      <button>🔍</button>
    </div>
    <div class="features">
      <div class="feature-box">300+ Verified Lawyers<br/><span>Across 25+ legal specialties, ready to help.</span></div>
      <div class="feature-box">Case Tracking in Real Time<br/><span>View status updates and reports anytime.</span></div>
      <div class="feature-box">Easy Appointment Booking<br/><span>Pick your lawyer and schedule online—fast.</span></div>
      <div class="feature-box">100 Secure and Confidential<br/><span>Your data and conversations are fully protected.</span></div>
    </div>
  </header>

  <main>
    <section class="lawyers-section">
      <h2>Appointment with Our Featured Lawyers</h2>
      <div class="cards">
        <!-- Repeat for each lawyer -->
        <div class="card">
          <div class="card-image"></div>
          <div class="card-info">
            <p>Advocate XYZ</p>
            <p>X Years Experience</p>
            <p>Practice Area: xyz / xyz / xyz</p>
            <div class="icons">🌐 📷 💼 💬</div>
          </div>
        </div>
        <!-- Repeat 3 more times -->
      </div>
    </section>

    <section class="lawyers-section premium">
      <h2>Appointment with Our Premium Lawyers</h2>
      <div class="cards">
        <!-- Repeat for each premium lawyer -->
        <!-- 8 placeholders -->
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
        <div class="card"><div class="card-image"></div><div class="card-info"><p>Advocate XYZ</p><p>X Years Experience</p><p>Practice Area: xyz / xyz / xyz</p><div class="icons">🌐 📷 💼 💬</div></div></div>
      </div>
    </section>

    <section class="cta">
      <div>
        <h3>Become Our Client</h3>
        <button>Register Now</button>
      </div>
      <div>
        <h3>Become Our Lawyer</h3>
        <button>Register Now</button>
      </div>
    </section>
  </main>

  <footer>
    <div class="footer-content">
      <div class="footer-logo">⚖️ Online Legal Aid System</div>
      <div class="quick-links">
        <h4>Quick Links</h4>
        <a href="#">Find Lawyers</a>
        <a href="#">About Us</a>
        <a href="#">Contact Us</a>
      </div>
      <div class="socials">🌐 📷 💼 💬</div>
    </div>
    <div class="copyright">
      &copy; 2025 All rights reserved
    </div>
  </footer>
</body>
</html>