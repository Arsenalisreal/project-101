<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" type="text/css" href="register.css">
    </head>
    <body>
       <form class="box" action="del_action.jsp" method="POST" >
           <h1>DELETE</h1>
           <input type="password" name="pass" id="pass" placeholder="Password"> 
           <input type="submit" id="submit" onclick="alert('Are you sure?')" value="GO">
       </form>
    </body>
</html>
