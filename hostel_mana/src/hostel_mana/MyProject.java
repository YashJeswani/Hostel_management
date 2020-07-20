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

public class MyProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 System.out.println("test2");
//		    response.setContentType("text/html");
		    String sql="insert into  login_singup values(?,?,?)";
		    String msg = " ";
		    String username = request.getParameter("uname");
		    String password = request.getParameter("pwd");
		    String email = request.getParameter("email");
		    
		    try 
		    {
		        Class.forName("com.mysql.cj.jdbc.Driver");

		        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
		        PreparedStatement st=conn.prepareStatement(sql);
		        int i=st.executeUpdate("insert into login_signup values ('" + username + "','" + email + "','" + password + "')");  
		        if(i>0) 
		        {
		        	  msg = "HELLO" + username + "!Your Signup is SUCESSFULL";
		        	response.sendRedirect("login.jsp");
		      
		        }	
		        else 
		        {
		            msg = "HELLO" + username + "!Your Signup is UNSUCESSFULL";
		            response.sendRedirect("login.jsp");
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
