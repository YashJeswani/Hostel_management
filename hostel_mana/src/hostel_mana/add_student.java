package hostel_mana;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class add_student extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("test2");
//	    response.setContentType("text/html");
	    String sql="insert into student values(?,?,?,?,?,?,?,?,?,?,?)";
	    String sql1="insert into student_mobile values(?,?)";
	    String sql2="insert into gaurdian values(?,?,?,?)";
	    String msg = " ";
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String addr = request.getParameter("address");
	    String room_no = request.getParameter("roomno");
	    String year_join = request.getParameter("year");
	    String deposit = request.getParameter("deposit");
	    String phone_no = request.getParameter("phone");
	    String gaurd_name=request.getParameter("gaurd_name");
	    String gaurd_phone=request.getParameter("gaurd_phone");
	    String dob = request.getParameter("dob");
	    String adhar_no = request.getParameter("adharno");
	    String hostel_id = request.getParameter("h_id");
	    String registration_id = request.getParameter("reg_id");
	    
	    
	    try 
	    {
	    	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        boolean x=true;
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
	        PreparedStatement st=conn.prepareStatement(sql);
	        PreparedStatement st1=conn.prepareStatement(sql1); 
	        PreparedStatement st2=conn.prepareStatement(sql2);
	        int id=0;
	        int gaurd_id=0;
	        int i=0;
	        int j=0;
	        int k=0;
	        String str,str1;
	        int available;
	        String query_avail="select room_availability as ROOM_AVAIL from rooms where room_no="+Integer.parseInt(room_no)+" and hostel_id="+Integer.parseInt(hostel_id);
	        PreparedStatement stt=conn.prepareStatement(query_avail);
	        ResultSet rs1=stt.executeQuery(query_avail);
	        if(!rs1.first())
	        {
	    	        String query="select max(student_id) as STUD_ID from student";
	    	        String query1="select max(gaurdian_id) as GAURD_ID from gaurdian";
	    	        PreparedStatement stt1=conn.prepareStatement(query);
	    	        ResultSet rs=stt1.executeQuery(query);
	    	        PreparedStatement stt2=conn.prepareStatement(query1);
	    	        ResultSet rs2=stt2.executeQuery(query1);
	    	        if(rs.first())
	    	        {
	    	        	System.out.println("test3");
	    	        	str=rs.getString("STUD_ID");
	    	        	System.out.println(str);
	    	        	if(str==null)
	    	        	{
	    	        		System.out.println("test5");
	    	        		id=1;
	    	        	}
	    	        	else
	    	        	{
	    	        		id=Integer.parseInt(str);
	    	        		id=id+1;
	    	        	}
	    	        	System.out.println("test4");
	    	        }
	    	        
	    	        System.out.println(id);
	    	        System.out.println(dob);
	    	        System.out.println(simpleDateFormat.parse(dob));
	    	        i=st.executeUpdate("insert into student values (" +id+ ",'" + name + "','" + addr + "','"+adhar_no+"','"+email+"',"+Integer.parseInt(room_no)+","+Integer.parseInt(hostel_id)+",'"+registration_id+"',"+Integer.parseInt(year_join)+",'"+dob+"',"+Integer.parseInt(deposit)+")");
	    	        j=st1.executeUpdate("insert into student_mobile values("+id+",'"+phone_no+"')");
	    	        if(rs2.first())
	    	        {
	    	        	System.out.println("test3");
	    	        	str1=rs2.getString("GAURD_ID");
	    	        	System.out.println(str1);
	    	        	if(str1==null)
	    	        	{
	    	        		System.out.println("test5");
	    	        		gaurd_id=1;
	    	        	}
	    	        	else
	    	        	{
	    	        		gaurd_id=Integer.parseInt(str1);
	    	        		gaurd_id=gaurd_id+1;
	    	        	}
	    	        	System.out.println("test4");
	    	        }
	    	        k=st2.executeUpdate("insert into gaurdian values("+gaurd_id+",'"+gaurd_name+"',"+id+",'"+gaurd_phone+"')");
	        	}
	        	else 
	        	{
	        		String str2=rs1.getString("ROOM_AVAIL");
		        	System.out.println("String is:"+str2);
	        	available=Integer.parseInt(str2);
	        	if(available<=0)
	        	{
	        		x=false;
	        	}
	        	else
	        	{
	        		 String query="select max(student_id) as STUD_ID from student";
		    	        String query1="select max(gaurdian_id) as GAURD_ID from gaurdian";
		    	        PreparedStatement stt1=conn.prepareStatement(query);
		    	        ResultSet rs=stt1.executeQuery(query);
		    	        PreparedStatement stt2=conn.prepareStatement(query1);
		    	        ResultSet rs2=stt2.executeQuery(query1);
		    	        if(rs.first())
		    	        {
		    	        	System.out.println("test3");
		    	        	str=rs.getString("STUD_ID");
		    	        	System.out.println(str);
		    	        	if(str==null)
		    	        	{
		    	        		System.out.println("test5");
		    	        		id=1;
		    	        	}
		    	        	else
		    	        	{
		    	        		id=Integer.parseInt(str);
		    	        		id=id+1;
		    	        	}
		    	        	System.out.println("test4");
		    	        }
		    	        
		    	        System.out.println(id);
		    	        System.out.println(dob);
		    	        System.out.println(simpleDateFormat.parse(dob));
		    	        i=st.executeUpdate("insert into student values (" +id+ ",'" + name + "','" + addr + "','"+adhar_no+"','"+email+"',"+Integer.parseInt(room_no)+","+Integer.parseInt(hostel_id)+",'"+registration_id+"',"+Integer.parseInt(year_join)+",'"+dob+"',"+Integer.parseInt(deposit)+")");
		    	        j=st1.executeUpdate("insert into student_mobile values("+id+",'"+phone_no+"')");
		    	        if(rs2.first())
		    	        {
		    	        	System.out.println("test3");
		    	        	str1=rs2.getString("GAURD_ID");
		    	        	System.out.println(str1);
		    	        	if(str1==null)
		    	        	{
		    	        		System.out.println("test5");
		    	        		gaurd_id=1;
		    	        	}
		    	        	else
		    	        	{
		    	        		gaurd_id=Integer.parseInt(str1);
		    	        		gaurd_id=gaurd_id+1;
		    	        	}
		    	        	System.out.println("test4");
		    	        }
		    	        k=st2.executeUpdate("insert into gaurdian values("+gaurd_id+",'"+gaurd_name+"',"+id+",'"+gaurd_phone+"')");
			        	}
	        			
	        }
	        System.out.println(x);
	        if(i>0 && j>0 && k>0 &&  x!=false) 
	        {
	        	  msg = "HELLO" + name + "!Your Signup is SUCESSFULL";
	        	  response.sendRedirect("add_stud.jsp");
	      
	        }	
	        else 
	        {
	            msg = "HELLO" + name + "!Your Signup is UNSUCESSFULL";
	            response.sendRedirect("popup.jsp");
	        }
	        st.close();
	        System.out.println("test :" + msg);
	        PrintWriter out = response.getWriter();
	    } 
	    catch(ClassNotFoundException |SQLException e)
	    {
	    	e.printStackTrace();
	    } catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
