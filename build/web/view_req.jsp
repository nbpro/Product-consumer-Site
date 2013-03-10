<%--

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
--%>
       
        
        <html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body><form>
         <P align="right">
        <a href="logout.jsp">Logout</a>
         </P></form>
        <form method="post" action="./placeorder">
            
       
        <div align="middle"><h1></h1><br><br><br></div>
        <center><h4><input type="submit" name="view" value="VIEW STOCK"/></h4></center><br>
      
         </form>
        
        
       <form method="post" action="./processorder">
            
       
        <div align="RIGHT"><h1></h1><br><br><br></div>
        <center><h4><input type="submit" name="view" value="VIEW ORDER"/></h4></center><br>
      
         </form> 
        
        <%--  <% }} %>  --%>