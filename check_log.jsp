<%@include file="connectiondb.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Statement st=con.createStatement();
            String id=request.getParameter("username");
            String pswd=request.getParameter("password");
                    
            session.setAttribute("sid",id);
            
            ResultSet rs=st.executeQuery("select name, password from reg where name='"+id+"'");  
            if(rs.next())         //name and password are column names and reg is the table name in the db
            {                      // id is the name the user provided
                String u=rs.getString(1);
                String p=rs.getString(2);
                if(p.equals(pswd)&&u.equals(id))
                {
                    %>
                    <jsp:forward page="search.jsp"/>
                        <%
                }
                else
                {%>
                <jsp:forward page="error.jsp"/>     <!if 1st cond is false>
                <%
                }
            }
            else
            {
                %>
                <jsp:forward page="error2.jsp"/>  <!second condition>
                <%
            }
            %>
    </body>
</html>

<!String s=String(session.getAttribute(s)>
