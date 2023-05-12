import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        HttpSession session = request.getSession();
        String language = (String) session.getAttribute("language");
        System.out.println("language preference: " + language);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = username.equals("admin") && password.equals("password") || username.equals("dawson") && password.equals("password");

        if (validAttempt) {
            session.setAttribute("username", username);
            session.removeAttribute("language");
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
