<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="paket.dbLayer" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
    <style>
        .blog{
            width:70%;
            margin:0 auto;
            background-color: lightblue;
            border: 2px solid black;
            border-radius: 10px;
            text-align: center;
            margin-bottom: 10px;
            margin-top:80px;
        }
        
        a{
            text-decoration: none;
            color: black;
        }
        
        input{
            width:25%;
            margin-left:15%;
        }
    </style>
    
    </head>
    <body>      
        <%
            dbLayer d=new dbLayer();
            ArrayList<String> blog=d.getBlog(request.getParameter("id"));
            out.println("<div class='blog'>");
            out.println("<h3>"+blog.get(1)+"</h3>");
            out.println("<p>"+blog.get(2)+"</p>");
            out.println("</div>");
        %>

    <input type="button" value="Düzenle" onclick="window.location.replace('http://localhost:8080/200260094-OtomasyonOdevi/edit.jsp?id=<%=request.getParameter("id")%>')"/>
    <input type="button" value="Sil" onclick="window.location.replace('deleteServlet?id=<%=request.getParameter("id")%>')"/>
    </body>

</html>
