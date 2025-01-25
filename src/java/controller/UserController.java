/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import entity.Users;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Vector;
import model.DAOUsers;

/**
 *
 * @author Dungt
 */
@WebServlet(name = "UseController", urlPatterns = { "/UserController" })
public class UserController extends HttpServlet {

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
        DAOUsers dao = new DAOUsers();
        HttpSession session = request.getSession(true);
        String service = request.getParameter("service");
        if (service == null) {
            service = "listAll";
        }

        try (PrintWriter out = response.getWriter()) {
            switch (service) {
                case "listAll":
                    Vector<Users> users = dao.getAllUsers();
                    request.setAttribute("users", users);
                    request.getRequestDispatcher("listUsers.jsp").forward(request, response);
                    break;
                case "addUser":
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    String fullname = request.getParameter("fullname");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    int roleId = Integer.parseInt(request.getParameter("roleId"));
                    String status = request.getParameter("status");
                    Users newUser = new Users(0, username, password, fullname, phone, email, roleId, status);
                    dao.addUser(newUser);
                    response.sendRedirect("UserController?service=listAll");
                    break;
                case "updateUser":
                    int userId = Integer.parseInt(request.getParameter("userId"));
                    username = request.getParameter("username");
                    password = request.getParameter("password");
                    fullname = request.getParameter("fullname");
                    phone = request.getParameter("phone");
                    email = request.getParameter("email");
                    roleId = Integer.parseInt(request.getParameter("roleId"));
                    status = request.getParameter("status");
                    Users user = new Users(userId, username, password, fullname, phone, email, roleId, status);
                    dao.updateUser(user);
                    response.sendRedirect("UserController?service=listAll");
                    break;
                case "removeUser":
                    userId = Integer.parseInt(request.getParameter("userId"));
                    dao.removeUser(userId);
                    response.sendRedirect("UserController?service=listAll");
                    break;
                case "login":
                    username = request.getParameter("username");
                    password = request.getParameter("password");
                    user = dao.login(username, password);
                    if (user != null) {
                        session.setAttribute("user", user);
                        response.sendRedirect("welcome.jsp");
                    } else {
                        response.sendRedirect("login.jsp?error=Invalid username or password");
                    }
                    break;
                default:
                    out.println("Service not available");
                    break;
            }
        }
//        try (PrintWriter out = response.getWriter()) {
//       

    //     out.println("<!DOCTYPE html>");
    // out.println("<html>");
    // out.println("<head>");
    // out.println("<title>Se
    // out.println("</head>")
    // out.println("<body>");
    // out.println("<h1>Servle
    // out.println("</body>")
    // out.println("</html>");
    // 
    // 
       
     
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
    // 
     *
     * @param request servlet request
     * @param response servlet response
     * @throws Servle  Exception if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


}
}
