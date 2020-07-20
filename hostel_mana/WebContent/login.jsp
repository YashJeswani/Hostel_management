<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login and Sign up</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300, 400, 500" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="./style.css">
<style>
.error {
    color: red;
}
</style>
</head>
<body>
<section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">Don't have an account?</h2>
        <p class="user_unregistered-text">Click On Signup To Register </p>
        <button class="user_unregistered-signup" id="signup-button">Sign up</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">Have an account?</h2>
        <p class="user_registered-text">Click On Sigin/Login TO Login The User</p>
        <button class="user_registered-login" id="login-button">Login</button>
      </div>
    </div>
    
    <div class="user_options-forms" id="user_options-forms">
      <div class="user_forms-login">
        <h2 class="forms_title">Login</h2>
        <form class="forms_form" action="MyProvider" method="post">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
                <label for="username">Email	</label>
               <input class="form-styling" id="email_id" oninput="Check_email(this.id);" type="text" name="email" placeholder="Email" required/><span class="error" id="email_d"></span>
                <label for="password">Password</label>
                <input class="form-styling" type="password" name="pwd" id="password1" oninput="Check_pswd(this.id);"  maxlength=20 placeholder="Password" required/><span class="error" id="pswd"></span>
          </fieldset>
          <div class="forms_buttons">
            <button type="button" class="forms_buttons-forgot">Forgot password?</button>
          </div>
          <div class="btn-animate">
           <button class="btn-signin" type="submit"> <a class="btn-signin">Sign in</a> </button> 
            <!--  <button type="submit" class="btn btn-primary" >Submit</button> 
             <input type="submit" value="login"> -->
            </div>
        </form>
      </div>
      <div class="user_forms-signup">
        <h2 class="forms_title">Sign Up</h2>
        <form class="forms_form" action="MyProject" method="post">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
                <label for="fullname">Name</label>
                <input class="form-styling" id="fname" type="text" name="uname" oninput="First_name(this.id);" maxlength=30 placeholder="Name"/ required><span class="error" id="first"></span>
                <label for="email">Email</label>
                <input class="form-styling" id="email_id1" oninput="Check_email(this.id);" type="text" name="email" maxlength=30 placeholder="Email" required/><span class="error" id="email_d"></span>
                <label for="password">Password</label>
                <input class="form-styling" type="password" name="pwd" id="password1x" oninput="Check_pswd(this.id);"  maxlength=20 placeholder="Password" required/><span class="error" id="pswd"></span>
                <label for="confirmpassword">Confirm password</label>
                <input class="form-styling" type="password" name="confirmpassword"  id="password2" oninput="Check_repswd(this.id);"  maxlength=20 placeholder=" Confirm Password" required/><span class="error" id="re_pswd"></span>
          </fieldset>
          <div class="btn-animate">
              <!-- a class="btn-signin">Sign UP</a> -->
              <button class="btn-signin" type="submit"> <a class="btn-signin">Register</a> </button> 
            <!--    <input type="submit" value="register"> -->
            </div>
        </form>
      </div>
    </div>
  </div>
</section>
<script>
var password="%%%%%%%%%%%%%%";
function First_name(id) {
 var txt = document.getElementById(id);
 var reg =  /\W/;
 if (txt.value == "") {
     txt.style.border = "2.2px solid red";
     txt.style.borderRadius = "5px";
     document.getElementById("first").innerHTML = "This field cannot be empty!";
     return true;
 }
 else if(reg.test(txt.value) == true) {
     txt.style.border = "2.2px solid darkgreen";
     txt.style.borderRadius = "5px";
     document.getElementById("first").innerHTML = "";
 }
 else {
     txt.style.border = "2.2px solid red";
     txt.style.borderRadius = "5px";
     document.getElementById("first").innerHTML = "First name must have alphabets only!";
     return true;
 }
 return false;
}
function Check_email(id) {
	   var txt = document.getElementById(id);
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

	   if (reg.test(txt.value) == true) {
	       txt.style.border = "2.2px solid darkgreen";
	       txt.style.borderRadius = "5px";
	       document.getElementById("email_d").innerHTML = "";
	   }
	   else {
	       txt.style.border = "2.2px solid red";
	       txt.style.borderRadius = "5px";
	       document.getElementById("email_d").innerHTML = "Invalid email!";
	       return true;
	   }
	   return false;
	}

function Check_pswd(id) {
   var txt = document.getElementById(id);
   var reg = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}/;

   if (reg.test(txt.value) == true) {
       txt.style.border = "2.2px solid darkgreen";
       txt.style.borderRadius = "5px";
       document.getElementById("pswd").innerHTML = "";
       password = txt.value;
   }
   else {
       txt.style.border = "2.2px solid red";
       txt.style.borderRadius = "5px";
       document.getElementById("pswd").innerHTML = "Must have at least one digit and one uppercase character 6 letters Compulsory!";
       password = "%%%%%%%%%%%%%%";
       return true;
   }
}

function Check_repswd(id) {
   var txt = document.getElementById(id);

   if (txt.value == password) {
       txt.style.border = "2.2px solid darkgreen";
       txt.style.borderRadius = "5px";
       document.getElementById("re_pswd").innerHTML = "";
       return false;
   }
   else {
       txt.style.border = "2.2px solid red";
       txt.style.borderRadius = "5px";
       document.getElementById("re_pswd").innerHTML = "Passwords don't match!";
       return true;
   }
}
</script>


  <script  src="./script.js"></script>

</body>
</html>