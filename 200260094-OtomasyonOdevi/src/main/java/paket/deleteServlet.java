package paket;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "deleteServlet", urlPatterns = {"/deleteServlet"})
public class deleteServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            dbLayer d=new dbLayer();
            d.deleteBlog(request.getParameter("id"));
            response.sendRedirect("blog.jsp");
    }

}
