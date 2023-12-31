<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("email");

    final String subject = "Transaction Successful with PayPal - GreenStore";

    final String messg = request.getParameter("price");

 

    // Sender's email ID and password needs to be mentioned

    final String from = "greenstore482@gmail.com";

    final String pass = "rmctecoepgmnqluj";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.ssl.protocols", "TLSv1.2");
    props.put("mail.debug", "true");



 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText("Thank you for your purchase!\n\n"+ "Total Amount: "+messg+" LKR\n"
                + "Payment Method: PayPal");

        // Send message

        Transport.send(message);

        result = "Your Transaction " +messg+ "LKR was successful....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to pay....";

    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="CSS/style.css">

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
          <h1><center><font color="blue">Green Sup</font></h1>
    <b><center><font color="black"><%= result %></b>
        </section>
        
    </div>

</body>
</html>
 


