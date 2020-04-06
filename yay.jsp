<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>admin logged in<input type="text" name="user" id="username" placeholder="Username">"</h1>
    </body>
</html>
Statement st=con.createStatement();
st.executeUpdate("delete from reg where name='"+name+"'");