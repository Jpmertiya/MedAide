/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DataAccessObject.userDao;
import Entities.ServiceProvider;
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
public class service_provider_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String name = request.getParameter("user-name");
            System.out.println("name is : "+name);
            String DOB=request.getParameter("DOB");
            String email = request.getParameter("email");
            String number = request.getParameter("number");
            String additionalnumber = request.getParameter("additionalnumber");
            System.out.println("additional number done"+additionalnumber);
            String gender = request.getParameter("gender");
            String fname = request.getParameter("fname");
            String mname = request.getParameter("mname");
            String ID_type = request.getParameter("id_type");
            String ID_number = request.getParameter("id_number");
            String ID_authority = request.getParameter("id_authority");
            System.out.println("id authority done"+ID_authority);
            String address = request.getParameter("address");
            String district = request.getParameter("district");
            String pincode = request.getParameter("pincode");
            String state = request.getParameter("state");
            String nationality = request.getParameter("nationality");
            System.out.println("nationality done"+nationality);
            String landmark = request.getParameter("landmark");
            String qualification_type = request.getParameter("qualification_type");
            String degree = request.getParameter("degree");
            String degree_status = request.getParameter("degree_status");
            System.out.println("degree status is: "+degree_status);
            String collateral_name = request.getParameter("collateral_name");
            System.out.println("collateral_name done"+collateral_name);
            String collateral_number = request.getParameter("collateral_number");
            String collateral_aadhar_number = request.getParameter("collateral_aadhar_number");
            System.out.println("all data gathered in service provider servlet ");
            //create a user object and set all data to taht boject
//            ServiceProvider user=new ServiceProvider(name,DOB,email,number,additionalnumber,gender,fname,mname,ID_type,ID_number,ID_authority,address,district,pincode,state,nationality,landmark,qualification_type,degree_status,collateral_name,collateral_number,collateral_aadhar_number);
            ServiceProvider user = new ServiceProvider(name, DOB, email, number, additionalnumber, gender, fname, mname, ID_type, ID_number, ID_authority, address, district, pincode, state, nationality, landmark, qualification_type, degree_status, collateral_name, collateral_number, collateral_aadhar_number);
            System.out.println("service provider object created successfully");
            //crating a user dao object
            userDao dao = new userDao(connectionProvider.getConnection());
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
