import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ControlServlet", value = "/ControlServlet")
public class ControlServlet extends HttpServlet {
    private final ArrayList<String> integers = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("color");
        if (action != null) {
            response.sendRedirect("test-url.jsp");
        } else {
            integers.add("abc");
            integers.add("abc");
            request.setAttribute("mess", "hello");
            request.setAttribute("color", "black");
            request.setAttribute("ints", integers);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
