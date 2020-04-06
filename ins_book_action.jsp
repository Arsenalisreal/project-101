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
            String bname=request.getParameter("name");
            String baut=request.getParameter("author");
            String bsub=request.getParameter("subject");
            String bstk=request.getParameter("stock");
            
            
            PreparedStatement ps=con.prepareStatement("INSERT INTO thebookstore VALUES(?,?,?,?)");
            
            ps.setString(1,bname);   //row number, row name 
            ps.setString(2,baut);
            ps.setString(3,bsub);
            ps.setString(4,bstk);
            
            
            ps.executeUpdate();
            
            //session.setAttribute("sid",name); 
           
        %>
        <form class="box" action="newjsp.jsp" method="POST" target="_self">
           <h1>Added!</h1>
           <a href="insert_books.jsp"><button class="btn">add another</button></a>
           <input type="submit" id="submit" value="home">
       </form>
    </body>
</html>