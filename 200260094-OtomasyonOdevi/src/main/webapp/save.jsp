<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        margin-left: 350px;
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
            <h1><center>Blog Ekleme Ekranı</center></h1>
            <input type="text" id="header"/><br><br>
            <textarea id="content" rows="34" cols="10"></textarea><br>
            <input type="button" value="Kaydet" onclick="save()"/>
        </div>
</body>

<script>
    function save(){
        var header=document.getElementById("header").value;
        var content=document.getElementById("content").value;       
        window.location.replace('saveServlet?header='+header+'&content='+content);
    }
</script>
</html>