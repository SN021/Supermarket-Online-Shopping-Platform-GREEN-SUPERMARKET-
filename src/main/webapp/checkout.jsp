<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // Retrieve total amount from URL parameters
    String totalAmountParam = request.getParameter("totalAmount");
// Remove commas from the total amount string
String cleanedTotalAmount = totalAmountParam.replace(",", "");

// Convert the cleaned total amount to a numeric type
double totalAmount = Double.parseDouble(cleanedTotalAmount);

 
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="CSS/style.css">
               <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            display: block;

            height: 100vh;
            margin: 0;
        }

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 400px; /* Set your desired maximum width */
   margin: 0 auto; 
margin-bottom:20px;/* Center the form horizontally */
}

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body class="">
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-shopping-basket"></i> GreenSup </a>
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#login/signin">Login/Sign In</a>
            <a href="#aboutus">About Us</a>
            <a href="#contactus">Contact Us</a>
        </nav>
    
        <div class="icons">
            <div class="fas fa-bars" id="menu-btn"></div>
            <div class="fas fa-search" id="search-btn"></div>
            <div class="fas fa-shopping-cart" id="cart-btn"></div>
            <div class="fas fa-user" id="login-btn"></div>
        </div>
    
        <form action="" class="search-form">
            <input type="search" id="search-box" placeholder="Search here...">
            <label for="search-box" class="fas fa-search"></label>
        </form>
    
        <form action="" class="login-form">
            <h3>Login Now</h3>
            <input type="email" placeholder="Enter your email" class="box">
            <input type="password" placeholder="Enter your password" class="box">
            <p>Forget your password <a href="#">Click here</a></p>
            <p>Don't have an account <a href="#">Create a new account</a></p>
            <input type="submit" value="Login" class="btn">
        </form>
    </header>
 <div class="container" style ="margin-top:130px;">


        <!-- PayPal Standard Checkout Form -->
<form action="mailmessage.jsp" method="post" target="_top" >


    <label for="amount">Amount:</label>
    <input type="text" name="price" id="amount" value="<%= totalAmount %>">

    <label for="currency_code">Currency Code:</label>
    <input type="text" name="currency_code" id="currency_code" value="LKR">
  <label for="email">Email:</label>
<input type="email" name="email" id="email" value="email address">

     <input type="submit" value="Pay with PayPal" >
    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest">
    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
      <div id="paypal-button-container"></div>
</form>
    
    <!-- Add the rest of your checkout page content here -->
    </div>
     <!-- PayPal SDK -->
    <script src="https://www.paypal.com/sdk/js?client-id=AeOIxVXpDqFQhdzfgugdTQ1FTRVbvMq3VBSJAnjf-F52ldIWON3uGO6tdViGHptukkPJ05RkVKkvFiwX"></script>

    <!-- PayPal Checkout Script -->
    <script>
        // Render the PayPal button
        paypal.Buttons({
            createOrder: function (data, actions) {
                // Set up the transaction
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: <%= totalAmount %>,
                            currency_code: 'LKR'
                        }
                    }]
                });
            },
            onApprove: function (data, actions) {
                // Capture the funds from the transaction
                return actions.order.capture().then(function (details) {
                    // Call your server to save the transaction details
                    // TODO: Implement server-side logic to save the transaction details

                    // Redirect to a thank you page or perform other actions
                    window.location.href = 'thankyou.jsp';
                });
            }
        }).render('#paypal-button-container');
    </script>
    <!-- Add this script to your HTML -->
<script src="https://cdn.emailjs.com/dist/email.min.js"></script>
    
</body>
</html>
