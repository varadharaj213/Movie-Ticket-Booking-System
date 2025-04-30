<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
          <link rel="stylesheet" type="text/css" href="payment.css">
   
</head>
<body>
<div class="payment-container">
    <h1>Payment</h1>
    <p>You have selected the following seats:</p>
    <div class="payment-container">
        <ul>
            <% String[] selectedSeats = (String[]) session.getAttribute("selectedSeats");
               if (selectedSeats != null) {
                   for (String seat : selectedSeats) { %>
                       <li><%= seat %></li>
                   <% }
               }
            %>
        </ul>
    </div>

    <form action="PaymentProcessServlet" method="post">
        <h2>Enter Payment Information</h2>
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" required><br>

        <label for="expiration">Expiration Date:</label>
        <input type="text" id="expiration" name="expiration" required><br>

        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" required><br>

        <input type="submit" value="Proceed to Payment" class="button">
    </form>
    </div>
</body>
</html>