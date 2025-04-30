<!DOCTYPE html>
<html>
<head>
    <title>Choose Location</title>
     <link rel="stylesheet" type="text/css" href="location.css">
</head>
<body>
<div class="location-container">

    <h1>Choose Your Preferred Location</h1>
    <form action="LocationServlet" method="post">
        <label for="location">Select a Location:</label>
        <select id="location" name="location">
            <option value="Vellore">Vellore</option>
            <option value="Katpadi">Katpadi</option>
            <option value="Arcot">Arcot</option>
            <option value="Walaja">Walaja</option>
        </select>
        <br>
        <input type="submit" value="Continue" class="continue-button">
    </form>
    </div>
</body>
</html>