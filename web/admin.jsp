<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

        <title>Admin Page</title>

    </head>

    <body bgcolor="black"><font color="red">
        
        <form action="index1.html">
            
            <input type="submit" value="HOME">
            
        </form>
        

        <h1>This is an Admin Page</h1>
        
        <form action="update.jsp">
            
            <input type="submit" value="update user">
            
        </form> 
        
        <br>
        
         <form action="index2.html">
            
            <input type="submit" value="add user">
            
        </form>
        
         <br>
        
         <form action="delete.jsp">
            
            <input type="submit" value="delete user">
            
        </form>
        
        <br>
        
         <form action="view.jsp">
            
            <input type="submit" value="view users">
            
        </form> 
        
        
        <br>

        <%

            String str = (String) session.getAttribute("username");

            out.print("Welcome " + str);

        %>

        </font>       

    </body>   

</html>