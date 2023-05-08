import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/count")
public class CounterServlet extends HttpServlet {

    public static int count = 0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("reset") != null){
            count = 0;
        }
        resp.setContentType("text/html");
        resp.getWriter().println("<p>" + ++count + "</p>");
    }
}
