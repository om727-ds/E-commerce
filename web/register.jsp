<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Register</title>
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins&display=swap");

:root {
  --bg-color: #C7CCC7;
  --color-text: #F2F3F2;
  --bg-form: #576057;
}

body {
  margin:0;
  padding:0;
  font-family:"Poppins",sans-serif;
  background-color:var(--bg-color);
  display:flex;
  align-items:center;
  justify-content:center;
  min-height:100vh;
}

.form-container {
  background-color:var(--bg-form);
  padding:30px;
  border-radius:20px;
  box-shadow:-2px 5px 5px #4B534B;
  width:300px;
}

.form-container h3 {
  text-align:center;
  color:var(--color-text);
}

.input-wrap {
  margin:15px 0;
  position:relative;
}

.input-field {
  width:100%;
  background:transparent;
  border:none;
  border-bottom:2px solid var(--color-text);
  padding:10px 0;
  color:var(--color-text);
}

.input-label {
  position:absolute;
  top:10px;
  left:0;
  color:var(--color-text);
}

.actions {
  margin-top:20px;
  text-align:center;
}

button {
  padding:8px 15px;
  border:none;
  border-radius:5px;
  cursor:pointer;
  color:white;
}

.b-positive { background:#50C878; }
.b-negative { background:#E5484D; }
</style>
</head>
<body>

<div class="form-container">
  <h3>Register Here</h3>
  <!-- ✅ Send form data to RegisterServlet -->
  <form action="register" method="post">
    <div class="input-wrap">
      <input type="text" class="input-field" name="name" required>
      <label class="input-label">Name</label>
    </div>
    <div class="input-wrap">
      <input type="text" class="input-field" name="email" required>
      <label class="input-label">Email</label>
    </div>
    <div class="input-wrap">
      <input type="password" class="input-field" name="password" required>
      <label class="input-label">Password</label>
    </div>
    <div class="actions">
      <button type="submit" class="b-positive">Register</button>
      <button type="reset" class="b-negative">Clear</button>
    </div>
  </form>

  <div class="footer-link" style="text-align:center; margin-top:15px;">
    <a href="login.jsp" style="color:white;">Already have an account? Login</a>
  </div>
</div>

<script>
document.querySelectorAll('.input-label').forEach(label=>{
  let txt=label.textContent;
  label.textContent="";
  txt.split('').forEach((ch,i)=>{
    if(ch===" "){
      label.appendChild(document.createTextNode(" "));
    } else {
      let span=document.createElement("span");
      span.style.setProperty("--delay",(i*50)+"ms");
      span.textContent=ch;
      label.appendChild(span);
    }
  });
});
</script>

</body>
</html>
