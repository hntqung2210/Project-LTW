package vn.hcmuaf.webebike.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/validateOtp")
public class ValidateOtp extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int value = Integer.parseInt(req.getParameter("otp"));
		HttpSession session = req.getSession();
		int otp = (int) session.getAttribute("otp");
		RequestDispatcher dispatcher = null;
		if (value == otp) {
			req.setAttribute("email", req.getParameter("email"));
			req.setAttribute("status", "success");
			resp.sendRedirect(req.getContextPath() + "/newPassword.jsp");

		} else {
			req.setAttribute("message", "wrong otp");
			dispatcher = req.getRequestDispatcher("EnterOtp.jsp");
			dispatcher.forward(req, resp);

		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
