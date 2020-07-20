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

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>View Rooms</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width">

<section style="height:40px;">&nbsp;</section>

<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="./style_vrom.css">
</head>
<body>

<section>
    <div class="container">
      <h1>1'st Floor</h1>
        <div class="row">
            <div class="col-sm-6 col-lg-4">
                          <!-- Card Flip -->
                          <div class="card-flip">
                              <div class="flip">
                                  <div class="front">
                                      <!-- front content -->
                                      <div class="card">
                                        <img class="card-img-top" src="4.jpg" alt="100%x180" style="height: 180px; width: 100%; display: block;" data-holder-rendered="true">
                                        <div class="card-block">
                                            <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room101" value="Room No-101"></c:set>
											<c:out value="${room101}">no name</c:out>
											</div>
                                          <ul class="card-text" class="list-styled">
                                                  <li>Capacity: 3 </li>
                                                  <li>type : Un-Furnished</li>
                                              </ul>
                                        </div>
                                      </div>
                                  </div>
                                  <div class="back">
                                      <!-- back content -->
                                      <div class="card">
                                        <div class="card-block">
                                          <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room101" value="Room No-101"></c:set>
											<c:out value="${room101}">no name</c:out>
											</div>
                                          <h6 class="card-subtitle text-muted">Friends And Masti</h6>
                                        </div>
                                        <img src="101.jpg" alt="Image [100%x180]" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
                                        <div class="card-block">
                                            <ul class="card-text" class="list-styled">
                                            <%
										     System.out.println("testppppppppppp");
											String sql1="select room_availability  as ROOM_AVAIL from rooms where room_no=101";
											String sql="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=101 ";
											
											try
											{
												Class.forName("com.mysql.cj.jdbc.Driver");
											    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
											    PreparedStatement st=conn.prepareStatement(sql);
											    PreparedStatement stt=conn.prepareStatement(sql1);
											    ResultSet rs1=st.executeQuery();
											    ResultSet rs = stt.executeQuery();
											    if(rs.next())
											    {
											    	%>
											    <h3>Availablity:<%=rs.getInt("ROOM_AVAIL") %></h3>
											    
											    <% 
											    }
											    else
											    {
									
											    %>
											    	
											    	<h3>Availablity:3</h3>
											    <% 
											    }
											    while (rs1.next()) 
											    {   
											    %>
											  	 <li><%=rs1.getString("STUD_NAME") %></li>
											  	 <% 
											    }
											    rs.close();
												rs1.close();
												st.close();
												stt.close();
											}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											catch(ClassNotFoundException e)
											{
												e.printStackTrace();
											}
											
										%>
                                            </ul>                                          
                                            <a href="#" class="card-link">ADD STUDENT</a>
                                        </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Card Flip -->
            </div>
            <div class="col-sm-6 col-lg-4">
                        <!-- Card Flip -->
                        <div class="card-flip">
                            <div class="flip">
                                <div class="front">
                                    <!-- front content -->
                                    <div class="card">
                                      <img class="card-img-top" src="5.jpg" alt="100%x180" style="height: 180px; width: 100%; display: block;" data-holder-rendered="true">
                                      <div class="card-block">
                                           <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room102" value="Room No-102"></c:set>
											<c:out value="${room102}">no name</c:out>
											</div>
                                          <ul class="card-text" class="list-styled">
                                            
                                                  <li>Capacity: 3 </li>
                                                  <li>type : Un-Furnished</li>
                                              </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="back">
                                    <!-- back content -->
                                    <div class="card">
                                      <div class="card-block">
                                       <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room102" value="Room No-102"></c:set>
											<c:out value="${room102}">no name</c:out>
											</div>
                                        <h6 class="card-subtitle text-muted">Aabra ka Dabra</h6>
                                      </div>
                                      <img src="102.jpg" alt="Image [100%x180]" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
                                      <div class="card-block">
                                          <ul class="card-text" class="list-styled">
                                          <%
										     System.out.println("testppppppppppp");
											String sql2="select room_availability  as ROOM_AVAIL from rooms where room_no=102";
											String sql3="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=102 ";
											
											try
											{
												Class.forName("com.mysql.cj.jdbc.Driver");
											    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
											    PreparedStatement st=conn.prepareStatement(sql2);
											    PreparedStatement stt=conn.prepareStatement(sql3);
											    ResultSet rs=st.executeQuery();
											    ResultSet rs1= stt.executeQuery();
											   
											    if(rs.next())
											    {
											    	System.out.println("in avail");
											    	%>
											    <h3>Availability:<%=rs.getInt("ROOM_AVAIL") %></h3>
											    
											    <% 
											    }
											    else
											    {
									
											    	%>
											    	
											    	<h3>Availablity:3</h3>
											    	<% 
											    }
											    System.out.println(" avail");
											    while (rs1.next()) 
											    {   
											    %>
											  	 <li><%=rs1.getString("STUD_NAME") %></li>
											  	 <% 
											    }
											    rs.close();
												rs1.close();
												st.close();
												stt.close();
											}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											catch(ClassNotFoundException e)
											{
												e.printStackTrace();
											}
											
										%>
                                          </ul>                                         <a href="#" class="card-link">ADD STUDENT</a>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Card Flip -->
            </div>
            <div class="col-sm-6 col-lg-4">
                <!-- Card Flip -->
                <div class="card-flip">
                    <div class="flip">
                        <div class="front">
                            <!-- front content -->
                            <div class="card">
                              <img class="card-img-top" src="6.jpg" alt="100%x180" style="height: 180px; width: 100%; display: block;" data-holder-rendered="true">
                              <div class="card-block">
                                  <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room103" value="Room No-103"></c:set>
											<c:out value="${room103}">no name</c:out>
											</div>

                                  <ul class="card-text" class="list-styled">
                                          <li>Capacity: 3 </li>
                                          <li>type : Un-Furnished</li>
                                      </ul>
                                </div>
                            </div>
                        </div>
                        <div class="back">
                            <!-- back content -->
                            <div class="card">
                              <div class="card-block">
                              <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room103" value="Room No-103"></c:set>
											<c:out value="${room103}">no name</c:out>
											</div>
                                <h6 class="card-subtitle text-muted">#Bruh!!!!!!!!</h6>
                              </div>
                              <img src="103.jpg" alt="Image [100%x180]" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
                              <div class="card-block">
                                  <ul class="card-text" class="list-styled">
                                  
                                      <%
										     System.out.println("testppppppppppp");
											String sql4="select room_availability  as ROOM_AVAIL from rooms where room_no=103";
											String sql5="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=103 ";
											
											try
											{
												Class.forName("com.mysql.cj.jdbc.Driver");
											    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
											    PreparedStatement st=conn.prepareStatement(sql4);
											    PreparedStatement stt=conn.prepareStatement(sql5);
											    ResultSet rs=st.executeQuery();
											    ResultSet rs1= stt.executeQuery();
											   
											    if(rs.next())
											    {
											    	System.out.println("in avail");
											    	%>
											    <h3>Availability:<%=rs.getInt("ROOM_AVAIL") %></h3>
											    
											    <% 
											    }
											    else
											    {
									
											    	%>
											    	
											    	<h3>Availablity:3</h3>
											    	<% 
											    }
											    System.out.println(" avail");
											    while (rs1.next()) 
											    {   
											    %>
											  	 <li><%=rs1.getString("STUD_NAME") %></li>
											  	 <% 
											    }
											    rs.close();
												rs1.close();
												st.close();
												stt.close();
											}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											catch(ClassNotFoundException e)
											{
												e.printStackTrace();
											}
											
										%>
                                  </ul>                                 
                                  <a href="#" class="card-link">ADD STUDENT</a>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Card Flip -->
    </div>
            <h1>2'nd Floor</h1>
            <div class="row">
              <div class="col-sm-6 col-lg-4">
                            <!-- Card Flip -->
                            <div class="card-flip">
                                <div class="flip">
                                    <div class="front">
                                        <!-- front content -->
                                        <div class="card">
                                          <img class="card-img-top" src="7.jpg" alt="100%x180" style="height: 180px; width: 100%; display: block;" data-holder-rendered="true">
                                          <div class="card-block">
                                              <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room201" value="Room No-201"></c:set>
											<c:out value="${room201}">no name</c:out>
											</div>
    
                                              <ul class="card-text" class="list-styled">
                                                      <li>Capacity: 3 </li>
                                                      <li>type : Furnished</li>
                                                  </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="back">
                                        <!-- back content -->
                                        <div class="card">
                                          <div class="card-block">
                                              <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room202" value="Room No-201"></c:set>
											<c:out value="${room201}">no name</c:out>
											</div>
                                            <h6 class="card-subtitle text-muted">Friends And Masti</h6>
                                          </div>
                                          <img src="101.jpg"  alt="Image [100%x180]" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
                                          <div class="card-block">
                                              <ul class="card-text" class="list-styled">
                                              <%
										     System.out.println("testppppppppppp");
											String sql6="select room_availability  as ROOM_AVAIL from rooms where room_no=201";
											String sql7="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=201 ";
											
											try
											{
												Class.forName("com.mysql.cj.jdbc.Driver");
											    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
											    PreparedStatement st=conn.prepareStatement(sql6);
											    PreparedStatement stt=conn.prepareStatement(sql7);
											    ResultSet rs=st.executeQuery();
											    ResultSet rs1= stt.executeQuery();
											   
											    if(rs.next())
											    {
											    	System.out.println("in avail");
											    	%>
											    <h3>Availability:<%=rs.getInt("ROOM_AVAIL") %></h3>
											    
											    <% 
											    }
											    else
											    {
									
											    	%>
											    	
											    	<h3>Availablity:3</h3>
											    	<% 
											    }
											    
											    System.out.println(" avail");
											    while (rs1.next()) 
											    {   
											    %>
											  	 <li><%=rs1.getString("STUD_NAME") %></li>
											  	 <% 
											    }
											    rs.close();
												rs1.close();
												st.close();
												stt.close();
											}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											catch(ClassNotFoundException e)
											{
												e.printStackTrace();
											}
											
										%>   
                                          
                                              </ul>                                             <a href="#" class="card-link">ADD STUDENT</a>
                                           
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Card Flip -->
              </div>
              <div class="col-sm-6 col-lg-4">
                          <!-- Card Flip -->
                          <div class="card-flip">
                              <div class="flip">
                                  <div class="front">
                                      <!-- front content -->
                                      <div class="card">
                                        <img class="card-img-top" src="8.jpg"" alt="100%x180" style="height: 180px; width: 100%; display: block;" data-holder-rendered="true">
                                        <div class="card-block">
                                               <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room202" value="Room No-202"></c:set>
											<c:out value="${room202}">no name</c:out>
											</div>
                                            <ul class="card-text" class="list-styled">
                                                    <li>Capacity: 3 </li>
                                                    <li>type : Furnished</li>
                                                </ul>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="back">
                                      <!-- back content -->
                                      <div class="card">
                                        <div class="card-block">
                                             <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room202" value="Room No-202"></c:set>
											<c:out value="${room202}">no name</c:out>
											</div>
                                          <h6 class="card-subtitle text-muted">Aabtra ka dabra</h6>
                                        </div>
                                        <img src="102.jpg"  alt="Image [100%x180]" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
                                        <div class="card-block">
                                            <ul class="card-text" class="list-styled">
                                                <%
										     System.out.println("testppppppppppp");
											String sql8="select room_availability  as ROOM_AVAIL from rooms where room_no=202";
											String sql9="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=202 ";
											
											try
											{
												Class.forName("com.mysql.cj.jdbc.Driver");
											    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
											    PreparedStatement st=conn.prepareStatement(sql8);
											    PreparedStatement stt=conn.prepareStatement(sql9);
											    ResultSet rs=st.executeQuery();
											    ResultSet rs1= stt.executeQuery();
											   
											    if(rs.next())
											    {
											    	System.out.println("in avail");
											    	%>
											    <h3>Availability:<%=rs.getInt("ROOM_AVAIL") %></h3>
											    
											    <% 
											    }
											    else
											    {
									
											    	%>
											    	
											    	<h3>Availablity:3</h3>
											    	<% 
											    }
											    System.out.println(" avail");
											    while (rs1.next()) 
											    {   
											    %>
											  	 <li><%=rs1.getString("STUD_NAME") %></li>
											  	 <% 
											    }
											    rs.close();
												rs1.close();
												st.close();
												stt.close();
											}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											catch(ClassNotFoundException e)
											{
												e.printStackTrace();
											}
											
										%>
                                            </ul>                                           <a href="#" class="card-link">ADD STUDENT</a>
                                        </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Card Flip -->
              </div>
              <div class="col-sm-6 col-lg-4">
                        <!-- Card Flip -->
                        <div class="card-flip">
                            <div class="flip">
                                <div class="front">
                                    <!-- front content -->
                                    <div class="card">
                                      <img class="card-img-top" src="9.jpg" alt="100%x180" style="height: 180px; width: 100%; display: block;" data-holder-rendered="true">
                                      <div class="card-block">
                                            <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room203" value="Room No-203"></c:set>
											<c:out value="${room203}">no name</c:out>
											</div>

                                          <ul class="card-text" class="list-styled">
                                                  <li>Capacity: 3 </li>
                                                  <li>type : Furnished</li>
                                              </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="back">
                                    <!-- back content -->
                                    <div class="card">
                                      <div class="card-block">
                                       <div class="card-title" style="font-size:25px !important; ">
                                            <c:set var="room203" value="Room No-203"></c:set>
											<c:out value="${room203}">no name</c:out>
											</div>
                                        <h6 class="card-subtitle text-muted">Bruhh!!!!!</h6>
                                      </div>
                                      <img src="103.jpg"  alt="Image [100%x180]" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
                                      <div class="card-block">
                                          <ul class="card-text" class="list-styled">
                                              <%
										     System.out.println("testppppppppppp");
											String sql10="select room_availability  as ROOM_AVAIL from rooms where room_no=203";
											String sql11="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=203 ";
											
											try
											{
												Class.forName("com.mysql.cj.jdbc.Driver");
											    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
											    PreparedStatement st=conn.prepareStatement(sql10);
											    PreparedStatement stt=conn.prepareStatement(sql11);
											    ResultSet rs=st.executeQuery();
											    ResultSet rs1= stt.executeQuery();
											    
											    if(rs.next())
											    {
											    	System.out.println("in avail");
											    	%>
											    <h3>Availability:<%=rs.getInt("ROOM_AVAIL") %></h3>
											    
											    <% 
											    }
											    else
											    {
									
											    	%>
											    	
											    	<h3>Availablity:3</h3>
											    	<% 
											    }
											    System.out.println(" avail");
											    while (rs1.next()) 
											    {   
											    %>
											  	 <li><%=rs1.getString("STUD_NAME") %></li>
											  	 <% 
											    }
											    rs.close();
												rs1.close();
												st.close();
												stt.close();
											}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											catch(ClassNotFoundException e)
											{
												e.printStackTrace();
											}
											
										%>
                                          </ul>                                         <a href="#" class="card-link">ADD STUDENT</a>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Card Flip -->
                  </div>
        </div>
    </div>
</section>
<%--
int arr[];
arr=new int[6];
arr[0]=Integer.parseInt(((String)pageContext.getAttribute("room101")).substring(8,11));
arr[1]=Integer.parseInt(((String)pageContext.getAttribute("room102")).substring(8,11));
arr[2]=Integer.parseInt(((String)pageContext.getAttribute("room103")).substring(8,11));
arr[3]=Integer.parseInt(((String)pageContext.getAttribute("room201")).substring(8,11));
arr[4]=Integer.parseInt(((String)pageContext.getAttribute("room202")).substring(8,11));
arr[5]=Integer.parseInt(((String)pageContext.getAttribute("room203")).substring(8,11));
System.out.println("testppppppppppp");
for(int i=0;i<6;i++)
{
	int j=0;
	String sql1="select room_availability  from rooms where room_no=?";
	int count_avaialable=0;
	String sql="select student_name as STUD_NAME  from rooms,student where student.room_no=rooms.room_no and rooms.room_no=? ";
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash123");  
	    PreparedStatement st=conn.prepareStatement(sql);
	    PreparedStatement stt=conn.prepareStatement(sql1);
	    stt.setInt(1,arr[i]);
	    st.setInt(1,arr[i]);
	    
	    ResultSet rs1=st.executeQuery();
	    ArrayList<String> arrayList = new ArrayList<String>(); 
	    while (rs1.next()) 
	    {           
	    			System.out.println("testppppppppppp1");
	                arrayList.add(rs1.getString("STUD_NAME"));
	    }
	    
	    ResultSet rs = stt.executeQuery();
	    if(rs.next())
	    {
	    	count_avaialable=rs.getInt(1);
	    }
	    System.out.println(count_avaialable);
	    for(int k=0;k<arrayList.size();k++)
	    {
	    	System.out.println(arrayList.get(k));
	    }
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	catch(ClassNotFoundException e)
	{
		e.printStackTrace();
	}
}
--%>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.4/holder.min.js'></script>
<script  src="./script_vroom.js"></script>

</body>
</html>