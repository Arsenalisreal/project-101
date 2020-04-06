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
            //String name=(String)session.getAttribute("sid");
            String name=request.getParameter("user");
            String gen=request.getParameter("gender");
            String mobn=request.getParameter("mob");
            String em=request.getParameter("email");
            String pass=request.getParameter("pass");
            
            String sqlUpdate="UPDATE reg SET gender=?,mobile=?,email=?,password=? where name="+name;  //gender(???)are database names
            PreparedStatement ps=con.prepareStatement(sqlUpdate);
            
            
            ps.setString(1,pass);
            ps.setString(2,gen);
            ps.setString(3,em);
            ps.setString(4,mobn);
            
            ps.executeUpdate();
            //out.println("insertion successful");
        %>
        <form class="box" action="search.jsp" method="POST" target="_self">
           <h1>Updated!</h1>
           <h1><% out.println(name); %></h1>
           <input type="submit" id="submit" value="finish">
       </form>
    </body>
</html>