package paket;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        PrintWriter out=response.getWriter();
//        out.println(request.getParameter("username"));
//        out.println(request.getParameter("password"));

        String username=request.getParameter("username");
        String password=request.getParameter("password");
        dbLayer d=new dbLayer();
        
        if(d.isUser(username, password))
            response.sendRedirect("blog.jsp");
        else response.sendRedirect("login.jsp?error=1");
    }

}
