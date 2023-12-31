<html>
  <head>
  <title>Login</title>
    <link rel="stylesheet"  href="style.css">
  </head>
  <body>
    <div class="loginbox">
      <h1>Login Here</h1>
      <form method="post" action="signin">
        <p>Username</p>
        <input type="text" name="username" id="username" placeholder="Enter username" require />
        <p>Password</p>
        <input type="password" name="password" id="password" placeholder="Enter Password" require />
        <input type="submit" name="btnlogin" id="btnlogin" value="Login" />
        <br />
        <div class="account">
        <a href="register.jsp">Create Account</a>
        </div>
      </form>
    </div>
  </body>
</html>
