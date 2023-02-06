package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aakash Dubey
 */
public class login extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        boolean isUserFound = Util.searchUserInDb(username, password,"users");
        if(isUserFound){
            HttpSession session=request.getSession(true);
            session.setAttribute("username", username);
            session.setAttribute("cuser","0");
            session.setAttribute("error","");
            response.sendRedirect("index.jsp");
                
        }else{
                
            boolean isCUserFound = Util.searchUserInDb(username, password,"companyuser");
            if(isCUserFound){   
            HttpSession session=request.getSession(true);
            session.setAttribute("username", username);
            session.setAttribute("cuser","1");
            session.setAttribute("error","");
            response.sendRedirect("index.jsp");
             }
             else{
                  response.sendRedirect("login.jsp");
             }
        }   
    }
}
