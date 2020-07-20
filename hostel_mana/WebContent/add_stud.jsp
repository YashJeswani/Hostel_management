<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Add_Student</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="./style_addstud.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<style>
.w3-dropdown-hover:first-child, .w3-dropdown-click:hover {

    background-color: #000;
    color: #fff;
    width: 280px;

}
.w3-dropdown-content {

    cursor: auto;
    color: #fff;
    background-color: #000;
    display: none;
    position: absolute;
    min-width: 280px;
    margin: 0;
    padding: 0;
    z-index: 1;

}
.w3-dropdown-hover:first-child, .w3-dropdown-click:hover {

    background-color: #000;
    color: #fff;
    width: 280px;

}
.w3-btn, .w3-button {

    border: none;
    display: inline-block;
    padding: 8px 26px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
    width: 200px;
}
.error {
    color: red;
}
</style>
</head>
<body>
<div id="wrapper">
        <div class="overlay"></div>
    
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       Project
                    </a>
                </li>
                <li>
                    <a href="welcome.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                </li>
                    <li>
		                <div class="w3-dropdown-hover">
					    <button class="w3-button">Dropdown
					      <i class="fa fa-caret-down"></i>
					    </button>
					    <div class="w3-dropdown-content w3-bar-block">
					      <a href="add_stud.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-folder"></i>Add Student</a>
					      <a href="upload_stud.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-folder"></i>Upload Student Details</a>
					    </div>
					  </div> 
                    <!-- <a href="view_stud.jsp"><i class="fa fa-fw fa-file-o"></i> View Student</a>
 -->              </li>
                <li>
                    <a href="view_stud.jsp"><i class="fa fa-fw fa-file-o"></i> View Student</a>
                </li>
                <li>
                    <a href="vroom.jsp"><i class="fa fa-fw fa-cog"></i>View Room </a>
                </li>
               
                <li>
                    <a href="late.jsp"><i class="fa fa-fw fa-dropbox"></i> Add Late</a>
                </li>
                <li>
                    <a href="leave.jsp"><i class="fa fa-fw fa-dropbox"></i>Add Leave</a>
                </li>
                <li>
                    <a href="attendance.jsp"><i class="fa fa-fw fa-bank"></i> Marking Attendance</a>
                </li>
                   <li>
                    <a href="payment.jsp"><i class="fa fa-fw fa-bank"></i> Add PayDetails</a>
                </li>
                <li>
                    <a href="logout"><i class="fa fa-fw fa-key"></i> logout</a>
                </li>
            </ul>
        </nav>
          <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
                    <div class="container">
  <h1>Enter The Student Details: </h1>
<form id="msform" action="add_student" method="post">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active"></li>
    <li></li>
    <li></li>
    <li></li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Create your account</h2>
    <h3 class="fs-subtitle">This is step 1</h3>
    <input type="text" id="fname" oninput="First_name(this.id);" maxlength=30 name="name" placeholder="Name"  required /><span class="error" id="first"></span>
    <input type="text"  id="email_id" oninput="Check_email(this.id);" maxlength=30 name="email" placeholder="Email" required /><span class="error" id="email_d"></span>
    <textarea name="address" placeholder="Address" required ></textarea>
	  <input type="text" name="reg_id" placeholder="Registration NO" required />
	  <input type="text" id="hostel_id" oninput="check_hostelid(this.id);" autocomplete="off" maxlength=2 name="h_id" placeholder="Hostel Id" required  /><span class="error" id="hostel_id"></span>
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Room profile</h2>
    <h3 class="fs-subtitle">Your presence  on Room</h3>
    <input type="text" id="room_no" oninput="check_roomno(this.id);" name="roomno" maxlength=3  placeholder="Room No" required /><span class="error" id="room_no"></span>
    <input type="text" id="year" oninput="check_yoj(this.id);" maxlength=2 name="year" placeholder="Year Of Joining" required  /><span class="error" id="year_join"></span>
    <input type="text" id="deposit" oninput="check_money(this.id);" maxlength=5 name="deposit" placeholder="Deposit" required /><span class="error" id="dep_id"></span>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Gaurdian Details</h2>
    <h3 class="fs-subtitle">Your Gaurdian Details</h3>   
    <input type="text" id="g_name" oninput="gaurdian_name(this.id);" maxlength=30 name="gaurd_name" placeholder="Name Of Gaurdian" required /><span class="error" id="gaurd_id"></span>
    <input type="text" name="gaurd_phone" id="mob_no" oninput="Check_mob(this.id);" max="10" placeholder="Phone NO Of Gaurdian" required /><span class="error" id="mob_no1"></span>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Personal Details</h2>
    <h3 class="fs-subtitle">Fill The Details</h3>
    <input type="text" name="phone" id="phone_no" oninput="check_mobp(this.id);" max="10" placeholder="Phone No" required /><span class="error" id="mob_nop"></span>
    <input type="date" name="dob" placeholder="DOB" />
    <input type="text" name="adharno" id="adhar_no" oninput="check_adhar(this.id);" max="12" placeholder="Adhar No" /><span class="error" id="adhar_no"></span>
    
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="submit" value="Submit" >
    <%--input type="submit" name="submit" class="submit action-button" value="Submit" /> --%>
  </fieldset>
</form>
</div>
</div>
<!-- partial -->
<script>
function check_adhar(id) {
	   var txt = document.getElementById(id);
	   var reg = /^([0-9]{12})$/;

	   if (reg.test(txt.value) == true) {
	       txt.style.border = "2.2px solid darkgreen";
	       txt.style.borderRadius = "5px";
	       document.getElementById("adhar_no").innerHTML = "";
	   }
	   else {
	       txt.style.border = "2.2px solid red";
	       txt.style.borderRadius = "5px";
	       document.getElementById("adhar_no").innerHTML = "Invalid mobile number!";
	       return true;
	   }
	   return false;
	}
function check_mobp(id) {
	   var txt = document.getElementById(id);
	   var reg = /^([0-9]{10})$/;

	   if (reg.test(txt.value) == true) {
	       txt.style.border = "2.2px solid darkgreen";
	       txt.style.borderRadius = "5px";
	       document.getElementById("mob_nop").innerHTML = "";
	   }
	   else {
	       txt.style.border = "2.2px solid red";
	       txt.style.borderRadius = "5px";
	       document.getElementById("mob_nop").innerHTML = "Invalid mobile number!";
	       return true;
	   }
	   return false;
	}
function check_hostelid(id)
{ 
  var txt = document.getElementById(id);
   var numbers = /^([0-9]{1})$/;
   if (numbers.test(txt.value) == true) {
       txt.style.border = "2.2px solid darkgreen";
       txt.style.borderRadius = "5px";
       document.getElementById("room_no").innerHTML = "";
   }
   else {
       txt.style.border = "2.2px solid red";
       txt.style.borderRadius = "5px";
       document.getElementById("room_no").innerHTML = "Must have  one digit and NO character!"
       return true;
   }
}
function check_money(id)
{ 
  var txt = document.getElementById(id);
   var numbers = /^([0-9]{5})$/;
   if (numbers.test(txt.value) == true) {
       txt.style.border = "2.2px solid darkgreen";
       txt.style.borderRadius = "5px";
       document.getElementById("dep_id").innerHTML = "";
   }
   else {
       txt.style.border = "2.2px solid red";
       txt.style.borderRadius = "5px";
       document.getElementById("dep_id").innerHTML = "Must have  4 digit and NO character!"
       return true;
   }
}
function Check_mob(id) {
	   var txt = document.getElementById(id);
	   var reg = /^([0-9]{10})$/;

	   if (reg.test(txt.value) == true) {
	       txt.style.border = "2.2px solid darkgreen";
	       txt.style.borderRadius = "5px";
	       document.getElementById("mob_no1").innerHTML = "";
	   }
	   else {
	       txt.style.border = "2.2px solid red";
	       txt.style.borderRadius = "5px";
	       document.getElementById("mob_no1").innerHTML = "Invalid mobile number!";
	       return true;
	   }
	   return false;
	}

function gaurdian_name(id) {
	   var txt = document.getElementById(id);
	   var reg = /\W/;
	   if (txt.value == "") {
	       txt.style.border = "2.2px solid red";
	       txt.style.borderRadius = "5px";
	       document.getElementById("gaurd_id").innerHTML = "This field cannot be empty!";
	       return true;
	   }
	   else if(reg.test(txt.value) == true) {
	       txt.style.border = "2.2px solid darkgreen";
	       txt.style.borderRadius = "5px";
	       document.getElementById("gaurd_id").innerHTML = "";
	   }
	   else {
	       txt.style.border = "2.2px solid red";
	       txt.style.borderRadius = "5px";
	       document.getElementById("gaurd_id").innerHTML = "Gaurdian name must have alphabets only!";
	       return true;
	   }
	   return false;
	}
function check_yoj(id)
{ 
  var txt = document.getElementById(id);
   var numbers = /^([0-9]{1})$/;
   if (numbers.test(txt.value) == true) {
       txt.style.border = "2.2px solid darkgreen";
       txt.style.borderRadius = "5px";
       document.getElementById("year_join").innerHTML = "";
   }
   else {
       txt.style.border = "2.2px solid red";
       txt.style.borderRadius = "5px";
       document.getElementById("year_join").innerHTML = "Must have  1 digit and NO character!"
       return true;
   }
}
function check_roomno(id)
{ 
  var txt = document.getElementById(id);
   var numbers = /^([0-9]{3})$/;
   if (numbers.test(txt.value) == true) {
       txt.style.border = "2.2px solid darkgreen";
       txt.style.borderRadius = "5px";
       document.getElementById("hostel_id").innerHTML = "";
   }
   else {
       txt.style.border = "2.2px solid red";
       txt.style.borderRadius = "5px";
       document.getElementById("hostel_id").innerHTML = "Must have  three digit and NO character!"
       return true;
   }
}
function First_name(id) {
	   var txt = document.getElementById(id);
	   var reg = /\W/;
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
</script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="./script_addstud.js"></script>

</body>
</html>