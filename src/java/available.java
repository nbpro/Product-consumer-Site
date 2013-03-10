//*
 /* To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kumar
 */
public class available extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //int pid=Integer.parseInt(request.getParameter("product_id"));
       
       
        
      
        
        try {
              Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","kumar","kumar");
            PreparedStatement ps=con.prepareStatement("select * from stock");
             ResultSet rs=ps.executeQuery();
             
            
             
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet available</title>");  
            out.println("</head>");
            out.println("<body bgcolor=SKYBLUE>");
            out.print("<P ALIGN=CENTER><FONT FACE=TIMES NEW ROMAN COLOR=MAROON SIZE=6> OUR PRODUCT </FONT></P>");
            out.print("<table align = 'center' cellpadding = '9' border = '2' >");
	    out.println("<tr>");
	    out.println("<th><FONT COLOR=RED>product_id</FONT></th>");
	    out.println("<th>product_name</th>");
	    out.println("<th>unit_price</th>");
            while(rs.next())
             {
                
             out.println("<tr>");
			
			out.println("<td>");
			out.println(rs.getInt("product_id")) ;
			out.println("</td>");
			out.println("<td>");
			out.print(rs.getString("product_name")); 
			out.println("</td>");
			out.println("<td>");
			out.print(rs.getInt("unit_price")); 
			out.println("</td>"); 
              out.println("</tr>");  
           
             }  
            
            out.print("<table align = 'center' cellpadding = '0' border = '0' >");
            out.println("<br><br><br><br><br><br>");
             out.println("<tr>");
            
           out.println ("<td><div align= left ><p><form method= get action= login.html><input type= submit  value=back></form></p></div></td>");
           out.println("&nbsp;&nbsp;&nbsp;&nbsp;");
           
            
            
            out.println("</body>");
            out.println("</html>");
             
        } catch(Exception e) {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
