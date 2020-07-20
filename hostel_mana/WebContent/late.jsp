<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Late form</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<link rel="stylesheet" href="./style_late_form.css">
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
</style>
</head>
<body>
<!-- partial:index.partial.html -->
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

    <form class="well form-horizontal" action="late " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Late Form</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Student_Id</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-qrcode"></i></span>
  <input  name="student_id" placeholder="Student Id Number" class="form-control"  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Student_Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="stud_name" placeholder="Student Name" class="form-control"  type="text">
    </div>
  </div>
</div>

    
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Date</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  <input  name="late_date" placeholder="date" class="form-control"  type="date">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Time</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  <input name="late_time" placeholder="In-Time" class="form-control"  type="time">
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" >Reason</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
  <input name="late_reason" placeholder="Reason for being late" class="form-control"  type="textarea">
    </div>
  </div>
</div>


<!-- Select Basic -->

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>



</fieldset>
</form>
</div>
</div>
    </div><!-- /.container -->
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/eonasdan-bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js'></script>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script  src="./js_late_form.js"></script>

</body>
</html>