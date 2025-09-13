<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Login Page</title>
<style>
* {
  padding:0;
  margin:0;
  color:#1a1f36;
  box-sizing:border-box;
  font-family:Arial, sans-serif;
}
body {
  background:#fff;
  min-height:100%;
}
h1 { color:#5469d4; text-align:center; }
.login-root {
  display:flex;
  width:100%;
  min-height:100vh;
  justify-content:center;
  align-items:center;
}
.formbg {
  background:#fff;
  padding:40px;
  border-radius:5px;
  box-shadow:0px 0px 10px gray;
  width:350px;
}
input {
  width:100%;
  padding:10px;
  margin-top:10px;
  margin-bottom:20px;
  border:1px solid #ccc;
  border-radius:4px;
}
input[type=submit] {
  background:#5469d4;
  color:white;
  font-weight:bold;
  cursor:pointer;
}
.reset-pass {
  text-align:right;
  font-size:12px;
}
.footer-link {
  text-align:center;
  margin-top:20px;
  font-size:14px;
}
</style>
</head>
<body>
  <div class="login-root">
    <div class="formbg">
      <h1>Login Form</h1>

      <!-- ✅ This form now calls LoginServlet -->
      <form action="login" method="post">
        <label>Email</label>
        <input type="email" name="email" required>

        <div class="reset-pass">
          <a href="#">Forgot your password?</a>
        </div>

        <label>Password</label>
        <input type="password" name="password" required>

        <div>
          <input type="checkbox" name="remember"> Stay signed in for a week
        </div>

        <input type="submit" value="Continue">
      </form>

      <div class="footer-link">
        <span>Don't have an account? <a href="register.jsp">Sign up</a></span><br><br>
        <a href="#">Contact</a> | 
        <a href="#">Privacy & terms</a>
      </div>
    </div>
  </div>
</body>
</html>
