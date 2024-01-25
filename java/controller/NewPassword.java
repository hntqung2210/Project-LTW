package vn.hcmuaf.webebike.controller;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.hcmuaf.webebike.dao.DAO;

@WebServlet("/NewPassword")
public class NewPassword extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
    	String user = req.getParameter("username");
        HttpSession session = req.getSession();
        session.setAttribute("username", user);
        String username = (String) session.getAttribute("username");
        if (username != null && !username.isEmpty()) {
            String newPassword = req.getParameter("newPassword");
            String confPassword = req.getParameter("confPassword");
            if (newPassword != null && !newPassword.isEmpty()) { // Check if newPassword is not null and not empty
                if (newPassword.equals(confPassword)) {
                    DAO dao = new DAO();
                    try {
						dao.newPass(username, newPassword);
					} catch (NamingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
                    resp.getWriter().write("Password updated successfully for user: " + username);
                    resp.sendRedirect("login.jsp");
                } else {
                    resp.getWriter().write("New password and confirm password do not match.");
                }
            } else {
                resp.getWriter().write("Invalid new password provided.");
            }
        } else {
            resp.getWriter().write("Username not found in session.");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Call doPost in case the user sends a GET request
        doPost(req, resp);
    }
}

