<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="paket.dbLayer" %>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
    <style>
        .blog{
            width:40%;
            margin:0 auto;
            background-color: lightblue;
            border: 2px solid black;
            border-radius: 10px;
            text-align: center;
            margin-bottom: 10px;
        }
        
        .blog:hover{
            background-color:aqua;
            transform: scale(1.08);
        }
        
        a{
            text-decoration: none;
            color: black;
        }
        
        input{
            width:40%;
            height:50px;
            margin-left:30%;
        }
    </style>
</head>
<body>
    <h1><center>Güncel Bloglar</center></h1>
    <%
        dbLayer d=new dbLayer();
        ArrayList<ArrayList<String>> blogs=d.getBlogs();
        for(int i=0;i<blogs.size();i++){
            out.println("<a href='view.jsp?id="+blogs.get(i).get(0)+"'>  <div class='blog'>");
            out.println("<h3>"+blogs.get(i).get(1) +"</h3>");
            out.println("<p>"+blogs.get(i).get(2).substring(0, +blogs.get(i).get(2).length()/6) +".....</p>");
            out.println("</div>  </a>");
        }
    %>
    
    <input type="button" value="Blog Ekle" onclick="window.location.replace('save.jsp')"/>
    
</body>
</html>
