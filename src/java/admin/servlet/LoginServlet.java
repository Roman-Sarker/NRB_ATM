
package admin.servlet;

import com.mysql.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;

import DbConnection.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
/**
 *
 * @author roman
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, JSONException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
        //PrintWriter out = response.getWriter();
        DbConnect dbConnect = new DbConnect();
        int uIdFromDB = 0 ; 
        
        String pwdFromDB = "", uIdFromDB1 = "", username, password;
        username = request.getParameter("mail");
        password = request.getParameter("pass");
        String redirectURL = "admin/";
//        JSONObject json = null;
//        json.put("user", username);
//        json.put("pass", password);
        
        
        Connection con = null;
      /*  try{
            con = (Connection) dbConnect.getConnection();
            String sql = "SELECT user_id, pass FROM logdb.user_pass";
            //String sql = "SELECT id, pass FROM demo.user";
            
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery(sql); 
            
            while(rs.next())  
            {
                uIdFromDB = rs.getInt(1);
                pwdFromDB = rs.getString(2);
                //out.println(rs.getInt(1)+"  "+rs.getString(2));  
            }
            uIdFromDB1 = String.valueOf(uIdFromDB);
            if(username.equals(uIdFromDB1) && password.equals(pwdFromDB))
            {
                //response.getWriter().println("Matched.");
                HttpSession session = request.getSession();
                session.setAttribute("LOGIN", "TRUE");
                response.sendRedirect(redirectURL + "all_atm.jsp?");
            }
            else
                response.sendRedirect(redirectURL + "log.jsp?");
            
            
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        finally{
            dbConnect.disconnectDb(con);
        }
        */
            // Just redirect to report page. (Manual)
            HttpSession session = request.getSession();
            session.setAttribute("LOGIN", "TRUE");
            response.sendRedirect(redirectURL + "all_atm.jsp?");
            
            
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            
            out.println("<h1>DB Connection:" + con + "</h1>");
            out.println("<h1>User Name F:" + username + "</h1>");
            out.println("<h1>Password F:" + password + "</h1>");
            
            out.println("<h1>User Name Db:" + uIdFromDB + "</h1>");
            out.println("<h1>Pass Db:" + pwdFromDB + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (JSONException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (JSONException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

}
