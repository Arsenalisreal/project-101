<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search!</title>
        <link rel="stylesheet" type="text/css" href="ee.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="menu">
                <button class="menu-button">Options</button>
                <div class="dropdown">
                    <a href="update.jsp">Update account</a>
                    <a href="delete.jsp">Delete account</a>
                    <a href="yay.jsp">Logout</a>   
                </div>
            </div>
        </div>

                
        <form class="box" action="check_search.jsp" method="POST" target="_self">
            <h1>Search</h1>
            <input type="text" name="search" id="search" autocomplete="off" required>
            <input type="submit" id="submit" value="Go">
        </form>
    </body>
</html>
