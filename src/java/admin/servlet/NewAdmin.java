
package admin.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author roman
 */
@WebServlet(name = "NewAdmin", urlPatterns = {"/NewAdmin"})
public class NewAdmin extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewAdmin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewAdmin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String fName = request.getParameter("fname");
        String lName = request.getParameter("lname");
        String eMail = request.getParameter("email");
        String password = request.getParameter("pass");
        String confirmPassword = request.getParameter("passR");
        
        if (fName == null || fName.equals("")) {
            response.sendRedirect("admin/newAdmin.jsp?eMessage=" + "First Name can not be blank!");
        } else if (lName == null || lName.equals("")) {
            response.sendRedirect("admin/newAdmin.jsp?eMessage=" + "Last Name can not be blank!");
        } else if (eMail == null || eMail.equals("")) {
            response.sendRedirect("admin/newAdmin.jsp?eMessage=" + "Email can not be blank!");
        } else if (password == null || password.equals("")) {
            response.sendRedirect("admin/newAdmin.jsp?eMessage=" + "password can not be blank!");
        } else if (confirmPassword == null || confirmPassword.equals("")) {
            response.sendRedirect("admin/newAdmin.jsp?eMessage=" + "confirm password can not be blank!");
        } else if (!password.equals(confirmPassword)) {
            response.sendRedirect("admin/newAdmin.jsp?eMessage=password does not match");
        } else { 

            Properties prop = new Properties();
            try {
                OutputStream outputStream = new FileOutputStream("admin.properties");
                prop.setProperty("email", eMail);
                prop.setProperty("password", password);
                prop.setProperty("fName", fName);
                prop.setProperty("lName", lName);
                prop.store(outputStream, null);
                outputStream.close();
                response.sendRedirect("admin/newAdmin.jsp?sMessage=Successfully new admin created");
            } catch (IOException ioe) {
                response.sendRedirect("admin/newAdmin.jsp?eMessage=" + ioe.getMessage());
            }
        }
    }

  
}
