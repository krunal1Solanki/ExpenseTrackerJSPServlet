<!DOCTYPE html>
<html>
  <head>
    <title>Expense Tracker</title>
    <%@include file="All_Files_CSS.jsp"%>
    <%@include file="Navbar.jsp"%>
    
  </head>
  <body>

<section id="hero">
  <div id="hero-content">
    <h1 id="hero-title">Track Your Expenses With Ease</h1>
    <p id="hero-text">Our expense tracker makes it simple to keep tabs on your spending.</p>
    <a href="register.jsp"><button id="hero-button">Get Started</button></a>
  </div>
</section>

<section id="features">
  <div class="feature">
    <i class="feature-icon fas fa-clock"></i>
    <h2 class="feature-title">Track Your Time</h2>
    <p class="feature-text">Log the time spent on each task and project.</p>
  </div>
  <div class="feature">
    <i class="feature-icon fas fa-money-bill-alt"></i>
    <h2 class="feature-title">Record Expenses</h2>
    <p class="feature-text">Add new expenses and categorize them as necessary.</p>
  </div>
  <div class="feature">
    <i class="feature-icon fas fa-chart-pie"></i>
    <h2 class="feature-title">Analyze Your Spending</h2>
    <p class="feature-text">See how much you're spending in different categories over time.</p>
  </div>
</section>

<footer id="footer">
  <div id="footer-left">
    &copy; 2023 Expense Tracker Inc.
  </div>
  <div id="footer-right">
    <a id="footer-link" href="#">Terms of Service</a> | <a id="footer-link" href="#">Privacy Policy</a>
  </div>
</footer>
        </body>
</html>
