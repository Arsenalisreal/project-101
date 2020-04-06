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
        <title>thebookstore</title>
    </head>
    <body>
        <%
            Statement st=con.createStatement();
            String bname=request.getParameter("search");
            
            //String pswd=request.getParameter("password");
                    
            session.setAttribute("bn",bname);
            
            ResultSet rs=st.executeQuery("select b_name, b_author, b_subject,b_stock from thebookstore where b_name='"+bname+"'");  
            if(rs.next())         //b_name are column names and thebookstore is the table name in the db
            {                      // bname is the name the user provided
                String b=rs.getString(1);
                String au=rs.getString(2);
                String su=rs.getString(3);
                String sto=rs.getString(4);
                
                
                session.setAttribute("aut",au);
                session.setAttribute("sub",su);
                session.setAttribute("stoc",sto);
                
                
                if(b.equals(bname))
                {
                    %>
                    <jsp:forward page="book_det.jsp"/>
                        <%
                }
                else
                {%>
                <jsp:forward page="index.jsp"/>     <!if 1st cond is false>
                <%
                }
            }
            else
            {
                %>
                <jsp:forward page="test.jsp"/>  <!second condition>
                <%
            }
            %>
    </body>
</html>


