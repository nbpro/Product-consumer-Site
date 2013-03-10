 <% String str = (String) session.getAttribute("uid"); 
if (str == null) 
 	{ 
	  RequestDispatcher rd = request.getRequestDispatcher("home.html"); 
	  rd.forward(request,response);
		}else
 { %>
 <% 
session.invalidate();
  }
 %>
 <html>
<head>
<title>Insert title here</title>
</head>
<body background="logout.jpg" oneafterprint="244" onebeforeprint="633">
<P align="right">
<%= new java.util.Date() %></P><p align="middle">
<font face = timesnewroman size=10 color=black>
You have been successfully Logout!!!<br><br>
Go back to Home page
<a href="home.html"> <font color=red>Login</font></a></p>
</font>


</body>
 </html>
 