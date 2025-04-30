<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>

    <div class="login-container">
    <h1>Roman Movie Ticket Booking</h1>
       <div class="logo-container centered-logo">
    <img src="lcu.jpeg" class="logo" alt="Your Logo" align="middle">
</div>
        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>