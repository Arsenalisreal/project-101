<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Books</title>
        <link rel="stylesheet" type="text/css" href="insert_books.css">
    </head>
    <body>
       <form class="box" action="ins_book_action.jsp" method="POST" target="_self">
           <h1>add books</h1>
           <input type="text" name="name" id="n" placeholder="Name" required> <!id used in css page>
           <input type="text" name="author" id="aut" placeholder="Author"required >
           <input type="text" name="subject" id="sub" placeholder="Subject" required>
           <input type="number" name="stock" id="sk" placeholder="Stock" required>
           
           <input type="submit" id="submit" value="add">
       </form>
    </body>
</html>
