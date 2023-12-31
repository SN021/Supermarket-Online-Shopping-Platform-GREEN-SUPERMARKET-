<!DOCTYPE html>
<html>
<head>
    <title>Sign In</title>
</head>
<body>
    <h2>Sign In</h2>
    <form method="post" action="signinServlet">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        
        <input type="submit" value="Sign In">
    </form>
</body>
</html>
