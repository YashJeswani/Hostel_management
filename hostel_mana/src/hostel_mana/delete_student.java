package hostel_mana;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class delete_student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test1");
//	    response.setContentType("text/html");
	    String sql="delete from student where student_id=?";
	    String msg = " ";
	    HttpSession session =request.getSession();
	    System.out.println(session.getAttribute("stud_id"));
	    System.out.print("BYE");
	    int stud_id = (int) session.getAttribute("stud_id"); 
	    System.out.println(stud_id);
	    try 
	    {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
	        PreparedStatement st=conn.prepareStatement(sql);
	        st.setInt(1,stud_id);
	        System.out.print(st);
	        int i=st.executeUpdate();
	       
	        if (i>0) 
	        {
	        	
	            msg = "HELLO" + stud_id + "! Your delete is SUCESSFULL";
	            session.invalidate();
	            request.getRequestDispatcher("vroom.jsp").include(request, response); 
	        } 
	        else 
	        {
	            msg = "HELLO" +  stud_id + "!Your delete is UNSUCESSFULL";
	            request.getRequestDispatcher("welcome.jsp").include(request, response); 
	        }
	        st.close();
	        System.out.println("test :" + msg);
	        PrintWriter out = response.getWriter();
	    } 
	    catch(ClassNotFoundException |SQLException e)
	    {
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
