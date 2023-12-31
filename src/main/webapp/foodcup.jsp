<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body class="">
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-shopping-basket"></i> GreenSupermarket </a>
        <nav class="navbar">
            <a href="home.jsp">Home</a>
            <a href="login.jsp">Login</a>
 
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
            <h3>User Profile</h3>
            <h1><a href="userprofile.jsp">User Details</a></h1>
            <h1> <a href="#"></a>Admin Panel</h1>
        </form>
    </header>
    <div class="container">
        <section>
            <h1>FOOD CUPBOARD</h1>
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
            <div class="total" onclick="redirectToCheckout()">0</div>
            <div class="closeShopping">Close</div>
        </div>
    </div>
    <script src="JS/foodcup.js"></script>
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
    
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>GreenSupermarket <i class="fas fa-shopping-basket"></i></h3>
                <p>Discovering hidden treasures in every aisle</p>
                <div class="share">
                    <a href="#" class="fab fa-facebook"></a>
                    <a href="#" class="fab fa-instagram"></a>
                </div>
            </div>
            <div class="box">
                <h3>Contact Info </h3>
                <a href="#" class="links"><i class="fas fa-phone"></i>+94 112 799 555</a>
                <a href="#" class="links"><i class="fas fa-phone"></i>+94 112 799 444</a>
                <a href="#" class="links"><i class="fas fa-envelope"></i>greensup234@gmail.com</a>
                <a href="#" class="links"><i class="fas fa-map-marker-alt"></i>23/A,Main Street,Colombo.</a>
            </div>
            <div class="box">
                <h3>Quick Links </h3>
                <a href="home.jsp" class="links"><i class="fas fa-arrow-right"></i>home</a>
                <a href="login.jsp" class="links"><i class="fas fa-arrow-right"></i>Login</a>

            </div>
            <div class="box">
                <h3>NewsLetter</h3>
                <p>Subscribe for latest updates</p>
                <input type="email" placeholder="your email" class="email">
                <input type="submit" value="Subscribe" class="btn">
                <img src="image/visa.jpg" class="payment-img" alt="visa">
            </div>
        </div>
        <div class="credit">created by,<span> Group 22</span> |all right reserved|</div>
    </section>
</body>
</html>