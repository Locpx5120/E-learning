/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.CourseDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import model.User;
import util.EmailUtil;

/**
 *
 * @author Admin
 */
@WebServlet(name="ManageStaffController", urlPatterns={"/managestaff"})
public class ManageStaffController extends HttpServlet {
   private final ExecutorService executorService = Executors.newFixedThreadPool(5);
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ManageStaffController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManageStaffController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        CourseDAO courseDAO = new CourseDAO();
        EmailUtil emailUtil = new EmailUtil();
        //ban lecturer
        if(request.getParameter("modeBan")!=null){
            String username = request.getParameter("name");
            User u = userDAO.getUserByUsername(username);
            userDAO.banLecturer(username);
            courseDAO.banCourseByUserName(username);
            //Send email and redirect
            executorService.submit(() -> emailUtil.sendEmail(u.getEmail(), "Banned account", ""));
            String successMsg = "Ban Successfully";
            request.setAttribute("successMsg", successMsg);
        }
        
        //unban lecturer
        if(request.getParameter("modeUnBan")!=null){
            String username = request.getParameter("name");
            userDAO.unbanLecturer(username);
            User u = userDAO.getUserByUsername(username);
             //Send email and redirect
            executorService.submit(() -> emailUtil.sendEmail(u.getEmail(), "UnBanned account", ""));
            String successMsg = "UnBan Successfully";
            request.setAttribute("successMsg", successMsg);
        }
        ArrayList<User> listUser = userDAO.getAllUser();
        request.setAttribute("listUser", listUser);
        request.getRequestDispatcher("manage-staff.jsp").forward(request, response);
    } 

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    } // </editor-fold>

}
