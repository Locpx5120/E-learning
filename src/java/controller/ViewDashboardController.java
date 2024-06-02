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
import java.util.LinkedHashMap;
import model.Course;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name="ViewDashboardController", urlPatterns={"/dashboard"})
public class ViewDashboardController extends HttpServlet {
   
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
            out.println("<title>Servlet ViewDashboardController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewDashboardController at " + request.getContextPath () + "</h1>");
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
        //calculate total income
        CourseDAO courseDAO = new CourseDAO();
        double totalIncome = courseDAO.getTotalIncome();
        request.setAttribute("totalIncome", totalIncome);
        
        //count number of lecturer
        UserDAO userDAO = new UserDAO();
        int totalLecturer = userDAO.getTotalLecturer();
        request.setAttribute("totalLecturer", totalLecturer);
        
        //count number of student
        int totalStudent = userDAO.getTotalStudent();
        request.setAttribute("totalStudent", totalStudent);
        
        //top course rating
        LinkedHashMap<Course, Double> listTopCourse = courseDAO.getListTopCourse(5);
        request.setAttribute("listTopCourse", listTopCourse);
        
        //top lecturer rating
        LinkedHashMap<User, Double> listTopLecturer = userDAO.getListTopUser();
        request.setAttribute("listTopLecturer", listTopLecturer);
        
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
