/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DataAccessObject.userDao;
import Entities.Message;
import Entities.ServiceProvider;
import Helper.connectionProvider;
import Helper.helper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.*;
import java.io.*;

/**
 *
 * @author js594
 */
@MultipartConfig
public class editServiceProviderServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editServiceProviderServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String name = request.getParameter("user-name");
            String additional_number = request.getParameter("additional-number");
            String number = request.getParameter("password");
            Part part = request.getPart("image");
            String photo_name = part.getSubmittedFileName();
            
            String district = request.getParameter("district");
            String state = request.getParameter("state");
            String landmark = request.getParameter("landmark");
            String pincode = request.getParameter("pincode");

//            get user from session to make change in login user
            HttpSession session = request.getSession();
            ServiceProvider user = (ServiceProvider) session.getAttribute("currentUser");
            user.setName(name);
            user.setAdditionalnumber(additional_number);
            String oldProfileName = user.getProfile();
            user.setProfile(photo_name);
            user.setNumber(number);
            user.setDistrict(district);
            user.setState(state);
            user.setLandmark(landmark);
            user.setPincode(pincode);
            System.out.println(photo_name);
            System.out.println(additional_number);
            userDao dao = new userDao(connectionProvider.getConnection());
            boolean answer = dao.updateUser(user);
            if (answer) {
                System.out.println("updated successfully inside editServiceProviderServlet");
                Message m = new Message("profile Updated Successfully!, please try again", "success", "alert-success");
                session.setAttribute("msg", m);
                response.sendRedirect("serviceProvider_loginPage.jsp");

                String profilePhotoPath = request.getSession().getServletContext().getRealPath("/") + "profile_pic" + File.separator + user.getProfile();
                System.out.println(profilePhotoPath);
                String oldPhotoPath = request.getSession().getServletContext().getRealPath("/") + "profile_pic" + File.separator + oldProfileName;
//                file separator= /
//                get real path will take us to web pages folder of project
                if (!oldProfileName.equals("defaultUser.jpeg")) {
                    helper.deleteFile(oldPhotoPath);
                }

                if (helper.saveFile(part.getInputStream(), profilePhotoPath)) {
                    System.out.println("photo saved siccessfully");
                } else {
                    System.out.println("profile photo is not saved");
                    m = new Message("Something went Wrong!, please try again", "error", "alert-danger");
                    session.setAttribute("msg", m);
                }

            } else {
                Message m = new Message("Something went Wrong!, please try again", "error", "alert-danger");
                session.setAttribute("msg", m);
                response.sendRedirect("serviceProvider_loginPage.jsp");
                System.out.println("not updated editServiceProviderServlet");
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
