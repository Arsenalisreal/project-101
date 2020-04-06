<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
        <link rel="stylesheet" type="text/css" href="register.css">
    </head>
    <body>
       <form class="box" action="up_action.jsp" method="POST" target="_self">
           <h1>Update</h1>
            <!id used in css page>
           <input type="text" name="user" id="username" placeholder="Name" >
           <input type="text" name="gender" id="gend" placeholder="Gender" >
           <input type="text" name="mob" id="mon" placeholder="Mobile Number" >
           <input type="text" name="email" id="email" placeholder="Email ID" >
           <input type="password" name="pass" id="pass" placeholder="Password">  <!name used in insert page(db)>
           <input type="submit" id="submit" value="go">
       </form>
    </body>
</html>
