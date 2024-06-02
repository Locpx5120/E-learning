/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import util.EmailUtil;
import util.PasswordUtil;
import util.Validation;

/**
 *
 * @author Admin
 */
@WebServlet(name="CreateStaffAccountController", urlPatterns={"/createaccount"})
public class CreateStaffAccountController extends HttpServlet {
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
            out.println("<title>Servlet CreateUserAccountController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateUserAccountController at " + request.getContextPath () + "</h1>");
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
        //redirect to page creation
        request.getRequestDispatcher("createstaffaccount.jsp").forward(request, response);
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
        UserDAO userDAO = new UserDAO();
        EmailUtil emailUtil = new EmailUtil();
        PasswordUtil passUtil = new PasswordUtil();

        //Get session
        HttpSession session = request.getSession();

        //Set the session's expiration time (15 mins)
        session.setMaxInactiveInterval(15 * 60);

        try {
            //get information of lecturer
            String username = request.getParameter("username");
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String role = request.getParameter("role");

            //Generate Temp Password and store it in session
            String password = passUtil.generatePassword();
            session.setAttribute("password", password);

            String dob = request.getParameter("dob");
            int gender = Integer.parseInt(request.getParameter("gender"));
            String description = request.getParameter("description");
            
            //validate data input for create lecturer account
            Validation validate = new Validation();
            String errorMsg = validate.validateCreateLecturerAccountInput(username, fullname, email);

            //create lecturer account
            if (errorMsg.equals("")) {
                if(userDAO.createLecturerAccount(username, fullname, email, password, dob, gender, description, role)){
                    //send password to lecturer's email
                    String emailType = "lecturerpass";

                    //Send email and redirect
                    executorService.submit(() -> emailUtil.sendEmail(email, emailType, password));
                    String successMsg = "Create Lecturer Account Successfully";
                    request.setAttribute("successMsg", successMsg);
                    request.getRequestDispatcher("managestaff").forward(request, response);
                }
            } else{
                request.setAttribute("username", username);
                request.setAttribute("fullname", fullname);
                request.setAttribute("email", email);
                request.setAttribute("errorMsg", errorMsg);
                request.getRequestDispatcher("createstaffaccount.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            System.out.println("e: " + e.toString());
        }
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
