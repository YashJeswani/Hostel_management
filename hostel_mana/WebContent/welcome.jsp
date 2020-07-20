<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css''>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Dancing+Script:700' rel='stylesheet' type='text/css''>
<link rel="stylesheet" href="style_home.css">
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
.pic
{
  box-shadow: 6px 6px 7px #888888;
  width:300px;
  height:300px;
  position: relative;
  overflow: hidden;
  margin-top:160px;
  margin-left:135px;
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}
.pic:before
{
  content: '';
  margin-top:-63px;
  margin-left:-80px;
  position: absolute;
  width: 450px;
  height: 450px;
  background: url('./img/hostel.jpg') center center;
  -ms-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
}

.pic:hover , .box1:hover , .box2:hover , .social1:hover , .social2:hover , .social3:hover 
{
  box-shadow: 3px 3px 7px #888888;
  cursor:pointer;
}

.box1
{
  box-shadow: 6px 6px 7px #888888;
  width:100px;
  height:100px;
  position: relative;
  overflow: hidden;
  margin-top:-124px;
  margin-left:16px;
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}
.box1:before
{
  content: '';
  margin-top:-25px;
  margin-left:-31px;
  position: absolute;
  width: 200px;
  height: 200px;
  background: url('http://creek.themebucket.net/wp-content/uploads/2015/09/8.jpg') center center;
  -ms-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
}

.box2
{
  box-shadow: 6px 6px 7px #888888;
  position: relative;
  overflow: hidden;
  width:234px;
  height:99px;
  margin-top:-54px;
  margin-left:18px;
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}
.box2:before
{
  
  content: '';
  margin-top:-74px;
  margin-left:-31px;
  position: absolute;
  width: 300px;
  height: 300px;
  background: url('http://i-cdn.phonearena.com/images/articles/220901-image/Here-is-how-the-start-screen-of-Google-Maps-looks-like.jpg') center center;
  -ms-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
}

.social1
{
  box-shadow: 6px 6px 7px #888888;
  width:125px;
  height:125px;
  background-color:#3b5998;
  margin-top: -37px;
margin-left: 325px;
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}

.social1 > i
{
  font-size:60px;
  margin-top:43px;
  margin-left:45px;
  -ms-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  color:#ffffff;
}

.social2
{
  box-shadow: 6px 6px 7px #888888;
  width:125px;
  height:125px;
  background-color:#C73B6F;
  margin-top: -235px;

margin-left: 440px;
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}
.social2 > i
{
  font-size:60px;
  margin-top:43px;
  margin-left:45px;
  -ms-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  color:#ffffff;
}
.content
{
  height:100%;
  width:500px;
}

p
{
  font-family: 'Open Sans Condensed', sans-serif;
  margin-left: 100px;
  width:550px;
  font-size:25px;
}

h2
{
  font-family: 'Dancing Script', cursive;
}

.contentHead
{
  font-family: 'Open Sans Condensed', sans-serif;
  font-size:60px;
  font-weight:500;
  text-decoration:underline;
  margin-top:100px;
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
		                <div class="w3-dropdown-hover">
					    <button class="w3-button">Dropdown
					      <i class="fa fa-caret-down"></i>
					    </button>
					    <div class="w3-dropdown-content w3-bar-block">
					      <a href="payment.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-bank"></i> Add PAY DETAILS</a>
					      <a href="view_payment.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-bank"></i>VIEW PAY Details</a>
					    </div>
					  </div> 
                    <!-- <a href="view_stud.jsp"><i class="fa fa-fw fa-file-o"></i> View Student</a>
 -->              </li>
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
                <div class="row">
                    <div class="containers col-lg-6 col-md-6">
                      
                      <div class="pic"></div>
                      <div class="box2"></div>
                      
                      <div class="social1">
                        <i class="fa fa-facebook" aria-hidden="true"></i> 
                      </div>
                      <div class="social2">
                      <i class="fa fa-dribbble" aria-hidden="true"></i>
                      </div>
                    </div>
                    
                    <div class="content col-md-offset-6 col-lg-offset-6">
                      <center><h1 class="contentHead">PICT HOSTEL</h1></center>
                      
                     <p align="justify" >An Engineering college established in 1983, Pune Institute of Computer Technology (PICT) has been one of the leading institutes in Information Technology education and research. PICT is focused on creating versatile engineers who can apply their knowledge and skills anywhere in the world. The college is well known as a reputed institute for UG and PG programmes in Computer Engineering, Information Technology and Electronics & Telecommunication Engineering (PG-E&TC Microwave Engineering). The college also runs Ph.D Programmes in Computer Engineering, and Electronics and Telecommunication Engineering.</p>
                      </h2>
                    </div>
                    </div>
        </div>

    </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script  src="script_home.js"></script>

</body>
</html>