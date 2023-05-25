<%-- 
    Document   : delete1
    Created on : Feb 1, 2023, 3:15:29 PM
    Author     : anurag_chaturvedi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

		<%
		String UNAME=request.getParameter("UNAME");
		
		
		try
		{
			Connection connection = null;
                         Class.forName("oracle.jdbc.driver.OracleDriver");

                connection= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ANURAG", "Anurag@123");

                Statement statement = connection.createStatement();
                
                PreparedStatement ps=connection.prepareStatement("DELETE FROM reg where UNAME=?");
                ps.setString(1, UNAME);
                
                
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

                
