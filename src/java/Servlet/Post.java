package Servlet;

import DataAccessObject.serviceTaker_userDao;
import Entities.Message;
import Entities.ServiceProvider;
import Entities.posts;
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
public class Post extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Post</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Post at " + request.getContextPath() + "</h1>");

            HttpSession session = request.getSession();
            serviceTaker user = (serviceTaker) session.getAttribute("currentUser");

//            info we fetch from post request
            String type = request.getParameter("type");
            String duration = request.getParameter("duration");
            Part part = request.getPart("image");
            String photo_name="default.jpg";
            try{
                
            photo_name=part.getSubmittedFileName();
            }
            catch(Exception e){
                
            }
            if (photo_name==null) {
                
            photo_name = "default.jpg";
            }
            String checkbox = "check";

//            information of service taker we send to service provider
            int st_id=user.getId();
            System.out.println("inside Post, id of st is "+st_id);
            String name = user.getName();
            String number = user.getNumber();
            String email = user.getEmail();
            String address = user.getAddress();
            String state = user.getState();
            String pinCode = user.getBlock_number();
            String city = user.getDistrict();
            String landmark = user.getLandmark();
//            to check weather info coming from service taker post or not
            System.out.println(type);
            System.out.println(name);
            System.out.println(duration);
            System.out.println(photo_name);
            System.out.println(checkbox);

//            assaigning all values to posts entities
            posts post = new posts(name, number, email, address, state, pinCode, city, landmark, type, duration, checkbox, photo_name,st_id);

            serviceTaker_userDao dao = new serviceTaker_userDao(connectionProvider.getConnection());
            boolean answer = dao.savePost(post);
            if (answer) {
                System.out.println("updated successfully inside editServiceTakerServlet");
                Message m = new Message("Job places successfully", "success", "alert-success");
                session.setAttribute("savePostMsg", m);
                response.sendRedirect("servicetaker_loginPage.jsp");

                String profilePhotoPath = request.getSession().getServletContext().getRealPath("/") + "postImages" + File.separator + post.getPhoto();
                System.out.println(profilePhotoPath);
                if (photo_name==null || photo_name=="default.jpg"){
                     System.out.println("photo saved successfully in post jugad se");
                }
                else if (helper.savePostFile(part.getInputStream(), profilePhotoPath)) {
                    System.out.println("photo saved successfully in post");
                } else {
                    System.out.println("profile photo is not saved");
                    m = new Message("Unable to post!, please try again after some time", "error", "alert-danger");
                    session.setAttribute("savePostMsg", m);
                }

            } else {
                Message m = new Message("Unable to post!, please try again after some time", "error", "alert-danger");
                session.setAttribute("savePostMsg", m);
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
