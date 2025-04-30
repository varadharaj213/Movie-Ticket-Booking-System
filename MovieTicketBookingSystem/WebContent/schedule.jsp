<!DOCTYPE html>
<html>
<head>
    <title>Movie Schedule</title>
     <link rel="stylesheet" type="text/css" href="schedule.css">
</head>
<body>
 <div class="schedule-container">
 
    <h1>Movie Schedule</h1>
    
    <p>You are at <%= session.getAttribute("selectedLocation") %> - <%= session.getAttribute("selectedTheater") %></p>

    <h2>Movie Schedule:</h2>
    
    
    <table>
        <tr>
            <th>Date</th>
            <th>Showtime</th>
            <th>Movie</th>
        </tr>
        <tr>
            <td>2023-11-10</td>
            <td>Morning</td>
            <td>LEO</td>
        </tr>
        <tr>
            <td>2023-11-10</td>
            <td>Afternoon</td>
            <td>VIKRAM</td>
        </tr>
        <tr>
            <td>2023-11-10</td>
            <td>Evening</td>
            <td>KAITHI</td>
        </tr>
        <tr>
            <td>2023-11-10</td>
            <td>Night</td>
            <td>ROLEX</td>
        </tr>
        
    </table>

    <form action="MovieSelectionServlet" method="post">
        <p>Select a movie and showtime:</p>

        <label for="movie">Movie:</label>
        <select id="movie" name="movie">
            <option value="LEO">LEO</option>
            <option value="VIKRAM">VIKRAM</option>
            <option value="KAITHI">KAITHI</option>
            <option value="ROLEX">ROLEX</option>
        </select>
        <br>

        <label for="showtime">Showtime:</label>
        <select id="showtime" name="showtime">
            <option value="Morning">Morning</option>
            <option value="Afternoon">Afternoon</option>
            <option value="Evening">Evening</option>
            <option value="Night">Night</option>
        </select>
        <br>
        
       
        
        <input type="submit" value="Next" class="button">
    </form>
    </div>
</body>
</html>