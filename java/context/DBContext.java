package vn.hcmuaf.webebike.context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * create object which connect to database
 *
 */
public class DBContext {
	
	/**
	 * create object which connect to database
	 * @return Connection object
     */
	public Connection getConnection() throws NamingException, SQLException {
		
//		InitialContext initContext = new InitialContext();
//
//		Context env = (Context) initContext.lookup("java:comp/env");
//
//		DataSource ds = (DataSource) env.lookup("jdbc/xedap");

		Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mySQL://localhost:3306/xedap";
			String user = "root";
			String password = "";
			con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
		
		return con;
	}
	
}
