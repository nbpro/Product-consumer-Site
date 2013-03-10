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
            <head></head>
            <body bgcolor="black">
                <form>
         <P align="right">
        <a href="logout.jsp">Logout</a>
         </P></form>
                 <p align="center">
                <font face="Times New Roman" size=8 color="white">
                Your Ordered Is Successfull
                </font>
                 </p>
            </body>
        </html>
        <% }} %>