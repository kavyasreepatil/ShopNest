package buyNest.customer;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/log")
public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String uname = req.getParameter("uname");
        String pass = req.getParameter("pass");
      
        boolean val = Validator.isValid(uname, pass);
        System.out.println(val);
        if (val && uname.equals("admin")) {
            resp.sendRedirect("admin.jsp");
        } else if (val) {
        	HttpSession session = req.getSession();
        	session.setAttribute("username", uname);
        	System.out.println("Username set in session: " + uname);
        	resp.sendRedirect("home.jsp");
        } else {
        	System.out.print("invalid details");
            resp.sendRedirect("login.jsp");
        }
    }
}
