<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Household Items</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="CSS/style.css">
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
    <div class="container">
        <section>
            <h1>HOUSEHOLD ITEMS</h1>
            <div class="shopping">
                <img src="image/shopping-cart.png">
                <span class="quantity">0</span>
            </div>
        </section>
        <div class="list"></div>
    </div>
    <div class="cart">
        <h1>Cart</h1>
        <ul class="listCart"></ul>
        <div class="checkOut">
            <div class="total"  onclick="redirectToCheckout()">0</div>
            <div class="closeShopping">Close</div>
        </div>
    </div>
    <script src="JS/household.js"></script>
        <script>
    function redirectToCheckout() {
        // Get the total amount
        const totalAmount = document.querySelector('.total').innerText;

        // Construct the URL with the total amount as a parameter
        const checkoutURL = 'checkout.jsp?totalAmount=' + encodeURIComponent(totalAmount);

        // Redirect to the checkout JSP file
        window.location.href = checkoutURL;
    }

    </script>
</body>
</html>