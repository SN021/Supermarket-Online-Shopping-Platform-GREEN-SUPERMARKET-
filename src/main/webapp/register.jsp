<html>
  <head>
  <title>Login</title>
    <link rel="stylesheet"  href="style.css">
  </head>
  <body>
    <div class="loginbox">
      <h1>Login Here</h1>
      <form method="post" action="signup">
        <p>Username</p>
        <input type="text" name="username" id="username" placeholder="Enter username" require />
        <p>Password</p>
        <input type="password" name="password" id="password" placeholder="Enter Password" require />
            <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group">
                        <label for="mobile">Mobile</label>
                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
                    </div>
                            <br />
                            
        <div class="account">
                     <input type="submit" name="btnregister" id="btnregister" value="Register" />
                    <p class="text-center mt-3"><a href="login.jsp" class="text-primary">Already Registered? Login Here!</a></p>

        
        </div>
      </form>
    </div>
  </body>
</html>
