<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connectiondb.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
        <link rel="stylesheet" type="text/css" href="aft_reg.css">
    </head>
    <body>
        <%
            String name=request.getParameter("user");
            String gen=request.getParameter("gender");
            String mobn=request.getParameter("mob");
            String em=request.getParameter("email");
            String pass=request.getParameter("pass");
            
            PreparedStatement ps=con.prepareStatement("INSERT INTO reg VALUES(?,?,?,?,?)");
            
            ps.setString(1,name);
            ps.setString(2,pass);
            ps.setString(3,gen);
            ps.setString(4,em);
            ps.setString(5,mobn);
            
            ps.executeUpdate();
            
            session.setAttribute("sid",name); 
           
        %>
        <form class="box" action="login.jsp" method="POST" target="_self">
           <h1>Welcome!</h1>
           <h1><% out.println(name); %></h1>
           <input type="submit" id="submit" value="login">
       </form>
    </body>
</html>