<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connectiondb.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
        <link rel="stylesheet" type="text/css" href="del.css">
    </head>
    <body> 
        <%
            String name=(String)session.getAttribute("sid");
            //String name=request.getParameter("user");
            //String gen=request.getParameter("gender");
            //String mobn=request.getParameter("mob");
            //String em=request.getParameter("email");
            //String pass=request.getParameter("pass");
                   
            Statement st=con.createStatement();
            st.executeUpdate("delete from reg where name='"+name+"'");
            
            
            //ps.setString(1,pass);
            //ps.setString(2,gen);
            //ps.setString(3,em);
            //ps.setString(4,mobn);
            
            //ps.executeUpdate();
            //out.println("insertion successful");
        %>
        
        <div class="box">
            <h1>Deleted!</h1>
           <h1><% out.println(name); %></h1>
           <a href="search.jsp"><button class="btn">finish</button></a>
        </div>
        
    </body>
</html>