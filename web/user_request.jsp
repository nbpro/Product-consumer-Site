

<%@page session="false"%> 
 <%HttpSession ses=request.getSession(false);
 if(ses==null)
{
	response.sendRedirect("login.html");
}
else
{
        
        String str = (String)ses.getAttribute("uid");
	if(str==null)
	{    
		RequestDispatcher rd = request.getRequestDispatcher("login.html");
		rd.forward(request,response);
}else{
	%>


<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body bgcolor="wheat"><form>
           <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr valign="bottom"> 
    <td colspan="3"><img src="top1.jpg" width="1800" height="180"></td>
  </tr>
           </table>
         <P align="right">
        <a href="logout.jsp">Logout</a>
         </P></form>
        <div align="middle"><h1>e-Order form</h1><br><br><br></div>
    <center><h4>please enter the details</h4></center><br>
        <form method ="post" action="./putorder">
            
            <div align="middle">           
Product ID:&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="product_id" value="product-id" size="20">
<br><br>Product Name:
<input type="text" name="pname" value="product-name" size="20">
<br><br>Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="quantity" value="quantity" size="20"><br><br>
Mobile Number:
<input type="text" name="mobile_no" value="mobile" size="18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br>
<input type="submit"  value="Click To Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Click To reset"><br></div>
        </form>        
    <div id ="menu" align="middle">
            <table border="0">
                <tr>
                    <td> <form><input type="button" value="HOME" onClick="window.location.href='http://localhost:8084/productconsumer1/home.html'"> </form></td>
                    <td><form><input type="button" value="ABOUT US" onClick="window.location.href='http://localhost:8084/productconsumer1/contact.html'"></form></td>
                    <td></td>
                    <td><form><input type="button" value="REGISTER" onClick="window.location.href='http://localhost:8084/productconsumer1/register.html'"></form></td>
                    <td><form><input type="button" value="CONTACT" onClick="window.location.href='http://localhost:8084/productconsumer1/about.html'"></form></td>
                    <td> <form><input type="button" value="LOGIN" onClick="window.location.href='http://localhost:8084/productconsumer1/login.html'"></form></td>
            
                </tr></table> 
        
            
        </div>         
            
            
            
            
            
            
<% }} %>            
            
            
            