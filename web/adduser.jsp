<%-- 
    Document   : adduser
    Created on : Jan 27, 2023, 5:09:20 PM
    Author     : anurag_chaturvedi
--%>


    
    
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
           
       <b><center>     

    <body bgcolor="green">
        
        
         <form action="view.jsp">
            
            <input type="submit" value="HOME">
            
            <h1>already exist</h1>
            
        </form>
        
        

		<%
		String UNAME=request.getParameter("UNAME");
		String UPASS=request.getParameter("UPASS");
		String UTYPE=request.getParameter("UTYPE");
		
		try
		{
			Connection connection = null;
                         Class.forName("oracle.jdbc.driver.OracleDriver");

                connection= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ANURAG", "Anurag@123");

                Statement statement = connection.createStatement();

			String command = "INSERT into reg(UNAME,UPASS,UTYPE)values('"+UNAME+"','"+UPASS+"','"+UTYPE+"')";
            statement.executeUpdate(command);
			out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>

    
    </body>

