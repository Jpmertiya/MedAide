/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DataAccessObject.notification_messageDao;
import Entities.Notification_message;
import Entities.ServiceProvider;
import Helper.connectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class notificationMessage_save extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet notificationMessage_save</title>");
            out.println("</head>");
            out.println("<body>");

            HttpSession session = request.getSession();
            ServiceProvider s = (ServiceProvider) session.getAttribute("currentUser");
            System.out.println("fetching service provider detail when we click on accept message");

            notification_messageDao msg = new notification_messageDao(connectionProvider.getConnection());
            Notification_message nfmsg = new Notification_message();
            int st_Id = Integer.parseInt(request.getParameter("st_id"));
            nfmsg.setName(s.getName());
            nfmsg.setEmail(s.getEmail());
            nfmsg.setNumber(s.getNumber());
            nfmsg.setAdditional_number(s.getAdditionalnumber());
            nfmsg.setProfile(s.getProfile());
            nfmsg.setGender(s.getGender());
            nfmsg.setSp_id(s.getId());
            nfmsg.setSt_id(st_Id);
            System.out.println("in notification messagesave st id is"+st_Id);
            if (msg.saveNotificationMessage(nfmsg)) {
                System.out.println("message send from notifivationMessage_save and save successfully");
             
                 response.sendRedirect("serviceProvider_loginPage.jsp");
            } else {
                System.out.println("there is error while saving message in database");
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
