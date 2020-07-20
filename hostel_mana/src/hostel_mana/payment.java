package hostel_mana;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("test2");
//		    response.setContentType("text/html");
		    String sql="insert into  payment values(?,?,?,?,?)";
		   String student_id=request.getParameter("Student_id");
		   String amount=request.getParameter("amount");
		   String date=request.getParameter("date_pay");
		   String Status=request.getParameter("Status");
		   int payment_id=0;
		   
		    try 
		    {
		    	String str;
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        String sql1="select max(payment_id) as PAYMENT_ID from payment";
		        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel_management1","yash","yash@2420");  
		        PreparedStatement st1=conn.prepareStatement(sql1);
		        PreparedStatement st=conn.prepareStatement(sql);
		       
		        ResultSet rs1=st1.executeQuery();
		        if(rs1.first())
    	        {
    	        	System.out.println("test3");
    	        	str=rs1.getString("PAYMENT_ID");
    	        	System.out.println(str);
    	        	if(str==null)
    	        	{
    	        		System.out.println("test5");
    	        		payment_id=1;
    	        	}
    	        	else
    	        	{
    	        		payment_id=Integer.parseInt(str);
    	        		payment_id=payment_id+1;
    	        	}
    	        	System.out.println("test4");
    	        }
		        int i=st.executeUpdate("insert into payment values("+ payment_id + "," + Integer.parseInt(student_id) +",'"+date+"',"+Integer.parseInt(amount)+",'"+Status+"')"); 
		        if(i>0) 
		        {
		        	
		        	response.sendRedirect("payment.jsp");
		        	//JOptionPane.showMessageDialog(null, "hey");
		        }	
		        else 
		        {
		        
		            response.sendRedirect("payment.jsp");
		        }
		        st.close();
		        System.out.println("test :" );
		        PrintWriter out = response.getWriter();
		    } 
		    catch(ClassNotFoundException |SQLException e)
		    {
		    	e.printStackTrace();
		    }catch (NumberFormatException e) {
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
