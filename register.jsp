<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" type="text/css" href="register.css">
    </head>
    <body>
       <form class="box" action="insert.jsp" method="POST" target="_self">
           <h1>register</h1>
           <input type="text" name="user" id="username" placeholder="Username" required> <!id used in css page>
           <input type="text" name="gender" id="gend" placeholder="Gender" >
           <input type="text" name="mob" id="mon" placeholder="Mobile Number" minlength="2" maxlength="2">
           <input type="email" name="email" id="email" placeholder="Email ID" >
           <input type="password" name="pass" id="pass" placeholder="Password" minlength="3">  <!name used in insert page(db)>
           <input type="submit" id="submit" value="login">
       </form>
    </body>
</html>
