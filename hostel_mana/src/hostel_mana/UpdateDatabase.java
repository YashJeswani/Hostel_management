package hostel_mana;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.csvreader.CsvReader;

/**
 * Servlet implementation class UpdateDatabase
 */
public class UpdateDatabase extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDatabase() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        PrintWriter out = response.getWriter();
        try {           
            String filename = (String) getServletContext().getAttribute("fileName");
            out.println("FileName : "+filename);
            CsvReader products = new CsvReader(filename);
            products.readHeaders();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hostel_management1","yash","yash@2420");
            Statement st = con.createStatement();

            while (products.readRecord())
            {
            	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
                String student_id = products.get("student_id");
                String student_name = products.get("student_name");
                String student_address = products.get("student_address");
                String adhaarno = products.get("adhaarno");
                String email = products.get("email");
                String room_no = products.get("room_no");
                String hostel_id = products.get("hostel_id");
                String reg_id = products.get("reg_id");
                String year_of_engg = products.get("year_of_engg");
                String DOB = products.get("DOB");
                String deposit = products.get("deposit");             
                System.out.println(simpleDateFormat.parse(DOB));
                String query = "insert into student values ("; 
                query += Integer.parseInt(student_id)+", '";
                query += student_name+"', '";
                query += student_address+"','";
                query += adhaarno+"', '";
                query +=  email+"', ";
                query += Integer.parseInt(room_no)+", ";
                query += Integer.parseInt(hostel_id)+", '";
                query +=  reg_id+"', ";
                query += Integer.parseInt(year_of_engg)+", '";
                query += DOB+"', ";
                query += Integer.parseInt(deposit)+")";

                out.println("Query : "+query);
                st.executeUpdate(query);
            }
            out.println("Data inserted...");
            products.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}

