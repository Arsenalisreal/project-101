<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String id=request.getParameter("username");
            String pswd=request.getParameter("password");
            
            String u="12345";
            String p="12345"; 
                    
            if(p.equals(pswd)&&u.equals(id))
                {%><jsp:forward page="insert_books.jsp"/><%}
            else
                {%><jsp:forward page="err_admin.jsp"/><%}
          %>            
    </body>
</html>


