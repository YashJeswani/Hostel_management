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


public class view_student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("viewtest1");
//	    response.setContentType("text/html");
	    String sql="select student_id,student_name,room_no,reg_id,email from student where reg_id=?";
	    String sql1="select status from payment where student_id=?";
	    String sql2="select mobile_no from student_mobile where student_id=?";
	    String sql3="select gaurdian_name,gaurdian_mobile from gaurdian  where student_id=?";
	    String msg = " ";
	    String register_id = request.getParameter("search");
	    try 
	    {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
	        
	        PreparedStatement st=conn.prepareStatement(sql);
	        st.setString(1,register_id);
	        ResultSet rset = st.executeQuery();
	        
	        PreparedStatement st1=conn.prepareStatement(sql1);
	      
	        PreparedStatement st2=conn.prepareStatement(sql2);
	      
	        PreparedStatement st3=conn.prepareStatement(sql3);

	        
	        if (rset.next()) 
	        {
	        	
	            msg = "HELLO" + register_id + "! Your Search is SUCESSFULL";
	            User user = new User();
	            user.setname(rset.getString("student_name"));
	            user.setstud_id(rset.getInt("student_id"));
	            user.setreg_id(rset.getString("reg_id"));
	            user.setroom_id(rset.getInt("room_no"));
	            user.setemail(rset.getString("email"));
	            System.out.println(";;;;;;;:::::");
	            System.out.println(user.getstud_id());
	            System.out.println(";;;;;;;");
	            st1.setInt(1,user.getstud_id());
	            ResultSet rset1 = st1.executeQuery();
	            st2.setInt(1,user.getstud_id());
	            ResultSet rset2 = st2.executeQuery();
	            st3.setInt(1,user.getstud_id());
	            ResultSet rset3 = st3.executeQuery();
	            if(rset1.next() && rset2.next() && rset3.next())
	            {
	            user.setstatus(rset1.getString("status"));
	            user.setphone(rset2.getString("mobile_no"));
	            user.setgaurdian_name(rset3.getString("gaurdian_name"));
	            user.setgaurdian_phone(rset3.getString("gaurdian_mobile"));
	            }
	            System.out.println(user.getreg_id());
	            HttpSession session =request.getSession();
	            session.setAttribute("user",user);
	            rset1.close();
		        rset2.close();
		        rset3.close();
	            getServletContext().getRequestDispatcher("/view_stud.jsp")
	                              .forward(request,response);

	        } 
	        else 
	        {
	            msg = "HELLO" +  register_id + "!Your Registration_id search is UNSUCESSFULL";
	            request.getRequestDispatcher("welcome.jsp").include(request, response); 
	        }
	        rset.close();
	       
	        st.close();
	        st1.close();
	        st2.close();
	        st3.close();
	        System.out.println("test :" + msg);
	        PrintWriter out = response.getWriter();
	    } 
	    catch(ClassNotFoundException |SQLException e)
	    {
	    	e.printStackTrace();
	    }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
