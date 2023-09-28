/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DataAccessObject.userDao;
import Entities.Message;
import Entities.ServiceProvider;
import Helper.connectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author js594
 */
public class serviceProvider_loginServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet serviceProvider_loginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
             String userEmail = request.getParameter("email");
            String userPassword = request.getParameter("password");
          
            userDao userdao = new userDao(connectionProvider.getConnection());
            
            //object of user
            ServiceProvider users = userdao.getUserByEmailAndPassword(userEmail, userPassword);
            
            
             if (users == null) {
                Message msg=new Message("Invalid Details!, please try again", "error", "alert-danger");
                //alert danger and error is type of alert from bootstrap
                
                //to send this message to login page we use httpsession(Cookies)
                 HttpSession s=request.getSession();
                s.setAttribute("msg", msg);
                
                response.sendRedirect("login1.jsp");
                
            } else {
                //user session store in browser it will be last long as browser does not close
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", users);
                response.sendRedirect("serviceProvider_loginPage.jsp");

            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
