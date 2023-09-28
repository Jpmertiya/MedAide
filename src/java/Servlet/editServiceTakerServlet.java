/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DataAccessObject.serviceTaker_userDao;
import Entities.Message;
import Entities.ServiceProvider;
import Entities.serviceTaker;
import Helper.connectionProvider;
import Helper.helper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author js594
 */
@MultipartConfig
public class editServiceTakerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editServiceTakerServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String name = request.getParameter("user-name");
            String Occupation = request.getParameter("additional-number");
            String number = request.getParameter("password");
            Part part = request.getPart("image");
            String photo_name = part.getSubmittedFileName();
            String district = request.getParameter("district");
            String state = request.getParameter("state");
            String landmark = request.getParameter("landmark");
            String Block_number = request.getParameter("Block_number");

            HttpSession session = request.getSession();
            serviceTaker user = (serviceTaker) session.getAttribute("currentUser");
            user.setName(name);
            user.setOccupation(Occupation);
            String oldProfileName = user.getProfile();
            user.setProfile(photo_name);
            user.setNumber(number);
            user.setDistrict(district);
            user.setState(state);
            user.setLandmark(landmark);
            user.setBlock_number(Block_number);
            System.out.println(photo_name);
            System.out.println(Occupation);

            serviceTaker_userDao dao = new serviceTaker_userDao(connectionProvider.getConnection());
            boolean answer = dao.updateUser(user);

            if (answer) {
                System.out.println("updated successfully inside editServiceTakerServlet");
                Message m = new Message("profile Updated Successfully!, please try again", "success", "alert-success");
                session.setAttribute("msg", m);
                response.sendRedirect("servicetaker_loginPage.jsp");

                String profilePhotoPath = request.getSession().getServletContext().getRealPath("/") + "profile_pic" + File.separator + user.getProfile();
                System.out.println(profilePhotoPath);
                String oldPhotoPath = request.getSession().getServletContext().getRealPath("/") + "profile_pic" + File.separator + oldProfileName;
//                file separator= /
//                get real path will take us to web pages folder of project
                if (!oldProfileName.equals("defaultUser.jpeg")) {
                    helper.deleteFile(oldPhotoPath);
                }

                if (helper.saveFile(part.getInputStream(), profilePhotoPath)) {
                    System.out.println("photo saved successfully");
                } else {
                    System.out.println("profile photo is not saved");
                    m = new Message("Something went Wrong!, please try again", "error", "alert-danger");
                    session.setAttribute("msg", m);
                }

            } else {
                Message m = new Message("Something went Wrong!, please try again", "error", "alert-danger");
                session.setAttribute("msg", m);
                response.sendRedirect("servicetaker_loginPage.jsp");
                System.out.println("not updated editServiceTakerServlet");
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
