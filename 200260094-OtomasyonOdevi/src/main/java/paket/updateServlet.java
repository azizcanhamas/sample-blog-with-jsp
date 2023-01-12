package paket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "updateServlet", urlPatterns = {"/updateServlet"})
public class updateServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id");
        String header=request.getParameter("header");
        String content=request.getParameter("content");
        dbLayer d=new dbLayer();
        d.updateBlog(id, header, content);
        response.sendRedirect("view.jsp?id="+id);
    }
}
