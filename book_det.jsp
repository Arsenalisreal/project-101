<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="b_details.css">
    </head>
    <body>
        
        <% 
            String bookname= (String)session.getAttribute("bn");
            String author= (String)session.getAttribute("aut");
            String subject= (String)session.getAttribute("sub");
            String stock= (String)session.getAttribute("stoc");
            int int_stock = Integer.parseInt(stock);
            
            
        %>
        <form class="box" action="search.jsp" method="POST" target="_self">
        <table style="width:100%">
            <tr>
                <th><h1>Book</h1></th>
                <td><h1><% out.println(bookname); %></h1></td>
            </tr>
            <tr>
                <th><h1>Author</h1></th>
                <td><h1><% out.println(author); %></h1></td>
            </tr>
            <tr>
                <th><h1>Subject</h1></th>
                <td><h1><% out.println(subject); %></h1></td>
            </tr>
            
            <% if(int_stock>=5) { %>
           <tr>
                <th><h1>Stock</h1></th>
                <td><center><h1>In stock</h1></center></td>
            </tr>
            <% } else if(int_stock<5) { %>
           <tr>
                <th><h1>Stock</h1></th>
                <td><h1>Running out</h1></td>
            </tr>
           <% } else if(int_stock==0) { %>
           <tr>
                <th><h1>Stock</h1></th>
                <td><h1>Out of Stock</h1></td>
            </tr>
           <% } %>
        </table> 
        <input type="submit" id="submit" value="Go back">
        </form>
    </body>
</html>


