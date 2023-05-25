<%-- 
    Document   : view
    Created on : Jan 26, 2023, 9:42:59 AM
    Author     : anurag_chaturvedi
--%>

<%@ page language="java" import="java.sql.*"%><b><center>     

    <body bgcolor="green">
        
        
         <form action="index1.html">
            
            <input type="submit" value="HOME">
            
        </form>
        
        <h1>exist members</h1>
        
       <%
           

            String name = request.getParameter("uname");

            String pass = request.getParameter("upass");

            

                Class.forName("oracle.jdbc.driver.OracleDriver");

                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ANURAG", "Anurag@123");

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from reg");
                
                
                %>
                
            <TABLE BORDER="1">
           <TR>
                 <TH>USERNAME</TH>
                 <TH>PASSWORD</TH>
                 <TH>ROLE</TH>
                 
          </TR>
          
          <% while(rs.next()){ %>
           <TR>
                <TD> <%= rs.getString(1) %></td>
               <TD> <%= rs.getString(2) %></TD>
               <TD> <%= rs.getString(3) %></TD>
               
          </TR>
           <% } %>
               </TABLE>
         </BODY>
</HTML>
           
                 
          
        


 

           

   