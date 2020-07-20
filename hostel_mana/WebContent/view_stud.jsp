 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import ="java.sql.DriverManager"%>
<%@ page  import="java.sql.PreparedStatement "%>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import="hostel_mana.User" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>View Student</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<link rel="stylesheet" href="./view_stud_style.css">
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
							<a href="attendance.jsp"><i class="fa fa-fw fa-bank"></i>Marking Attendance</a>
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
		<h1>VIEW STUDENT !</h1>
		<div class="flexsearch--wrapper">
			<form class="flexsearch--form" action="view_student" method="post">
				<div class="flexsearch--input-wrapper">
					<input class="flexsearch--input" type="search" name="search" placeholder="Registration ID">
				</div>
				<input class="flexsearch--submit" type="submit" value="&#10140;"/>
			</form>
		</div>
		<%
			if(session.getAttribute("user")!=null){
			User obj=(User) session.getAttribute("user");
			System.out.print("=="+obj.getstud_id());
			session.setAttribute("stud_id",obj.getstud_id());
			
			%>
		<div class="card">
		    <h3>STUDENT DETAILES</h3>
		    <br>
		    <form action="update_student" method="post">
		    <label for="Registration Id">Registration ID: </label>
            <input class="form-styling"  disabled=" " type="text" name="reg_id" placeholder="Registration ID" value="${user.getreg_id()}" required/>
            &nbsp &nbsp 
            <label for="name">Name: </label>
            <input class="form-styling" type="name" name="name" placeholder="Name" value="${user.getname()}" required/>
			 <br>
			   <br>
			 <label for="roomid">Room ID: </label>
            <input class="form-styling"  type="room_id" name="room_id" placeholder="Room No" value="${user.getroom_id()}"required/>
			 &nbsp &nbsp 
			 <label for="email">Email: </label>
            <input class="form-styling" type="email" name="email" placeholder="Email" value="${user.getemail()}" required/>
			 <br>
			   <br>
			 <label for="phone_no">Phone no: </label>
            <input class="form-styling" type="name" name="phone" placeholder="Phone NO" value="${user.getphone()}" required/>
			 <br>
			 <br>
			 <h3>Gaurdian DETAILES</h3>
			 <br>
			  <label for="gname">Gaurdian Name: </label>
            <input class="form-styling" type="gaurdian_name" name="gaurdian_name" placeholder="Gaurdian Name" value="${user.getgaurdian_name()}" required/>
			  &nbsp &nbsp
			  <label for="gphone_no">Gaurdian Phone no: </label>
            <input class="form-styling" type="gaurdian_phone" name="gaurdian_phone" placeholder="Gaurdian Phone NO" value="${user.getgaurdian_phone()}" required/>
			<br> 
			  <br>
			 <label for="payment">Payment: </label>
            <input class="form-styling" type="paytm_status" name="payment_Status" placeholder="Payment Status" value="${user.getstatus()}" required/>
			<br>
			<%
			 System.out.println("HHHHH");
			System.out.print("==2"+obj.getname());
			%>
			
			<button class="btn btn-danger toggle">Update Student</button>
			</form>
			<form action="delete_student" method="post">
			<button class="btn btn-danger toggle">Delete Student</button>
			</form>
			
		</div>
		<%}
		 getServletContext();
		%>
	</div>
	</div>
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src='http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.14/angular.min.js'></script>
		<script>
			$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();      
    });

    function hamburger_cross() {

      if (isClosed == true) {          
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {   
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }
  
  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });  
});

</script>
</body>
</html>