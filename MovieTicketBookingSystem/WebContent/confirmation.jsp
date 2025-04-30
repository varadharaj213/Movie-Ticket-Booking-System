<!DOCTYPE html>
<html>
<head>
    <title>Movie Ticket Confirmation</title>
    <style>
    * {
    margin: 0;
    padding: 0;
}
    body {
    background-image: url('man.jpeg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    font-family: Arial, sans-serif;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}
.confirmation-container {
    background-color: rgba(255, 255, 255, 0.8); 
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
        /* Add your CSS styles here */
        .ticket {
            width: 300px;
            border: 2px solid #000;
            text-align: center;
            font-family: Arial, sans-serif;
            margin: 0 auto;
            padding: 10px;
        }

        .movie-title {
            font-size: 24px;
            font-weight: bold;
        }

        .theater-info {
            font-size: 18px;
        }

        .showtime {
            font-size: 16px;
        }

        .seat-info {
            font-size: 20px;
        }

        .confirmation-number {
            font-size: 18px;
            margin-top: 10px;
        }
        .button {
    padding: 10px 20px;
    background-color: #007bff; 
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    margin: 10px;
    cursor: pointer;
}
.logo-container {
    width: 300px; 
    height: 400px; 
    overflow: hidden; 
}

/* Add styles for the logo */
.logo {
    max-width: 100%; 
    max-height: 100%; 
    display: block;
    margin: auto; 
}

/* Center the logo within the box */
.centered-logo {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
}


.button:hover {
    background-color: #0056b3; /* Darker blue on hover */
}
 .qr-code-image {
    width: 50px; /* Adjust the width and height as needed */
    height: 50px;
    margin: 10px auto; /* Center the image horizontally and add vertical spacing */
    display: block;
}       
    </style>
</head>
<body>

<div class="confirmation-container">

    <div class="ticket">
    <div class="logo-container centered-logo">
    <img src="leo.jpeg" class="logo" alt="Your Logo">
</div>

        <form action="LoginServlet" method="post">
        <div class="movie-title">Movie Title: <%= session.getAttribute("selectedMovie") %></div>
        <div class="theater-info">Theater: <%= session.getAttribute("selectedTheater") %></div>
        <div class="showtime">Showtime: <%= session.getAttribute("selectedShowtime") %></div>
        <div class="seat-info">Selected Seats:</div>
        <ul>
            <%
                String[] selectedSeats = (String[]) session.getAttribute("selectedSeats");
                if (selectedSeats != null) {
                    for (String seat : selectedSeats) {
            %>
            <li><%= seat %></li>
            <%
                    }
                }
            %>
        </ul>
       
        <div class="confirmation-number">Confirmation Number: <%= session.getAttribute("confirmationNumber") %></div>
         <img src="qr.jpg" alt="QR Code" class="qr-code-image">
   <input type="submit" value="print" onClick="window.print()" class="button"/>
    </div>
    </div>

    
</body>
</html>