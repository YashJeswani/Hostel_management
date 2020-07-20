package hostel_mana;


import javax.servlet.http.HttpServlet;
import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyProvider extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
	    System.out.println("test1");
//	    response.setContentType("text/html");
	    String sql="select * from login_signup where email_id=? and login_pass=?";
	    String msg = " ";
	    String username = request.getParameter("email");
	    String password = request.getParameter("pwd");
	    try 
	    {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
	        PreparedStatement st=conn.prepareStatement(sql);
	        st.setString(1,username);
	        st.setString(2, password);
	        ResultSet rs = st.executeQuery();
	        if (rs.next()) 
	        {
	            msg = "HELLO" + username + "! Your login is SUCESSFULL";
	            HttpSession session=request.getSession();  
	            session.setAttribute("Username",username); 
	            response.sendRedirect("welcome.jsp");

	        } 
	        else 
	        {
	            msg = "HELLO" + username + "!Your login is UNSUCESSFULL";
	            request.getRequestDispatcher("login.jsp").include(request, response); 
	        }
	        rs.close();
	        st.close();
	        System.out.println("test :" + msg);
	        PrintWriter out = response.getWriter();
	    } 
	    catch(ClassNotFoundException |SQLException e)
	    {
	    	e.printStackTrace();
	    }
	}
}
