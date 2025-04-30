<!DOCTYPE html>
<html>
<head>
    <title>Choose Theater</title>
     <link rel="stylesheet" type="text/css" href="theater.css">
</head>
<body>
<div class="theater-container">
    <h1>Choose a Theater</h1>
    <form action="TheaterServlet" method="post">
        <p>Select a theater in <%= session.getAttribute("selectedLocation") %>:</p>

        <label for="theater">Theater:</label>
        <select id="theater" name="theater">
            <option value="Vishnu Cinemas">Vishnu Cinemas</option>
            <option value="Galaxy Cinemas">Galaxy Cinemas</option>
            <option value="PVR Cinemas">PVR Cinemas</option>
             <option value="Blue Cinemas">Blue Cinemas</option>
             <option value="INOX">INOX</option>
        </select>
        <br>

        <input type="submit" value="Continue" class="continue-button">
    </form>
    </div>
</body>
</html>