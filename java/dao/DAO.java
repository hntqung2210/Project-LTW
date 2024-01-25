package vn.hcmuaf.webebike.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;

import vn.hcmuaf.webebike.context.DBContext;

public class DAO {
	
	public void updateOTP(String email, int otp) throws NamingException {
		try (Connection conn = new DBContext().getConnection();
				PreparedStatement preparedStatement = conn
						.prepareStatement("UPDATE users SET otp = ? WHERE email = ?")) {
			preparedStatement.setInt(1, otp);
			preparedStatement.setString(2, email);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void newPass(String username, String newPassword) throws NamingException {
		try (Connection conn = new DBContext().getConnection();
				PreparedStatement updateStatement = conn
						.prepareStatement("UPDATE users SET password=? WHERE username=?")) {
			updateStatement.setString(1, newPassword);
			updateStatement.setString(2, username);
			int rows = updateStatement.executeUpdate();
			if (rows > 0) {
				System.out.println("Password updated successfully.");
			} else {
				System.out.println("User not found or no changes were made.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
