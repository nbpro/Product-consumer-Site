<%@page session="false"%> 
 <%HttpSession ses=request.getSession(false);
 if(ses==null)
{
	response.sendRedirect("adminlogin.html");
}
else
{
        
        String str = (String)ses.getAttribute("uid");
	if(str==null)
	{    
		RequestDispatcher rd = request.getRequestDispatcher("adminlogin.html");
		rd.forward(request,response);
}else{
	%>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body bgcolor="black"> <img src="stock-market1.jpg" width="1800"height="300"></img>
        <div align="middle"><br><br>
<font color =deeppink size=7>*** STOCK MARKET AND ORDER HERE ***</font><br><br><br><br><br><br><br>
<div id ="menu" align="middle">
            <table border="0">
                <tr>
                   <td> <form method="post" action="./placeorder"><input type="submit" value="STOCK LIST"></form></td>
                    <td> <form method="post" action="./processorder"><input type="submit" value="ORDER LIST"></form></td>
                    <td> <form method="post" action="./processorder"><input type="submit" value="UPDATE STOCK"></form></td>
           
                </tr></table> 
            
        </div>
<div id ="menu" align="middle">
            <table border="0">
                <tr>
                    <td> <form><input type="button" value="HOME" onClick="window.location.href='http://localhost:8084/productconsumer1/home.html'"></form></td>
                    
                    <td></td>
                    
                    
                    
          
                </tr></table> 
            
        </div>
       
       
        
    </body>
</html>
<% }} %> 