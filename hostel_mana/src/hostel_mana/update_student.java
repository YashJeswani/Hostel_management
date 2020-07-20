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
import hostel_mana.User;

public class update_student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test1");
//	    response.setContentType("text/html");
		HttpSession session =request.getSession();
	    int student_id=(int) session.getAttribute("stud_id");
	    String sql="update  student set student_name=?,email=?  where student_id="+student_id;
	    String sql1="update student_mobile set mobile_no=? where student_id="+student_id;
	    String sql2="update  gaurdian set gaurdian_name=?,gaurdian_mobile=?  where student_id="+student_id;
	    User user=new User();
	    System.out.println(request.getParameter("name"));
	    String name=request.getParameter("name");
	    String email=request.getParameter("email");
	    String phone=request.getParameter("phone");
	    String g_name=request.getParameter("gaurdian_name");
	    String g_phone=request.getParameter("gaurdian_phone");
	    String room_no=request.getParameter("room_id");
	    System.out.println(name);
	    String msg = " ";
	    System.out.println(student_id);
	    try 
	    {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
	        PreparedStatement st=conn.prepareStatement(sql);
	        st.setString(1,name);
	        st.setString(2, email);
	        PreparedStatement st1=conn.prepareStatement(sql1);
	        st1.setString(1, phone);
	        PreparedStatement st2=conn.prepareStatement(sql2);
	        st2.setString(1,g_name);
	        st2.setString(2, g_phone);
	        System.out.print(st);
	        int i=st.executeUpdate();
	        int j=st1.executeUpdate();
	        int k=st2.executeUpdate();
	        if (i>0 && j>0 && k >0) 
	        {
	        	
	            msg = "HELLO" + student_id + "! Your update is SUCESSFULL";
	           
	            user.setname(name);
	            user.setemail(email);
	            user.setphone(phone);
	            user.setgaurdian_name(g_name);
	            user.setgaurdian_phone(g_phone);
	          
	            request.setAttribute("user", user);
	            getServletContext().getRequestDispatcher("/view_stud.jsp")
                .forward(request,response);
	            
	        } 
	        else 
	        {
	            msg = "HELLO" +  student_id + "!Your update is UNSUCESSFULL";
	            request.getRequestDispatcher("welcome.jsp").include(request, response); 
	        }
	        st.close();
	        System.out.println("test :" + msg);
	        
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
