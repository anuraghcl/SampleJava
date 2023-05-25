<%-- 
    Document   : update1
    Created on : Jan 30, 2023, 5:46:16 PM
    Author     : anurag_chaturvedi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

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
                
                PreparedStatement ps=connection.prepareStatement("Update reg set UTYPE=?,UPASS=? where UNAME=?");
                ps.setString(3, UNAME);
                ps.setString(2, UPASS);
                ps.setString(1, UTYPE);
                
                int i=ps.executeUpdate();
                
                
                 if (i>0) {

                    response.sendRedirect("view.jsp");

                } else {

                    out.println("Either you enter Invalid UserName or Password! Please Try Again");
               
                      } 
                 
                }
                 catch (Exception e) 
                         {

                out.println(e);

            }

 

            

        %> 

                
