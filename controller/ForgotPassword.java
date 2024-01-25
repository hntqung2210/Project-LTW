package vn.hcmuaf.webebike.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.hcmuaf.webebike.dao.DAO;

@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        RequestDispatcher dispatcher = null;
        int otpvalue = 0;
        HttpSession mySession = req.getSession();

        if (email != null && !email.isEmpty()) {
            // tạo và gửi OTP
            Random rand = new Random();
            otpvalue = rand.nextInt(999999);
            sendOTPByEmail(email, otpvalue);

            // Lưu OTP và email vào session
            mySession.setAttribute("otp", otpvalue);
            mySession.setAttribute("forgotPasswordEmail", email);

            // Update OTP vào database
            DAO dao = new DAO();
            try {
				dao.updateOTP(email, otpvalue);
			} catch (NamingException e) {
				e.printStackTrace();
			}

            dispatcher = req.getRequestDispatcher("EnterOtp.jsp");
            req.setAttribute("message", "OTP is sent to your email id");

            // Lấy giá trị username từ session
            
            dispatcher.forward(req, resp);
        } else {
            req.setAttribute("error", "Invalid email address");
            dispatcher = req.getRequestDispatcher("forgot_password.jsp");
            dispatcher.forward(req, resp);
        }
    }

    private void sendOTPByEmail(String to, int otp) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                // Thay thế email và password của bạn
                return new PasswordAuthentication("namblue789@gmail.com", "ixhi pguv dhqz qdto");
            }
        });
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("leemanmie@gmail.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Mã OTP để đổi lại mật khẩu");
            message.setText("Mã OTP của bạn là: " + otp);
            Transport.send(message);
            System.out.println("OTP gửi thành công");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
