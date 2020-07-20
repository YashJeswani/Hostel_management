<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import ="java.sql.DriverManager"%>
<%@ page  import="java.sql.PreparedStatement "%>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.text.*" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>VIEW PAYMENT DETAILS</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="./style_attendance.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>
input[type="date"].form-control, input[type="time"].form-control, input[type="datetime-local"].form-control, input[type="month"].form-control {

    line-height: px;
    height: 60px;

}
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
.form-control {
    display: block;
    width: 25%;
    padding: 0.375rem 0.75rem;
    font-size: 2rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.btn-primary {
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
    margin-left: 550px;
    margin-top: 20px;
    margin-bottom: 40px;
}
.row {

margin-right: -15px;
margin-left: 600px;
width: 600px;
margin-top: 50px;

}
h2{
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 40px;
	color:#27AE60;
	margin-top: 20px;
	text-align: center;
}</style>
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
            <h2> PAYMENT DETAILS :</h2>
            <br>
              
                   <table class="table table-striped">
                  <thead class='thead-dark'>
                    <tr>
                      <th scope="col">Student_id</th>
                      <th scope="col">Payment Date</th>
                      <th scope="col">Amount</th>
                      <th scope="col">Payment Status</th>
                    </tr>
                  </thead>
                  <tbody>
                  <%
                  	String query="select * from payment";
                    
            		try
            		{
            			
            			Class.forName("com.mysql.cj.jdbc.Driver");
            	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
            	        PreparedStatement st=conn.prepareStatement(query);
            	        ResultSet rs=st.executeQuery();
            	        
            	        
            	        
            	        while(rs.next())
            	        {
            	        	 %>
            	        	 <tr>
	            	        	  <td><%=rs.getInt(2)%></td>
			                      <td><%=rs.getString(3)%></td>
			                      <td><%=rs.getInt(4)%></td>
			                      <td><%=rs.getString(5)%></td>
                             </tr> 
                          <% 
            	        	
            	        }
            	      
            		}
            		catch(ClassNotFoundException |SQLException e)
            	    {
            	    	e.printStackTrace();
            	    } catch (NumberFormatException e) {
            			// TODO Auto-generated catch block
            			e.printStackTrace();
            		}
                  %>
                    
                  </tbody>
                </table> 
              </div>
    </div>

<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script  src="./script.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script  src="./script_attendance.js"></script>
<script></script>
</body>
</html>