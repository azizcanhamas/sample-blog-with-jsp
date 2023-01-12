<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="paket.dbLayer" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>

<style>
    div{
        background-color: lightblue;
        padding:10px 75px;
        width: 800px;
        border:2px solid black;
        border-radius: 10px;
        margin-left: 300px;
    }
    input{
        height: 50px;
    }
    input,textarea{
        width: 800px;
    }
    textarea{
        margin-bottom: 20px;
    }
</style>
<body>
        <div>
            <h1><center>Blog Düzenleme Ekranı</center></h1>
            <%
                dbLayer d=new dbLayer();
                ArrayList<String> l=d.getBlog(request.getParameter("id"));
            %>
            <input type="text" id="header" value="<%=l.get(1)%>"/><br><br>
            <textarea id="content" rows="30" cols="10"><%=l.get(2)%></textarea><br>
            <input type="button" value="Kaydet" onclick="save()">
        </div>
</body>

<script>
    function save(){
        var header=document.getElementById("header").value;
        var content=document.getElementById("content").value;       
        window.location.replace('updateServlet?id=<%=request.getParameter("id")%>&header='+header+'&content='+content);
    }
</script>
</html>
