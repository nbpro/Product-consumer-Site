/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.util.Date;
//import java.text.SimpleDateFormat;
/**
 *
 * @author Kumar
 */
public class putorder extends HttpServlet {

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
      
          
          int pid=Integer.parseInt(request.getParameter("product_id"));
          String pname=request.getParameter("pname");
          int qty=Integer.parseInt(request.getParameter("quantity"));
          double mobile_no=Double.parseDouble(request.getParameter("mobile_no"));
          int b=0; 
        int order_no=0;
        try {
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","kumar","kumar");
             PreparedStatement ps0=con.prepareStatement("select order_id from orders");
             ResultSet rs0=ps0.executeQuery();
             while(rs0.next()){
             String b1=rs0.getString(1);
             order_no=Integer.parseInt(b1);
             }
             out.println(order_no);
             int order_id=order_no+1;
             PreparedStatement ps00=con.prepareStatement("update orders set order_id=?");
             ps00.setInt(1, order_id);
             int update_order_id=ps00.executeUpdate(); 
            
             
            PreparedStatement ps1=con.prepareStatement("select quantity from stock where product_id=?");
             ps1.setInt(1, pid);
             ResultSet rs1=ps1.executeQuery();
             
              while(rs1.next()){
                  String b1=rs1.getString(1);
                  b = Integer.parseInt(b1);
                  
              }
              
              out.println(b);
           if(b>=qty)
           {
             
              int free=b-qty;
          
             PreparedStatement ps=con.prepareStatement("insert into ordered_list"+"(product_id,product_name,quantity,order_id,mobile_no)"+"values(?,?,?,?,?)");
             
             ps.setInt(1, pid);
             ps.setString(2,pname );
             ps.setInt(3, qty);
             ps.setInt(4,order_no);
             ps.setDouble(5,mobile_no);
             
             int num=ps.executeUpdate();
            
             PreparedStatement ps2=con.prepareStatement("update stock set num_of_booked=?,num_of_free=? where product_id=?");  
           
              ps2.setInt(1,qty);
              ps2.setInt(2,free );
              ps2.setInt(3,pid);
              
              int num1=ps2.executeUpdate();
              
              if(num!=0 && num1!=0){
             // HttpSession ses=request.getSession(true);
             // ses.setAttribute("uid",pid);
              RequestDispatcher rd=request.getRequestDispatcher("ordered_placed.jsp");
              rd.forward(request, response);
              }
           
           response.sendRedirect("error.html"); 
           }   
        }  catch(Exception e) {            
           e.getMessage();
         }
      
    

    }  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
