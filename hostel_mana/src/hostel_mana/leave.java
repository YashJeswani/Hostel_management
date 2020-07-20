package hostel_mana;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class leave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 System.out.println("test2");
//		    response.setContentType("text/html");
		    String sql="insert into  leave values(?,?,?,?)";
		    String msg = " ";
		    String student_id = request.getParameter("student_id");
		    String start = request.getParameter("start_date");
		    String end = request.getParameter("end_date"); 
		    try 
		    {
		    	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        boolean x=true;
		        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
		        PreparedStatement st=conn.prepareStatement(sql);
		        int id=0;
		        int i=0;
		        String str;
		    	String query="select max(leave_id) as LEAVE_ID from leave2";
		    	PreparedStatement stt1=conn.prepareStatement(query);
		    	ResultSet rs=stt1.executeQuery(query);
		    	if(rs.first())
		    	{
		    		System.out.println("test3");
		    	    str=rs.getString("LEAVE_ID");
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
		    	System.out.println("hi");
		    	i=st.executeUpdate("insert into leave2 values (" +id+ "," + Integer.parseInt(student_id) + ",'" + start + "','"+end+"')");
		    	System.out.println("hi");
		        if(i>0) 
		        {
		        	  msg = "HELLO" +student_id+ "!Your Signup is SUCESSFULL";
		        	  response.sendRedirect("leave.jsp");
		      
		        }	
		        else 
		        {
		            msg = "HELLO" + student_id + "!Your Signup is UNSUCESSFULL";
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
