<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Supermarket</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="CSS/home.css">
</head>
<body>
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-shopping-basket"></i> GreenSup </a>
        <nav class="navbar">
            <a href="home.jsp">Home</a> 
            <a href="login.jsp">Login</a>
            <a href="#about">About Us</a>
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

    <section class="home" id="home">
        <div class="slider">
            <div class="list">
                <div class="item">
                    <img src="pic7.jpg" alt="Supermarket-girl">
                </div>
                <div class="item">
                    <img src="pic4.jpg" alt="veg-fruits">
                </div>
                <div class="item">
                    <img src="pic5.jpg" alt="all">
                </div>
                <div class="item">
                    <img src="pic2.jpg" alt="cart">
                </div>
            </div>
            <div class="buttons">
                <button id="prev"><</button>
                <button id="next">></button>
            </div>
            <ul class="dots">
                <li class="active"></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </section>

    <section class="features" id="features">
        <h1 class="heading">Our <span>Features</span> </h1>
        <div class="box-container">
            <div class="box">
                <img src="image/fresh.jpg" alt="fresh">
                <h3>Fresh & Organic</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
            <div class="box">
                <img src="image/delivery.jpg" alt="delivery">
                <h3>Free & Fast Delivery</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
            <div class="box">
                <img src="image/payment.jpg" alt="payment">
                <h3>Easy Payments</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
        </div>
    </section>

    <section class="categories" id="categories">
        <h1 class="heading">Product <span>Categories</span> </h1>
        <div class="swiper product-slider">
            <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="image/vegetables.jpg" alt="vegetables">
                        <h3>Vegetables</h3>
                        <a href="vegetables.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/fruit.jpg" alt="fruit">
                        <h3>Fruits</h3>
                        <a href="fruit.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/m&sf.jpg" alt="meat&seafood">
                        <h3>Meat & Sea Food</h3>
                        <a href="meat&seafood.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/beverages.jpg" alt="beverages">
                        <h3>Beverages</h3>
                        <a href="beverages.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/snack&c.jpg" alt="snack&c">
                        <h3>Snack & Confectionery</h3>
                        <a href="snack&confectionery.jsp" class="btn">Shop Now</a>
                    </div>
            </div>
        </div>
        <div class="swiper product-slider">
            <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="image/bakery.jpg" alt="bakery ">
                        <h3>Bakery Items</h3>
                        <a href="bakery.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/dairy.jpg" alt="dairy">
                        <h3>Dairy Items</h3>
                        <a href="dairy.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/household.jpg" alt="household">
                        <h3>Household Items</h3>
                        <a href="household.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/foodcup.jpg" alt="foodcup">
                        <h3>FoodCupboard</h3>
                        <a href="foodcup.jsp" class="btn">Shop Now</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="image/frozen.jpg" alt="frozen">
                        <h3>Frozen Items</h3>
                        <a href="frozen.jsp" class="btn">Shop Now</a>
                    </div>
            </div>
        </div>
    </section>

    <section class="product" id="products">
        <h1 class="heading">Best<span>Sellers</span></h1>
        <div class="box-container">
                <div class="box">
                    <img src="image/31.jpg" alt="">
                    <h3>Marie</h3>
                    <a href="snack&confectionery.jsp" class="btn">Shop</a>
                </div>
                <div class="box">
                    <img src="image/49.jpg" alt="">
                    <h3>Cup Cake</h3>
                    <a href="bakery.jsp" class="btn">Shop</a>
                </div>
                <div class="box">
                    <img src="image/88.jpg" alt="">
                    <h3>Noodles</h3>
                    <a href="foodcup.jsp" class="btn">Shop</a>
                </div>
                <div class="box">
                    <img src="fish.jpg" alt="">
                    <h3>Bread</h3>
                    <a href="#" class="btn">Shop</a>
                </div>
        </div>
    </section>

    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>GreenSup <i class="fas fa-shopping-basket"></i></h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
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
                <a href="#" class="links"><i class="fas fa-arrow-right"></i>home</a>
                <a href="#" class="links"><i class="fas fa-arrow-right"></i>Login/Sign In</a>
                <a href="#" class="links"><i class="fas fa-arrow-right"></i>About Us</a>
                <a href="#" class="links"><i class="fas fa-arrow-right"></i>Contact Us</a>
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
    
  


<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="JS/home.js"></script>
</body>
</html>