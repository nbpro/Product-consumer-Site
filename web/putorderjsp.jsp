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
    <body>
        <center><div><h1>Your order is Successful</div>
    
        
        </br><<br>
        <input type="submit"  value="Click To Submit">
        <br></center>
        </br><a href="home.html">
                <center><h2>home</h2></center></a>
 <br><p>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        </br>
 <p align="bottom"> <hr><center>
            devloped by pritam ,neeraj,santosh</center>
</p>    

    </body>
</html>


        
        
        
        
   <% }} %> 