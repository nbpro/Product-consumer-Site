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

<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head> <body background="shop.jpg">
    <CENTER>
<TABLE cellSpacing=0 cellPadding=0 width=460 align=center border=0>
  <TBODY>
  <TR>
    <TD width="565">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          </TR>
        <TR>
          <TD width=558 bgcolor="#666699" height="70">
            <p align="center"><FONT 
            face=Arial color=#ffffff size=7><B>product consumer site</B></FONT></p>
          </TD>
        </TR>
        </TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD>
      <TABLE cellSpacing=0 cellPadding=0 width="454" border=0>
        <TBODY>
        <TR> 
            &nbsp;&nbsp;<a href="home.html"><font color="red">Home</font></a>
            &nbsp;&nbsp;<a href="about.html"><font color="red">About</font></a>              
            &nbsp;&nbsp;<a href="products.html"><font color="red">Products</font></a>
                &nbsp;&nbsp;<a href="services.html"><font color="red">Services</font></a>
                &nbsp;&nbsp;<a href="design.html"><font color="red">Design</font></a>
              &nbsp;&nbsp;<a href="contact.html"><font color="red">Contact</font></a>
                   
        
                    </center>
        <div align="middle"><h1>e-requistion form</h1><br></div>
    <center><blink><b><h4>please enter the details</h4><b></blink></center><br>
        <form method ="get" action="./putorder">
            
            <center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;productID<input type="text"size="20" value="">
                <!--<select name="product id">
                    <option value="volvo">02</option>
<option value="saab">03</option>
<option value="fiat" selected="selected">01</option>
<option value="audi">04</option>
                </select>
                           !-->
                              <br><br>
<!--Product Name:
<input type="text" name="productname" value="" size="20">!-->
<br><br> &nbsp &nbsp &nbsp &nbsp
Quantity:
<input type="text" name="quantity" value="" size="20"><br><br>&nbsp &nbsp &nbsp &nbsp
<input type="submit"  value="Click To Submit">&nbsp &nbsp &nbsp &nbsp
<input type="reset" value="Click To reset"><br><br>

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            </center>
    </form>


        
    </body>
</html>
<% }} %> 