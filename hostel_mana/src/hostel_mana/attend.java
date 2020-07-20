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
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class attend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In Attend");
		String[] s=request.getParameterValues("attendance");
		String list=Arrays.toString(s);
		String str=list.replaceAll(","," ").replace("["," ").replace("]"," ").replaceAll(" ","");
		 String str2=str.toUpperCase();
		 String to = "soham.kotalwar10@gmail.com";
	     String subject = "Application";
	     String message =  "Your Ward was Absent Today !";
	     String user ="acm6.pict@gmail.com";
	     String pass = "PascPune@2019";
	     
		System.out.println(str2);
	    int var=0;
		    String sql1="select student_id  From student ORDER BY student_id ASC;";
		    String query1="select * from leave2 where student_id =? and CURDATE() between start and end";
		    String sql="insert into  attendance values(?,?,?)";
		    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
		    String msg = " ";
		    int i=0;
		    int attend_id=0;
		    try 
		    {
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        
		        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
		        PreparedStatement st=conn.prepareStatement(sql1);
		        ResultSet rs=st.executeQuery(sql1);
		        while(rs.next())
		        {
		        PreparedStatement st2=conn.prepareStatement(sql);
		        int id=rs.getInt("student_id");
		        PreparedStatement st1=conn.prepareStatement(query1);
		    	st1.setInt(1, id);
	        	ResultSet rs1=st1.executeQuery();
		         if(!rs1.next())
		           i=st2.executeUpdate("insert into attendance values (" + id +",CURDATE(),'"+str2.charAt(var)+"')");  
		        if(i>0) 
		        {
		        	if(str2.charAt(var) == 'A') 
		        	 {
		        		SendMail.send(to,subject, message, user, pass);
		        		 System.out.println("HEY YASH");
		        		PrintWriter out = response.getWriter(); 
						out.println("Mail send successfully");
		        	 }
		        	  msg = "HELLO" + attend_id + "!Your attendance is SUCESSFULL";
		        }	
		        else 
		        {
		            msg = "HELLO" + attend_id + "!Your attendance is UNSUCESSFULL";
		           
		        }
		        
		        var++;
		      }
		        response.sendRedirect("attendance.jsp");
		        st.close();
		        System.out.println("test :" + msg);
		    } 
		    catch(ClassNotFoundException |SQLException e)
		    {
		    	e.printStackTrace();
		    } catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
