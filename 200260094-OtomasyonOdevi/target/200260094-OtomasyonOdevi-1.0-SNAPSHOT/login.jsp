<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style>
           
            
            table{
                margin: 10% auto;
                background-color:lightblue;
                padding: 20px;
                border:2px solid black;
                border-radius: 10px;
            }
            td{
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <form method="post" action="loginServlet">
            <table>
                <tr>
                    <th colspan="2">Blog Otomasyonu Giriş Ekranı</th>
                </tr>
                <tr>
                    <td>Kullanıcı Adı</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>Parola</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Giriş Yap" style="width: 100%;"/></td>
                </tr>
                
                <%String errorCode=request.getParameter("error");
                    if(errorCode!=null){ 
                        if(errorCode.equals("1")){
                %>
                        <script>alert("Kullanıcı adı veya parola hatalı!");</script>
                <%} } %>
            </table>
        </form>
    </body>
    
    
    
</html>

