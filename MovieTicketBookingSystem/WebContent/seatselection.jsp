<!DOCTYPE html>
<html>
<head>
    <title>Seat Selection</title>
    <link rel="stylesheet" type="text/css" href="seatselection.css">
</head>
<body>
<div class="seat-selection-container">
    <h1>Select Your Seats</h1>
    <p>You are watching "<%= session.getAttribute("selectedMovie") %>" at <%= session.getAttribute("selectedTheater") %> on <%= session.getAttribute("selectedShowtime") %></p>

    <form action="SeatSelectionServlet" method="post">
        <p>Select your seats:</p>
        
            <div class="row">
                <label class="seat-label" for="A1"><input type="checkbox" name="selectedSeats" id="A1" value="A1"> A1</label>
                <label class="seat-label"for="A2"><input type="checkbox" name="selectedSeats" id="A2" value="A2"> A2</label>
                <label class="seat-label" for="A3"><input type="checkbox" name="selectedSeats" id="A3" value="A3"> A3</label>
                <label class="seat-label" for="A4"><input type="checkbox" name="selectedSeats" id="A4" value="A4"> A4</label>
                <label class="seat-label"for="A5"><input type="checkbox" name="selectedSeats" id="A5" value="A5"> A5</label>
                <label class="seat-label" for="A6"><input type="checkbox" name="selectedSeats" id="A6" value="A6"> A6</label>
            </div>
             <div class="row">
                <label class="seat-label" for="B1"><input type="checkbox" name="selectedSeats" id="B1" value="B1"> B1</label>
                <label class="seat-label"for="B2"><input type="checkbox" name="selectedSeats" id="B2" value="B2"> B2</label>
                <label class="seat-label" for="B3"><input type="checkbox" name="selectedSeats" id="B3" value="B3"> B3</label>
                <label class="seat-label" for="B4"><input type="checkbox" name="selectedSeats" id="B4" value="B4"> B4</label>
                <label class="seat-label"for="B5"><input type="checkbox" name="selectedSeats" id="B5" value="B5"> B5</label>
                <label class="seat-label" for="B6"><input type="checkbox" name="selectedSeats" id="B6" value="B6"> B6</label>
            </div>
            <div class="row">
                <label class="seat-label" for="C1"><input type="checkbox" name="selectedSeats" id="A1" value="C1"> C1</label>
                <label class="seat-label"for="C2"><input type="checkbox" name="selectedSeats" id="A2" value="C2"> C2</label>
                <label class="seat-label" for="C3"><input type="checkbox" name="selectedSeats" id="A3" value="C3"> C3</label>
                <label class="seat-label" for="C4"><input type="checkbox" name="selectedSeats" id="A1" value="C4"> C4</label>
                <label class="seat-label"for="C5"><input type="checkbox" name="selectedSeats" id="A2" value="C5"> C5</label>
                <label class="seat-label" for="C6"><input type="checkbox" name="selectedSeats" id="A3" value="C6"> C6</label>
            </div>
             <div class="row">
                <label class="seat-label" for="D1"><input type="checkbox" name="selectedSeats" id="D1" value="D1"> D1</label>
                <label class="seat-label" for="D2"><input type="checkbox" name="selectedSeats" id="D2" value="D2"> D2</label>
                <label class="seat-label"for="D3"><input type="checkbox" name="selectedSeats" id="D3" value="D3"> D3</label>
                <label class="seat-label" for="D4"><input type="checkbox" name="selectedSeats" id="D4" value="D4"> D4</label>
            </div>
       
        <br>
        <input type="submit" value="Proceed to Payment" class="button">
    </form>
    </div>
</body>
</html>