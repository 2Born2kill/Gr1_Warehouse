/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import entity.Users;
import model.DAOUsers;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Dungt
 */
@WebServlet(name = "LoginController", urlPatterns = { "/LoginController" })
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(true);
        DAOUsers dao = new DAOUsers();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Users user = dao.login(username, password);
        if (user != null) {
            session.setAttribute("user", user);
            int roleId = user.getRole_id();
            String roleName = dao.checkRole(user.getUser_id());
            switch (roleId) {
                case 1:
                    response.sendRedirect("adminPage.jsp");
                    break;
                case 2:
                    response.sendRedirect("managerPage.jsp");
                    break;
                case 3:
                    response.sendRedirect("staffPage.jsp");
                    break;
                case 4:
                    response.sendRedirect("shipperPage.jsp");
                    break;
                case 5:
                    response.sendRedirect("customerPage.jsp");
                    break;
                default:
                    response.sendRedirect("unknownRole.jsp");
                    break;
            }
        } else {
            response.sendRedirect("login.jsp?error=Invalid username or password");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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
