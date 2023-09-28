/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DataAccessObject.serviceTaker_userDao;
import Entities.serviceTaker;
import Helper.connectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author js594
 */
@MultipartConfig
public class service_taker_servlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String name = request.getParameter("user-name");
            String DOB = request.getParameter("DOB");
            String email = request.getParameter("email");
            String number = request.getParameter("number");
            String gender = request.getParameter("gender");
            String occupation = request.getParameter("occupation");
            String fname = request.getParameter("fname");
            String mname = request.getParameter("mname");
            String spause_name = request.getParameter("spouse_name");
            String ID_Type = request.getParameter("ID_type");
            String ID_Number = request.getParameter("ID_number");
            String ID_Authority = request.getParameter("ID_authority");
            String address_type = request.getParameter("address_type");
            String district = request.getParameter("district");
            String block_number = request.getParameter("block_number");
            String state = request.getParameter("state");
            String nationality = request.getParameter("nationality");
            String landmark = request.getParameter("landmark");
            
            //object of service provider and assaigning a value to it
            serviceTaker user = new serviceTaker(name, DOB, email, number, gender, occupation, fname, mname, spause_name, ID_Type, ID_Number, ID_Authority, address_type, district, block_number, state, nationality, landmark);
            System.out.println("service taker object created successfully");
            
//            creating a service taker user dao object.
            serviceTaker_userDao dao=new serviceTaker_userDao(connectionProvider.getConnection());
            if (dao.saveUser(user)) {
                out.println("Done.");
            } else {
                out.println("error in user dao");
            }
            
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
