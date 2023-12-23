package project;

import java.sql.*;

public class ConnectionProvider {
	public static Connection getCon() {
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			  
			//step2 create  the connection object  
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");  
			return con;
		}
		catch (Exception e) {
			System.out.print(e);
			return null;
		}
	}

}
